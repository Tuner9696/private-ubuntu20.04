execute_process(COMMAND "/home/tuner/work/ros1/thk/build/seed_r7_ros_pkg/seed_r7_navigation/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/tuner/work/ros1/thk/build/seed_r7_ros_pkg/seed_r7_navigation/catkin_generated/python_distutils_install.sh) returned error code ")
endif()