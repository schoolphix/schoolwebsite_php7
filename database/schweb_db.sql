-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2020 at 11:16 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schweb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminupdate`
--

CREATE TABLE `adminupdate` (
  `id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(500) DEFAULT NULL,
  `upload` varchar(500) DEFAULT NULL,
  `content` text CHARACTER SET utf16,
  `userid` int(10) UNSIGNED NOT NULL,
  `updatetype` varchar(45) NOT NULL,
  `updatemode` varchar(45) DEFAULT NULL,
  `uploadedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminupdate`
--

INSERT INTO `adminupdate` (`id`, `caption`, `upload`, `content`, `userid`, `updatetype`, `updatemode`, `uploadedon`) VALUES
(5, 'YouTube Page and School Portal coming soon...', '', '<p>Our youtube page and school portal would be coming online soon, do stay tuned.</p>', 1, 'news', NULL, '2019-06-09 23:26:35'),
(6, 'School Tour', '', 'https://www.youtube.com/embed/iAKY7_pGqZ\" frameborder=\"0\" allow=\"autoplay; encrypted-media', 1, 'video', NULL, '2019-06-09 23:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

CREATE TABLE `adminuser` (
  `id` int(10) UNSIGNED NOT NULL,
  `usernames` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `usertype` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`id`, `usernames`, `userid`, `pass`, `usertype`) VALUES
(1, 'Admin User', 'user@admin', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', 'ADMIN'),
(2, 'School User', 'user@school', '45f106ef4d5161e7aa38cf6c666607f25748b6ca', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jobid` int(11) NOT NULL,
  `filename` text NOT NULL,
  `filesize` int(11) NOT NULL,
  `filetype` text NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `createdon` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `requirements` text NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `description`, `requirements`, `createdby`, `createdon`, `status`) VALUES
(2, 'Personnel', '<p>PersonnelÂ </p>', '<p>Degree</p>', 1, '2019-06-10 00:57:51', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `active_status` smallint(1) DEFAULT '1',
  `dateadded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `caption`, `picture_url`, `active_status`, `dateadded`) VALUES
(41, '<br>', 'asset/uploads/carousel/20200304_1583339419.jpg', 1, '2019-06-09 23:07:44'),
(42, '<br>', 'asset/uploads/carousel/20200304_1583339438.jpg', 1, '2019-06-09 23:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactsubject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `names` varchar(255) NOT NULL,
  `readmessage` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `datesent` datetime NOT NULL,
  `phoneno` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallerypicures`
--

CREATE TABLE `gallerypicures` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `imagedirectory` varchar(255) DEFAULT NULL,
  `dateuploaded` varchar(45) NOT NULL,
  `folderid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messagereplies`
--

CREATE TABLE `messagereplies` (
  `id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `repliedon` datetime NOT NULL,
  `messageid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `morepages`
--

CREATE TABLE `morepages` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `active_status` smallint(6) DEFAULT '1',
  `link_location` smallint(1) DEFAULT NULL,
  `home_tab` varchar(5) DEFAULT NULL,
  `url_content` varchar(255) DEFAULT NULL,
  `content` text,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morepages`
--

INSERT INTO `morepages` (`id`, `caption`, `category`, `picture_url`, `active_status`, `link_location`, `home_tab`, `url_content`, `content`, `created_on`) VALUES
(5, 'History', 'about', 'asset/uploads/20200304_1583339749.jpg', 1, 1, '2', 'history', '<p><strong style=\"font-size: medium;\">BACKGROUND</strong></p>\r\n<p><span style=\"font-size: medium;\">In providing the needed environment for the proper education of the child, our specialized kind of education which is child-centred was established on 5th September 2005.&nbsp; It is registered with Ministry of Education, and the Corporate Affairs Commission, Nigeria.</span></p>\r\n<p><span style=\"font-size: medium;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: medium;\"><strong>************* SCHOOLS</strong></span></p>\r\n<p><span style=\"font-size: medium;\">Our schools promotes a life-long learning, using best practices, in an environment where Great principles are taught, modeled and practiced by raising proper citizens, with a holistic and excellent education, who will function effectively and uphold the pillars of influence in the global community.</span></p>\r\n<p><span style=\"font-size: medium;\">We have a specialized kind of education which is child-centred to provide the needed environment for the proper education of the child. Our&nbsp;High School further grooms the child&nbsp;to solve future communal problems and strengthen his or her academic foundation such way that they are successful in their higher education and life in general. We hope to evolve to a Tertiary Institution in the nearest future.</span></p>\r\n<p><span style=\"font-size: medium;\">Our environment is serene, secure and we have lovely classroom setting where pupils and students work in an atmosphere of freedom and responsibility. We have uninterrupted power and water supply enabled by a fixed inverter system. We help develop the student\'s cognitive abilities and as well as explore their true potentials. Our teachers are highly qualified, committed, motivated and trained with international certifications.&nbsp;</span></p>\r\n<p><span style=\"font-size: medium;\">At ************** Schools, there is no substitute. We create that noble path to greatness because we&rsquo;ve got DEPTH.</span></p>', '2015-07-31 11:21:38'),
(28, 'Board of Directors', 'about', 'asset/uploads/20200304_1583339734.jpg', 1, 1, '1D', 'bod', '', '2019-06-09 22:57:10'),
(29, 'Board of Advisors', 'about', 'asset/uploads/20200304_1583339689.jpg', 1, 1, '0', 'boa', '', '2019-06-09 22:58:56'),
(30, 'Pre-School', 'academics', 'asset/uploads/20200304_1583339587.jpg', 1, 1, '0', 'preschool', '<div align=\"center\"><span style=\"font-size: large;\"><strong>************ SCHOOL (PRE-SCHOOL)</strong></span></div>\r\n<div align=\"center\"><span style=\"font-size: large;\">&nbsp;</span></div>\r\n<div align=\"center\"><span style=\"font-size: large;\">At *****, we offer a lovely classroom setting where children work in an atmosphere of freedom and responsibility. The Pre-scchool materials provide a sound academic base. They attract your child\'s interest and support your child\'s learning. An active, hand-on approach enables your child to discover the world.&nbsp;</span></div>\r\n<div align=\"center\"><span style=\"font-size: large;\"><em>*****... No Substitute</em></span></div>', '2019-06-09 23:05:37'),
(31, 'Vision, Mission and Anthem', 'about', 'asset/uploads/20200304_1583339662.jpg', 1, 2, '0', 'mva', '<p>&nbsp;</p>\r\n<p><span style=\"font-size: large;\"><strong>Our Vision</strong></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: large;\">To run private schools that would produce responsible leaders of the community and profitably exist for the good of the society.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: large;\">&nbsp;</span></p>\r\n<p><strong><span style=\"font-size: large;\">Our Mission</span></strong></p>\r\n<p><span style=\"font-size: large;\">-To Establish&nbsp;schools of international repute that will stand the test of time.&nbsp;</span><br /><span style=\"font-size: large;\">-To Compromise&nbsp;none of money, time, personnel, facilities and discipline towards promoting high academic standards in our quest for excellence.&nbsp;</span><br /><span style=\"font-size: large;\">-To Produce&nbsp;and nurture students that will play serious roles in the Nigeria of tomorrow and the world at large.&nbsp;</span><br /><span style=\"font-size: large;\">-To Create&nbsp;an enabling environment for the utmost harnessing and maximum development of the potentials of our budding, ambitious and hardworking staff.&nbsp;</span><br /><span style=\"font-size: large;\">And most of all, to give every child a great beginning.</span></p>\r\n<p><span style=\"font-size: large;\">&nbsp;</span></p>\r\n<p><strong><span style=\"font-size: large;\">School Anthem</span></strong></p>\r\n<p><span style=\"font-size: large;\">*********, *************,&nbsp;<br />Academic excellence and Character is our goal&nbsp;<br />As you give your child&nbsp;<br />A great beginning, unity, love and purity&nbsp;<br />We will grow to serve the Lord, We will live to serve the Lord, And our great nation, Nigeria. X2&nbsp;<br />&lsquo;************ School, giving your child a great beginning&rsquo;</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong><span style=\"font-size: large;\">Core Values:</span></strong></p>\r\n<p><span style=\"font-size: large;\">*Discipline</span></p>\r\n<p><span style=\"font-size: large;\">*Excellence</span></p>\r\n<p><span style=\"font-size: large;\">*Faith in God</span></p>\r\n<p><span style=\"font-size: large;\">*Trustworthiness</span></p>\r\n<p><span style=\"font-size: large;\">*Hardwork</span></p>\r\n<p><span style=\"font-size: large;\">*Integrity</span></p>\r\n<p><span style=\"font-size: large;\">&nbsp;</span></p>', '2019-06-09 23:33:46'),
(32, 'Welcome Page', 'index', 'asset/uploads/20200304_1583339520.jpg', 1, 1, '0', 'index', '<p><span style=\"font-size: large;\">Our ****** promotes a life-long learning, using best practices, in an environment where Great principles are taught, modeled and practiced by raising proper citizens, with a holistic and excellent education, who will function effectively and uphold the pillars of influence in the global community.</span></p>\r\n<p><span style=\"font-size: large;\">We have a specialized kind of education which is child-centred to provide the needed environment for the proper education of the child. Our&nbsp;High ******** further grooms the child&nbsp;to solve future communal problems and strengthen his or her academic foundation such way that they are successful in their higher education and life in general. We hope to evolve to a Tertiary Institution in the nearest future.</span></p>\r\n<p><span style=\"font-size: large;\">Our environment is serene, secure and we have lovely classroom setting where pupils and students work in an atmosphere of freedom and responsibility. We have uninterrupted power and water supply enabled by a fixed inverter system. We help develop the student\'s cognitive abilities and as well as explore their true potentials. Our teachers are highly qualified, committed, motivated and trained with international certifications.&nbsp;</span></p>\r\n<p><span style=\"font-size: large;\">At ********, there is no substitute. We create that noble path to greatness because we&rsquo;ve got DEPTH.</span></p>\r\n<p><span style=\"font-size: large;\">Welcome once again.</span></p>\r\n<p><span style=\"font-size: large;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: large;\">Director/Head of ********</span></p>\r\n<p><span style=\"font-size: large;\"><a title=\"click to read more\" href=\"about?history\">Read More</a></span></p>', '2019-06-09 23:52:35'),
(33, 'Admission Procedure', 'admission', 'asset/uploads/20200304_1583339535.jpg', 1, 2, '4', 'admission', '<p><br /><span style=\"font-size: large;\"><strong>ADMISSION PROCESS</strong></span><br /><br /></p>\r\n<p><span style=\"font-size: large;\">1.&nbsp; Download Form from the home page or Visit our school and obtain Entrance Form.</span></p>\r\n<p><span style=\"font-size: large;\">2.&nbsp; Fill and return same with two (2) passport photographs and Make a<span>&nbsp;payment of N5,000.</span></span></p>\r\n<p><span style=\"font-size: large;\">3.&nbsp; Take your ward(s) to the designated venue on the scheduled date for examinations</span></p>\r\n<p><span style=\"font-size: large;\">4.&nbsp; Check back for the outcome of the examinations</span></p>\r\n<p><span style=\"font-size: large;\">5.&nbsp; If your ward passes the examinations, obtain Prospectus, make payments to the designated banks</span></p>\r\n<p><span style=\"font-size: large;\">5.&nbsp; Present evidence of payment and obtain an Admission Form from the school, fill and submit</span></p>\r\n<p><span style=\"font-size: large;\">6.&nbsp; Take your ward(s) to school on resumption date.</span></p>\r\n<p><span style=\"font-size: large;\">For more inforation, please visit our front desk at the school premises or call&nbsp;<strong>+2348012345678</strong></span></p>', '2019-06-10 00:16:59'),
(34, 'Primary School', 'academics', 'asset/uploads/20200304_1583339569.jpg', 1, 1, '0', 'primary', '<div align=\"center\">\r\n<div align=\"center\"><span style=\"font-size: large;\">Do you have the dream for your child to be able to compete at every level in the world? In an up-to-date international educational curriculum to our pupils, ***** is the way forward for every child who plans to excel in any sphere of life! We give our pupils proper attention to ensure they receive the best possible educational outcome.&nbsp;&nbsp;</span></div>\r\n</div>\r\n<div align=\"center\"><span style=\"font-size: large;\"><em>****** School....&nbsp;</em><em>a noble path to greatness.You and your child\'s dream comes true!</em></span></div>', '2019-06-10 00:42:16'),
(35, 'Secondary School', 'academics', 'asset/uploads/20200304_1583339554.jpg', 1, 1, '0', 'secondary', '<p><span style=\"font-size: large;\">The prestigious ****** School is Internationally affiliated to Global Universities and Exams Boards, It\'s simply a school with a difference . At our school, teacher to student is United Nations accepted standard for secondary education. Our environment is serene, secure and classroom spacious and uninterrupted power and water supply. Our teachers are highly qualified, committed, motivated and trained with international certifications.</span></p>\r\n<div align=\"center\"><span style=\"font-size: large;\"><em>****** School.... we\'ve got DEPTH!!!</em></span></div>', '2019-06-10 00:43:20'),
(36, 'Our Activities and Services', 'about', 'asset/uploads/20200304_1583339638.jpg', 1, 2, '0', 'activities', '<p>-Pre-Tertiary Academics which involve Pre-School, Primary and Secondary Education.</p>\r\n<p>-Extra Cirricula Academics.</p>\r\n<p>-<strong>STEM Education</strong>, our<span>&nbsp;curriculum is based on the idea of deeply educating our students in four following the disciplines; Science, Technology, Engineering and Mathematics infused in their regular academic curricula.</span></p>\r\n<p><span>-<strong>Advanced Laboratory</strong> Practises and Experiments.&nbsp;&nbsp;</span></p>', '2019-06-10 14:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(225) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `content` text,
  `datesent` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `picfolder`
--

CREATE TABLE `picfolder` (
  `id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) NOT NULL,
  `datecreated` datetime NOT NULL,
  `createdby` int(10) UNSIGNED NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picfolder`
--

INSERT INTO `picfolder` (`id`, `caption`, `datecreated`, `createdby`, `description`) VALUES
(10, 'School Environment', '2019-06-10 00:19:01', 1, ''),
(11, 'School Lab', '2019-06-10 00:19:13', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `content` text,
  `datecreated` datetime DEFAULT NULL,
  `settingtype` smallint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `caption`, `content`, `datecreated`, `settingtype`) VALUES
(1, 'School_Name', 'SCHOOL', '2015-07-25 13:59:22', 1),
(2, 'School_Website', 'http://www.*******.com.ng', '2015-07-25 14:00:44', 1),
(3, 'School_Phone', '<font color=\"#fff\"><b>+234 11 2222 3333,</b></font> \r\n<font color=\"#fff\"><b>+234 11 2222 3333.</b></font>', '2015-07-25 14:01:19', 1),
(4, 'School_Email', '<font color=\"#fff\"><b>info@schools.com.ng</b></font>\r\n<br><font color=\"#FFFFCC\"><b>school@gmail.com</b></font>', '2015-07-25 14:01:41', 1),
(5, 'School_Address', '<font color=\"#fff\"><b>Lagos, Nigeria. </b></font>', '2015-07-25 14:02:06', 1),
(6, 'Website_Layout', '1', '2015-07-25 14:24:30', 2),
(7, 'Top_Bar_Color', '3', '2015-07-25 14:39:09', 3),
(8, 'Website_Color', 'global-style-blue', '2015-07-25 16:20:42', 4),
(10, 'School_Logo', 'asset/uploads/20200304_1583339356.jpg', '2015-07-26 20:08:18', 5),
(11, 'School_Vision', 'To run private schools that would produce responsible leaders of the community and profitably exist for the good of the society.', '2015-07-27 18:24:53', 1),
(12, 'School_Mission', '-<strong>To Establish </strong> schools of international repute that will stand the test of time.\r\n<br/>\r\n-<strong>To Compromise</strong> none of money, time, personnel, facilities and discipline towards promoting high academic standards in our quest for excellence.\r\n<br/>\r\n-<strong>To Produce</strong> and nurture students that will play serious roles in the Nigeria of tomorrow and the world at large.\r\n<br/>\r\n-<strong>To Create</strong> an enabling environment for the utmost harnessing and maximum development of the potentials of our budding, ambitious and hardworking staff.\r\n<br/>\r\nAnd most of all, to give every child a great beginning.', '2015-07-27 18:25:17', 1),
(13, 'School_Song', 'School, School,\r\n<br/>\r\nAcademic excellence and Character is our goal\r\n<br/>\r\nAs you give your child\r\n<br/>\r\nA great beginning, unity, love and purity\r\n<br/>\r\nWe will grow to serve the Lord, We will live to serve the Lord, And our great nation, Nigeria.  X2\r\n<br/>\r\nâ€˜School, giving your child a great beginningâ€™', '2015-07-27 18:26:36', 1),
(14, 'School_Core_Values', '*Discipline </br>\r\n*Excellence </br>\r\n*Faith in God </br>\r\n*Trustworthiness </br>\r\n*Hardwork </br>\r\n*Integrity', '2015-07-27 18:27:23', 1),
(15, 'School_Portal', '#', '2015-07-27 21:29:56', 1),
(16, 'Wesbite_BG', 'asset/uploads/20190609_1560109313.jpg', '2015-07-28 11:30:02', 5),
(17, 'Banner_BG', 'asset/uploads/20190609_1560109329.jpg', '2015-07-28 14:40:39', 5),
(18, 'School_Favicon', 'asset/uploads/20200304_1583339375.jpg', '2015-07-28 15:43:39', 5),
(19, 'Google_API', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3969.9616782306302!2d6.8912278143150445!3d5.718659733583147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1043b3e4e3c3271d%3A0x6dbbf1e25b7acca2!', '2015-07-28 18:52:02', 1),
(20, 'School_Motto', 'Giving your child a great beginning', '2015-08-01 15:05:08', 1),
(21, 'School_Video', 'https://www.youtube.com/embed/', '2015-08-02 06:58:26', 1),
(22, 'School_Visit', 'Parents and Prospects are free to visit the school anytime within Mon-Thursdays 7.30am â€“ 4pm, Fridays 7.30am-3pm and interact with the appropriate staff. Pupils and Students are dropped off at the school premises at 7:30am.', '2015-08-03 18:51:38', 1),
(23, 'SMS_USER', 'blank', '2015-08-06 21:57:15', 1),
(24, 'SMS_PASS', 'blank', '2015-08-06 21:57:24', 1),
(25, 'SMS_SENDER', 'SCH', '2015-08-06 21:58:22', 1),
(26, 'SMS_PHONE', '+2348012345678', '2015-08-07 11:40:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `medialink` varchar(255) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `caption`, `medialink`, `dateadded`) VALUES
(10, 'facebook', 'www.facebook.com/abc', '2020-03-04 17:12:16'),
(11, 'twitter', 'www.twitter.com/', '2020-03-04 17:12:34'),
(12, 'linkedin', 'www.linkedin.com/', '2020-03-04 17:12:51'),
(13, 'instagram', 'www.instagram.com/', '2020-03-04 17:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `testimonies`
--

CREATE TABLE `testimonies` (
  `sn` int(11) NOT NULL,
  `name` text NOT NULL,
  `testimony` text NOT NULL,
  `picture_url` varchar(255) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonies`
--

INSERT INTO `testimonies` (`sn`, `name`, `testimony`, `picture_url`, `dateAdded`, `status`) VALUES
(1, 'Hon. James John', '<span style=\"color: rgb(0, 0, 0); font-family: \" pt=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(252,=\"\" 252,=\"\" 252);\"=\"\">One of the most educationally equipped schools out there. They\'re doing something great.</span><br>', '', '2019-06-09 23:12:33', 'ACTIVE'),
(2, 'Chief Justice John Paul', '<span style=\"color: rgb(0, 0, 0); font-family: \" pt=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(252,=\"\" 252,=\"\" 252);\"=\"\">***************** School has always taken the bar higher then most, just when you think they can\'t get greater at Education, they surprise you.</span><br>', '', '2019-06-09 23:13:31', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uploadtype` varchar(45) DEFAULT NULL,
  `filedir` varchar(255) DEFAULT NULL,
  `uploadedby` int(10) UNSIGNED DEFAULT NULL,
  `uploadedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uploadtype`, `filedir`, `uploadedby`, `uploadedon`) VALUES
(8, 'admission_form_2', 'fileuploads/20190610_1560132341.pdf', 1, '2019-06-09 23:59:22'),
(9, 'admission_form', 'fileuploads/20190610_1560132351.pdf', 1, '2019-06-10 00:01:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminupdate`
--
ALTER TABLE `adminupdate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminuser`
--
ALTER TABLE `adminuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerypicures`
--
ALTER TABLE `gallerypicures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messagereplies`
--
ALTER TABLE `messagereplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `morepages`
--
ALTER TABLE `morepages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picfolder`
--
ALTER TABLE `picfolder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminupdate`
--
ALTER TABLE `adminupdate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adminuser`
--
ALTER TABLE `adminuser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallerypicures`
--
ALTER TABLE `gallerypicures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messagereplies`
--
ALTER TABLE `messagereplies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `morepages`
--
ALTER TABLE `morepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `picfolder`
--
ALTER TABLE `picfolder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
