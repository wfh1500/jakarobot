// Generated by gencpp from file robot_msgs/SetTcp.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_SETTCP_H
#define ROBOT_MSGS_MESSAGE_SETTCP_H

#include <ros/service_traits.h>


#include <robot_msgs/SetTcpRequest.h>
#include <robot_msgs/SetTcpResponse.h>


namespace robot_msgs
{

struct SetTcp
{

typedef SetTcpRequest Request;
typedef SetTcpResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetTcp
} // namespace robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_msgs::SetTcp > {
  static const char* value()
  {
    return "3d15cf469e59f026a4e4b350932a8496";
  }

  static const char* value(const ::robot_msgs::SetTcp&) { return value(); }
};

template<>
struct DataType< ::robot_msgs::SetTcp > {
  static const char* value()
  {
    return "robot_msgs/SetTcp";
  }

  static const char* value(const ::robot_msgs::SetTcp&) { return value(); }
};


// service_traits::MD5Sum< ::robot_msgs::SetTcpRequest> should match
// service_traits::MD5Sum< ::robot_msgs::SetTcp >
template<>
struct MD5Sum< ::robot_msgs::SetTcpRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_msgs::SetTcp >::value();
  }
  static const char* value(const ::robot_msgs::SetTcpRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_msgs::SetTcpRequest> should match
// service_traits::DataType< ::robot_msgs::SetTcp >
template<>
struct DataType< ::robot_msgs::SetTcpRequest>
{
  static const char* value()
  {
    return DataType< ::robot_msgs::SetTcp >::value();
  }
  static const char* value(const ::robot_msgs::SetTcpRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_msgs::SetTcpResponse> should match
// service_traits::MD5Sum< ::robot_msgs::SetTcp >
template<>
struct MD5Sum< ::robot_msgs::SetTcpResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_msgs::SetTcp >::value();
  }
  static const char* value(const ::robot_msgs::SetTcpResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_msgs::SetTcpResponse> should match
// service_traits::DataType< ::robot_msgs::SetTcp >
template<>
struct DataType< ::robot_msgs::SetTcpResponse>
{
  static const char* value()
  {
    return DataType< ::robot_msgs::SetTcp >::value();
  }
  static const char* value(const ::robot_msgs::SetTcpResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_SETTCP_H
