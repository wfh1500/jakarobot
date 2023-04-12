// Generated by gencpp from file robot_msgs/SetLoad.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_SETLOAD_H
#define ROBOT_MSGS_MESSAGE_SETLOAD_H

#include <ros/service_traits.h>


#include <robot_msgs/SetLoadRequest.h>
#include <robot_msgs/SetLoadResponse.h>


namespace robot_msgs
{

struct SetLoad
{

typedef SetLoadRequest Request;
typedef SetLoadResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetLoad
} // namespace robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::robot_msgs::SetLoad > {
  static const char* value()
  {
    return "dbe0292cc6f9be694a93bf981dcc8471";
  }

  static const char* value(const ::robot_msgs::SetLoad&) { return value(); }
};

template<>
struct DataType< ::robot_msgs::SetLoad > {
  static const char* value()
  {
    return "robot_msgs/SetLoad";
  }

  static const char* value(const ::robot_msgs::SetLoad&) { return value(); }
};


// service_traits::MD5Sum< ::robot_msgs::SetLoadRequest> should match
// service_traits::MD5Sum< ::robot_msgs::SetLoad >
template<>
struct MD5Sum< ::robot_msgs::SetLoadRequest>
{
  static const char* value()
  {
    return MD5Sum< ::robot_msgs::SetLoad >::value();
  }
  static const char* value(const ::robot_msgs::SetLoadRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_msgs::SetLoadRequest> should match
// service_traits::DataType< ::robot_msgs::SetLoad >
template<>
struct DataType< ::robot_msgs::SetLoadRequest>
{
  static const char* value()
  {
    return DataType< ::robot_msgs::SetLoad >::value();
  }
  static const char* value(const ::robot_msgs::SetLoadRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::robot_msgs::SetLoadResponse> should match
// service_traits::MD5Sum< ::robot_msgs::SetLoad >
template<>
struct MD5Sum< ::robot_msgs::SetLoadResponse>
{
  static const char* value()
  {
    return MD5Sum< ::robot_msgs::SetLoad >::value();
  }
  static const char* value(const ::robot_msgs::SetLoadResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::robot_msgs::SetLoadResponse> should match
// service_traits::DataType< ::robot_msgs::SetLoad >
template<>
struct DataType< ::robot_msgs::SetLoadResponse>
{
  static const char* value()
  {
    return DataType< ::robot_msgs::SetLoad >::value();
  }
  static const char* value(const ::robot_msgs::SetLoadResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_SETLOAD_H
