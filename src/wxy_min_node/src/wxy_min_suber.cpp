#include <ros/ros.h>
#include <std_msgs/Float64.h>
void wxy_callback(const std_msgs::Float64 &wxy_msg_holder)
{
	ROS_INFO("received value is %f",wxy_msg_holder.data);
	ROS_INFO("aaaa");
	}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"wxy_min_suber_cpp");
	ros::NodeHandle nh;
	ros::Subscriber wxy_suber_obj = nh.subscribe("wxy_topic1",1,wxy_callback);
	ros::spin();
	return 0;
	}
