#include<exam2/my_data_type.h>
#include<ros/ros.h>
int main(int argc,char **argv)
{
	ros::init(argc,argv,"my_data_type_node");
	ros::NodeHandle nh;
	ros::Publisher my_data_puber = nh.advertise<exam2::my_data_type>("my_data_puber",1);
	exam2::my_data_type wxy_is_my_type;
	ros:: Rate naptime(1);
	wxy_is_my_type.A = 99;
	wxy_is_my_type.B = 999;
	wxy_is_my_type.C = 9999;

	while(ros::ok())
	{
		wxy_is_my_type.A +=1;
		wxy_is_my_type.B -= 1;
		wxy_is_my_type.C +=2;
		my_data_puber.publish(wxy_is_my_type);
		naptime.sleep();
		}
	}
