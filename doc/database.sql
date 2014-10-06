-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2014 at 01:45 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
`post_id` int(10) unsigned NOT NULL,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'heading1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque leo a massa pharetra ultrices. Integer molestie ex at est iaculis, ac dictum felis finibus. Aenean et eleifend sem. Fusce imperdiet mi eu lectus sollicitudin venenatis aliquet non tellus. Nulla dignissim feugiat orci, et malesuada dui tristique sed. Maecenas pretium rutrum metus blandit viverra. Curabitur volutpat auctor nisi eget porttitor. Aenean dui ex, pharetra et mi nec, iaculis vestibulum lectus. Aliquam feugiat sem et nisl volutpat condimentum. Etiam in varius nunc, eu pulvinar purus. Maecenas porttitor, augue ut ultricies convallis, sapien sem aliquet libero, non blandit felis libero id odio.', '2014-10-06 11:38:02', 1),
(2, 'heading2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque leo a massa pharetra ultrices. Integer molestie ex at est iaculis, ac dictum felis finibus. Aenean et eleifend sem. Fusce imperdiet mi eu lectus sollicitudin venenatis aliquet non tellus. Nulla dignissim feugiat orci, et malesuada dui tristique sed. Maecenas pretium rutrum metus blandit viverra. Curabitur volutpat auctor nisi eget porttitor. Aenean dui ex, pharetra et mi nec, iaculis vestibulum lectus. Aliquam feugiat sem et nisl volutpat condimentum. Etiam in varius nunc, eu pulvinar purus. Maecenas porttitor, augue ut ultricies convallis, sapien sem aliquet libero, non blandit felis libero id odio.', '2014-10-06 11:38:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(10) unsigned NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`) VALUES
(1, 'demo', 'demo', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
SET FOREIGN_KEY_CHECKS=1;
