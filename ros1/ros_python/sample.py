#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from nav_msgs.msg import Odometry   
import tf
from tf.transformations import euler_from_quaternion



"""""
class Publishsers():
    def __init__(self):
        # Publisherを作成
        self.publisher = rospy.Publisher('/topic_name', Pose2D, queue_size=10)

        # messageの型を作成
        self.message = Pose2D()

    def make_msg(self):
        # 処理を書く

    def send_msg(self):
        # messageを送信
        self.make_msg()
        self.publisher.publish(self.message)
"""""


 
class Subscribers():
    def __init__(self):
        # Subscriberを作成
        self.subscriber = rospy.Subscriber('/odom', Odometry, self.callback)
            # messageの型を作成
        self.message = Odometry()

    def callback(self, message):
        # callback時の処理(sendが必要な場合はここにsendを入れるやるのもあり)
        #self.publish(data)
        global _odom_x, _odom_y, _odom_z, _odom_theta
        _odom_x = message.pose.pose.position.x
        _odom_y = message.pose.pose.position.y
        _odom_z = message.pose.pose.position.z
        rospy.loginfo("Odomery: x=%s y=%s z=%s", _odom_x, _odom_y, _odom_z)

def main():
    # nodeの立ち上げ
    rospy.init_node('Node_name')

    # クラスの作成
    #pub = Publishsers()
    sub = Subscribers()

    # spin
    rospy.spin()

    # ratesleep
    rate = rospy.Rate(40)

    while not rospy.is_shutdown():
        #pub.send_msg()
        rate.sleep()

if __name__ == '__main__':
   main()


