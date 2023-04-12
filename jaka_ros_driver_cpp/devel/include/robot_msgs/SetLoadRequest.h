// Generated by gencpp from file robot_msgs/SetLoadRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_SETLOADREQUEST_H
#define ROBOT_MSGS_MESSAGE_SETLOADREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_msgs
{
template <class ContainerAllocator>
struct SetLoadRequest_
{
  typedef SetLoadRequest_<ContainerAllocator> Type;

  SetLoadRequest_()
    : tool_num(0)
    , mass(0.0)
    , xc(0.0)
    , yc(0.0)
    , zc(0.0)  {
    }
  SetLoadRequest_(const ContainerAllocator& _alloc)
    : tool_num(0)
    , mass(0.0)
    , xc(0.0)
    , yc(0.0)
    , zc(0.0)  {
  (void)_alloc;
    }



   typedef int16_t _tool_num_type;
  _tool_num_type tool_num;

   typedef float _mass_type;
  _mass_type mass;

   typedef float _xc_type;
  _xc_type xc;

   typedef float _yc_type;
  _yc_type yc;

   typedef float _zc_type;
  _zc_type zc;





  typedef boost::shared_ptr< ::robot_msgs::SetLoadRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_msgs::SetLoadRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetLoadRequest_

typedef ::robot_msgs::SetLoadRequest_<std::allocator<void> > SetLoadRequest;

typedef boost::shared_ptr< ::robot_msgs::SetLoadRequest > SetLoadRequestPtr;
typedef boost::shared_ptr< ::robot_msgs::SetLoadRequest const> SetLoadRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_msgs::SetLoadRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_msgs::SetLoadRequest_<ContainerAllocator1> & lhs, const ::robot_msgs::SetLoadRequest_<ContainerAllocator2> & rhs)
{
  return lhs.tool_num == rhs.tool_num &&
    lhs.mass == rhs.mass &&
    lhs.xc == rhs.xc &&
    lhs.yc == rhs.yc &&
    lhs.zc == rhs.zc;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_msgs::SetLoadRequest_<ContainerAllocator1> & lhs, const ::robot_msgs::SetLoadRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::SetLoadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::SetLoadRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::SetLoadRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f5b6ad3eafd36e92ac9631d1adde07a4";
  }

  static const char* value(const ::robot_msgs::SetLoadRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf5b6ad3eafd36e92ULL;
  static const uint64_t static_value2 = 0xac9631d1adde07a4ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_msgs/SetLoadRequest";
  }

  static const char* value(const ::robot_msgs::SetLoadRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 tool_num\n"
"\n"
"# to set robot load parameters, based on initial Tool Frame located at flange center.\n"
"# Load mass (kg)\n"
"float32 mass\n"
"\n"
"# Load Center of Mass (mm), with respect to intial Tool Frame\n"
"float32 xc\n"
"float32 yc\n"
"float32 zc\n"
"\n"
;
  }

  static const char* value(const ::robot_msgs::SetLoadRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tool_num);
      stream.next(m.mass);
      stream.next(m.xc);
      stream.next(m.yc);
      stream.next(m.zc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetLoadRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_msgs::SetLoadRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_msgs::SetLoadRequest_<ContainerAllocator>& v)
  {
    s << indent << "tool_num: ";
    Printer<int16_t>::stream(s, indent + "  ", v.tool_num);
    s << indent << "mass: ";
    Printer<float>::stream(s, indent + "  ", v.mass);
    s << indent << "xc: ";
    Printer<float>::stream(s, indent + "  ", v.xc);
    s << indent << "yc: ";
    Printer<float>::stream(s, indent + "  ", v.yc);
    s << indent << "zc: ";
    Printer<float>::stream(s, indent + "  ", v.zc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_SETLOADREQUEST_H
