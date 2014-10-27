-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2014 at 09:49 AM
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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
`comment_id` int(10) unsigned NOT NULL,
  `comment_text` text NOT NULL,
  `comment_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `comment_created`) VALUES
(1, 'Cool cool', '2014-10-27 08:24:24'),
(2, 'Awesome awesome', '2014-10-27 08:24:24'),
(3, 'allalala', '2014-10-27 08:45:20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(1, 'Heading 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque leo a massa pharetra ultrices. Integer molestie ex at est iaculis, ac dictum felis finibus. Aenean et eleifend sem. Fusce imperdiet mi eu lectus sollicitudin venenatis aliquet non tellus. Nulla dignissim feugiat orci, et malesuada dui tristique sed. Maecenas pretium rutrum metus blandit viverra. Curabitur volutpat auctor nisi eget porttitor. Aenean dui ex, pharetra et mi nec, iaculis vestibulum lectus. Aliquam feugiat sem et nisl volutpat condimentum. Etiam in varius nunc, eu pulvinar purus. Maecenas porttitor, augue ut ultricies convallis, sapien sem aliquet libero, non blandit felis libero id odio.', '2014-10-06 11:38:02', 1),
(2, 'Heading 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque leo a massa pharetra ultrices. Integer molestie ex at est iaculis, ac dictum felis finibus. Aenean et eleifend sem. Fusce imperdiet mi eu lectus sollicitudin venenatis aliquet non tellus. Nulla dignissim feugiat orci, et malesuada dui tristique sed. Maecenas pretium rutrum metus blandit viverra. Curabitur volutpat auctor nisi eget porttitor. Aenean dui ex, pharetra et mi nec, iaculis vestibulum lectus. Aliquam feugiat sem et nisl volutpat condimentum. Etiam in varius nunc, eu pulvinar purus. Maecenas porttitor, augue ut ultricies convallis, sapien sem aliquet libero, non blandit felis libero id odio.', '2014-10-06 11:38:02', 1),
(3, 'Heading 3', 'Praesent ac magna quis urna elementum pellentesque. Ut gravida, nunc dapibus dapibus tristique, ipsum mauris blandit erat, sed eleifend nibh massa ac lacus. In ullamcorper tellus in libero laoreet, vel venenatis nunc sagittis. In sed suscipit leo. Sed hendrerit ligula erat, vel imperdiet dui pulvinar a. Maecenas rhoncus nisl eget posuere mattis. Sed gravida mi lacus, viverra ultrices nisi mollis hendrerit. Suspendisse ut dolor ac purus commodo consectetur. Aliquam posuere lectus ut consequat volutpat. ', '2014-10-21 18:55:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
`tag_id` int(10) unsigned NOT NULL,
  `tag_name` varchar(25) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'esimene'),
(2, 'teine'),
(3, 'tagtagtag');

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
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`post_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
 ADD PRIMARY KEY (`post_id`,`tag_id`), ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints fodr dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);
SET FOREIGN_KEY_CHECKS=1;
