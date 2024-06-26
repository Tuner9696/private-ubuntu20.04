// Generated by gencpp from file seed_r7_ros_controller/HandControl.msg
// DO NOT EDIT!


#ifndef SEED_R7_ROS_CONTROLLER_MESSAGE_HANDCONTROL_H
#define SEED_R7_ROS_CONTROLLER_MESSAGE_HANDCONTROL_H

#include <ros/service_traits.h>


#include <seed_r7_ros_controller/HandControlRequest.h>
#include <seed_r7_ros_controller/HandControlResponse.h>


namespace seed_r7_ros_controller
{

struct HandControl
{

typedef HandControlRequest Request;
typedef HandControlResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct HandControl
} // namespace seed_r7_ros_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::seed_r7_ros_controller::HandControl > {
  static const char* value()
  {
    return "beb2871e68a142be80f3b23a0a3a73da";
  }

  static const char* value(const ::seed_r7_ros_controller::HandControl&) { return value(); }
};

template<>
struct DataType< ::seed_r7_ros_controller::HandControl > {
  static const char* value()
  {
    return "seed_r7_ros_controller/HandControl";
  }

  static const char* value(const ::seed_r7_ros_controller::HandControl&) { return value(); }
};


// service_traits::MD5Sum< ::seed_r7_ros_controller::HandControlRequest> should match
// service_traits::MD5Sum< ::seed_r7_ros_controller::HandControl >
template<>
struct MD5Sum< ::seed_r7_ros_controller::HandControlRequest>
{
  static const char* value()
  {
    return MD5Sum< ::seed_r7_ros_controller::HandControl >::value();
  }
  static const char* value(const ::seed_r7_ros_controller::HandControlRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::seed_r7_ros_controller::HandControlRequest> should match
// service_traits::DataType< ::seed_r7_ros_controller::HandControl >
template<>
struct DataType< ::seed_r7_ros_controller::HandControlRequest>
{
  static const char* value()
  {
    return DataType< ::seed_r7_ros_controller::HandControl >::value();
  }
  static const char* value(const ::seed_r7_ros_controller::HandControlRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::seed_r7_ros_controller::HandControlResponse> should match
// service_traits::MD5Sum< ::seed_r7_ros_controller::HandControl >
template<>
struct MD5Sum< ::seed_r7_ros_controller::HandControlResponse>
{
  static const char* value()
  {
    return MD5Sum< ::seed_r7_ros_controller::HandControl >::value();
  }
  static const char* value(const ::seed_r7_ros_controller::HandControlResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::seed_r7_ros_controller::HandControlResponse> should match
// service_traits::DataType< ::seed_r7_ros_controller::HandControl >
template<>
struct DataType< ::seed_r7_ros_controller::HandControlResponse>
{
  static const char* value()
  {
    return DataType< ::seed_r7_ros_controller::HandControl >::value();
  }
  static const char* value(const ::seed_r7_ros_controller::HandControlResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SEED_R7_ROS_CONTROLLER_MESSAGE_HANDCONTROL_H
