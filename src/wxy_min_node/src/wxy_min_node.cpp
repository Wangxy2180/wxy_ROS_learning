#include<ros/ros.h>
#include<std_msgs/Float64.h>
#include <iostream>

int main(int argc, char **argv)
{
	ros::init(argc,argv, "wxy_min_puber_cpp");
	ros::NodeHandle nh;
	ros::Publisher wxy_puber_obj = nh.advertise<std_msgs::Float64>("wxy_topic1",1);
	ros::Rate naptime(1.0);
	std_msgs::Float64 input_float;
	input_float.data = 0.01;
	while(ros::ok())
	{
		input_float.data += 0.01;
		wxy_puber_obj.publish(input_float);
		//bool a = naptime.sleep();
		//std::cout<<a<<std::endl;
		//std::cout<<ros::Duration(0.5).sleep()<<std::endl;;
		ros::Duration(0.5).sleep();
		ROS_INFO("aabool");
	}
}
