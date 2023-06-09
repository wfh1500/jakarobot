// Generated by gencpp from file robot_msgs/ServoL.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_SERVOL_H
#define ROBOT_MSGS_MESSAGE_SERVOL_H


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
struct ServoL_
{
  typedef ServoL_<ContainerAllocator> Type;

  ServoL_()
    : pose()  {
      pose.assign(0.0);
  }
  ServoL_(const ContainerAllocator& _alloc)
    : pose()  {
  (void)_alloc;
      pose.assign(0.0);
  }



   typedef boost::array<float, 6>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::robot_msgs::ServoL_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_msgs::ServoL_<ContainerAllocator> const> ConstPtr;

}; // struct ServoL_

typedef ::robot_msgs::ServoL_<std::allocator<void> > ServoL;

typedef boost::shared_ptr< ::robot_msgs::ServoL > ServoLPtr;
typedef boost::shared_ptr< ::robot_msgs::ServoL const> ServoLConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_msgs::ServoL_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_msgs::ServoL_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_msgs::ServoL_<ContainerAllocator1> & lhs, const ::robot_msgs::ServoL_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_msgs::ServoL_<ContainerAllocator1> & lhs, const ::robot_msgs::ServoL_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::ServoL_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::ServoL_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::ServoL_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::ServoL_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::ServoL_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::ServoL_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_msgs::ServoL_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e96c568678b00bfe7f6fdf0c7b828a4";
  }

  static const char* value(const ::robot_msgs::ServoL_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e96c568678b00bfULL;
  static const uint64_t static_value2 = 0xe7f6fdf0c7b828a4ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_msgs::ServoL_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_msgs/ServoL";
  }

  static const char* value(const ::robot_msgs::ServoL_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_msgs::ServoL_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[6] pose\n"
;
  }

  static const char* value(const ::robot_msgs::ServoL_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_msgs::ServoL_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServoL_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_msgs::ServoL_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_msgs::ServoL_<ContainerAllocator>& v)
  {
    s << indent << "pose[]" << std::endl;
    for (size_t i = 0; i < v.pose.size(); ++i)
    {
      s << indent << "  pose[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.pose[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_SERVOL_H
