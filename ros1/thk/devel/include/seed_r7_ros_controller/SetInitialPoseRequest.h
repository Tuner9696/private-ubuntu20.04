// Generated by gencpp from file seed_r7_ros_controller/SetInitialPoseRequest.msg
// DO NOT EDIT!


#ifndef SEED_R7_ROS_CONTROLLER_MESSAGE_SETINITIALPOSEREQUEST_H
#define SEED_R7_ROS_CONTROLLER_MESSAGE_SETINITIALPOSEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace seed_r7_ros_controller
{
template <class ContainerAllocator>
struct SetInitialPoseRequest_
{
  typedef SetInitialPoseRequest_<ContainerAllocator> Type;

  SetInitialPoseRequest_()
    : x(0.0)
    , y(0.0)
    , theta(0.0)  {
    }
  SetInitialPoseRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , theta(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _theta_type;
  _theta_type theta;





  typedef boost::shared_ptr< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetInitialPoseRequest_

typedef ::seed_r7_ros_controller::SetInitialPoseRequest_<std::allocator<void> > SetInitialPoseRequest;

typedef boost::shared_ptr< ::seed_r7_ros_controller::SetInitialPoseRequest > SetInitialPoseRequestPtr;
typedef boost::shared_ptr< ::seed_r7_ros_controller::SetInitialPoseRequest const> SetInitialPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator1> & lhs, const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.theta == rhs.theta;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator1> & lhs, const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace seed_r7_ros_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "938fa65709584ad8e77d238529be13b8";
  }

  static const char* value(const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x938fa65709584ad8ULL;
  static const uint64_t static_value2 = 0xe77d238529be13b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "seed_r7_ros_controller/SetInitialPoseRequest";
  }

  static const char* value(const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetInitialPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::seed_r7_ros_controller::SetInitialPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "theta: ";
    Printer<double>::stream(s, indent + "  ", v.theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SEED_R7_ROS_CONTROLLER_MESSAGE_SETINITIALPOSEREQUEST_H
