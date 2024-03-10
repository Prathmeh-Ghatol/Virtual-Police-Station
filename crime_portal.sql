-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 04:19 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

-- Create database `crime_portal` if not exists
CREATE DATABASE IF NOT EXISTS `crime_portal`;

USE `crime_portal`;

-- Table structure for table `complaint`
CREATE TABLE IF NOT EXISTS `complaint` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT NULL,
  `p_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into `complaint` table
INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(1, 123214521452, 'Tollygunge', 'Robbery', '2022-12-06', 'My Home has been Robbed.', 'Assigned', 'ChargeSheet Filed', 't101');

-- Table structure for table `head`
CREATE TABLE IF NOT EXISTS `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into `head` table
INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('head@kp', 'head');

-- Table structure for table `police`
CREATE TABLE IF NOT EXISTS `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into `police` table
INSERT INTO `police` (`p_name`, `p_id`, `spec`, `location`, `p_pass`) VALUES
('Manish Singh', 'a101', 'Murder', 'Anandapur', 'manish'),
('Jay Singh', 'a102', 'All', 'Anandapur', 'jay'),
('Suvendu Ghosh', 't101', 'Robbery', 'Tollygunge', 'suvendu');

-- Table structure for table `police_station`
CREATE TABLE IF NOT EXISTS `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL,
  PRIMARY KEY (`i_id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into `police_station` table
INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('shah@anandapur', 'Shahbaz', 'Anandapur', 'shahbaz'),
('shivam@tollygunge', 'Shivam', 'Tollygunge', 'shivam');

-- Table structure for table `update_case`
CREATE TABLE IF NOT EXISTS `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into `update_case` table
INSERT INTO `update_case` (`c_id`, `case_update`) VALUES
(1, 'Criminal Verified'),
(1, 'Criminal Caught'),
(1, 'Criminal Interrogated'),
(1, 'Criminal Accepted the Crime'),
(1, 'Criminal Charged'),
(1, 'The case has been moved to Court.'),
(1, 'Criminal Verified');

-- Table structure for table `user`
CREATE TABLE IF NOT EXISTS `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL,
  PRIMARY KEY (`a_no`),
  UNIQUE KEY `u_id` (`u_id`),
  UNIQUE KEY `mob` (`mob`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data into `user` table
INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Satyansh Kumar', 'satyansh123@gmail.com', 'satyansh', 'Ranchi', 123214521452, 'Male', 9854123654);
