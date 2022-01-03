// Copyright 2021 Proyectos y Sistemas de Mantenimiento SL (eProsima).
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/*!
 * @file LoanableHelloWorldPublisher.cpp
 * This file contains the implementation of the publisher functions.
 *
 * This file was generated by the tool fastcdrgen.
 */


#include "LoanableHelloWorldPublisher.h"
#include "LoanableHelloWorldPubSubTypes.h"

#include <fastdds/dds/domain/DomainParticipantFactory.hpp>
#include <fastdds/dds/publisher/Publisher.hpp>
#include <fastdds/dds/publisher/qos/PublisherQos.hpp>
#include <fastdds/dds/publisher/DataWriter.hpp>
#include <fastdds/dds/publisher/qos/DataWriterQos.hpp>

#include <thread>
#include <chrono>
#include <librealsense2/rs.hpp>

using namespace eprosima::fastdds::dds;

LoanableHelloWorldPublisher::LoanableHelloWorldPublisher()
    : participant_( nullptr )
    , publisher_( nullptr )
    , topic_( nullptr )
    , writer_( nullptr )
    , type_( new LoanableHelloWorldPubSubType() )
{
}

LoanableHelloWorldPublisher::~LoanableHelloWorldPublisher()
{
    if( writer_ != nullptr )
    {
        publisher_->delete_datawriter( writer_ );
    }
    if( publisher_ != nullptr )
    {
        participant_->delete_publisher( publisher_ );
    }
    if( topic_ != nullptr )
    {
        participant_->delete_topic( topic_ );
    }
    DomainParticipantFactory::get_instance()->delete_participant( participant_ );
}

bool LoanableHelloWorldPublisher::init()
{
    /* Initialize data_ here */

    // CREATE THE PARTICIPANT
    DomainParticipantQos pqos;
    pqos.name( "Participant_pub" );

    // Indicates for how much time should a remote DomainParticipant consider the local
    // DomainParticipant to be alive. If the liveliness of the local DomainParticipant has not being
    // asserted within this time, the remote DomainParticipant considers the local DomainParticipant
    // dead and destroys all the information regarding the local DomainParticipant and all its
    // endpoints.
    pqos.wire_protocol().builtin.discovery_config.leaseDuration = { 10, 0 };  //[sec]

    participant_ = DomainParticipantFactory::get_instance()->create_participant( 0, pqos );
    if( participant_ == nullptr )
    {
        return false;
    }

    // REGISTER THE TYPE
    type_.register_type( participant_ );

    // CREATE THE PUBLISHER
    publisher_ = participant_->create_publisher( PUBLISHER_QOS_DEFAULT, nullptr );
    if( publisher_ == nullptr )
    {
        return false;
    }

    // CREATE THE TOPIC
    topic_ = participant_->create_topic( "RS_FRAME", type_.get_type_name(), TOPIC_QOS_DEFAULT );
    if( topic_ == nullptr )
    {
        return false;
    }

    // CREATE THE WRITER
    DataWriterQos wqos = publisher_->get_default_datawriter_qos();

    // The Subscriber receives samples from the moment it comes online, not before
    wqos.durability().kind = VOLATILE_DURABILITY_QOS;

    // TODO - Explain why
    //wqos.reliability().kind = RELIABLE_RELIABILITY_QOS;
    wqos.reliability().kind = BEST_EFFORT_RELIABILITY_QOS;
    
    wqos.reliability().max_blocking_time = { TIME_T_INFINITE_SECONDS, TIME_T_INFINITE_NANOSECONDS };

    // Activate the use of DataSharing. Entity creation will fail if requirements for DataSharing
    // are not met The input shared memory folder can be changed into a specific folder but must be
    // aligned with the readers
    wqos.data_sharing().on( "" );

    // The history keeps only the last 'depth' values
    // The 'depth' parameter of the History defines how many samples are stored before starting to
    // overwrite them with newer ones.
    wqos.history().kind = KEEP_LAST_HISTORY_QOS;
    wqos.history().depth = 1;

    // Preallocate samples pool for receiving balanced real-time behaviour
    wqos.endpoint().history_memory_policy = eprosima::fastrtps::rtps::PREALLOCATED_MEMORY_MODE;

    // Synchronous publication mode
    wqos.publish_mode().kind = SYNCHRONOUS_PUBLISH_MODE;

    // Strict samples pre-alocated pool to minimum size needed
     wqos.resource_limits().max_samples = 1;
     wqos.resource_limits().max_instances = 1;
     wqos.resource_limits().allocated_samples = 1;
     wqos.resource_limits().extra_samples = 0;

    writer_ = publisher_->create_datawriter( topic_, wqos, &listener_ );
    if( writer_ == nullptr )
    {
        return false;
    }

    std::cout << "LoanableHelloWorld DataWriter created." << std::endl;
    return true;
}

void LoanableHelloWorldPublisher::PubListener::on_publication_matched(
    eprosima::fastdds::dds::DataWriter *,
    const eprosima::fastdds::dds::PublicationMatchedStatus & info )
{
    if( info.current_count_change == 1 )
    {
        matched = info.current_count;
        std::cout << "DataWriter matched.total = " << matched << std::endl;
    }
    else if( info.current_count_change == -1 )
    {
        matched = info.current_count;
        std::cout << "DataWriter unmatched. total = " << matched << std::endl;
    }
    else
    {
        std::cout << info.current_count_change
                  << " is not a valid value for PublicationMatchedStatus current count change"
                  << std::endl;
    }
}

void LoanableHelloWorldPublisher::PubListener::on_offered_incompatible_qos(
    DataWriter * writer, const OfferedIncompatibleQosStatus & status )
{
    std::cout << "Publisher incompatible QOS detected" << std::endl;
}

void LoanableHelloWorldPublisher::run( bool simulate)
{
    std::cout << "LoanableHelloWorld DataWriter waiting for DataReaders." << std::endl;
    while( listener_.matched == 0 )
    {
        std::this_thread::sleep_for( std::chrono::milliseconds( 250 ) );  // Sleep 250 ms
    }

    int msgsent = 0;
    auto sleep_time = 200; //[ms]

    rs2::config cfg;
    cfg.enable_stream( RS2_STREAM_COLOR, 1280, 720 );
    rs2::pipeline p;

    if( ! simulate )
        p.start( cfg );

    do
    {
        rs2::frameset f;
        if( ! simulate )
            f = p.wait_for_frames();
        static int ii = 0;

        void * sample = nullptr;
        auto ret = writer_->loan_sample( sample );

        if( ReturnCode_t::RETCODE_OK != ret )
        {
            std::cout << "ERROR: writer_->loan_sample failed with code: " << std::to_string( ret() )
                      << std::endl;

            if( simulate )
                std::this_thread::sleep_for( std::chrono::milliseconds( sleep_time ) );
            continue;
        }

        std::cout << "Preparing sample at address " << sample << std::endl;
        LoanableHelloWorld * data = static_cast< LoanableHelloWorld * >( sample );
        data->index() = msgsent++;
        if( ! simulate )
        {
            auto color_frame = f.get_color_frame();
            auto h = color_frame.get_height();
            auto w = color_frame.get_width();
            std::cout << "dim is: " << w << " x " << h << " size is: " << color_frame.get_data_size() << " [bytes]" << std::endl;
            memcpy(&data->data(), color_frame.get_data(), color_frame.get_data_size());
        }

        // Fill first 1000 bytes with an alfabet letter for detecting data overruns on reader side.
        auto fill_num = 65 + msgsent % 26;
        memset( data->data().data(), fill_num, 1000 );
        using namespace std::chrono;
        auto time_now_us
            = duration_cast< microseconds >( system_clock::now().time_since_epoch() ).count();

        data->publish_time( time_now_us );
        bool ok = writer_->write( sample );
        std::cout << "Message with index: " << data->index()
                  << " With data of: " << fill_num << ( ok ? " SENT" : " NOT SENT" ) << std::endl;

        // Syncronize write rate on data simulation
        if( simulate )
            std::this_thread::sleep_for( std::chrono::milliseconds( sleep_time ) );
    }
    while( listener_.matched != 0 );
}
