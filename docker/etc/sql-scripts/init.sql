CREATE SCHEMA IF NOT EXISTS `sportnet` DEFAULT CHARACTER SET utf8 ;
use sportnet;

CREATE TABLE `accountsettings` (
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `telephone` varchar(14) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `stateID` int(2) UNSIGNED NOT NULL,
  `zip` varchar(5) NOT NULL,
  `companyname` varchar(25) NOT NULL,
  `fax` varchar(14) NOT NULL,
  `lastmodified` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accountsettings`
--

INSERT INTO `accountsettings` (`username`, `email`, `name`, `passwd`, `telephone`, `address`, `address2`, `city`, `stateID`, `zip`, `companyname`, `fax`, `lastmodified`) VALUES
('admin ', 'info@electcharlesnas', 'Administrator', '*59C70DA2F3E3A5BDF46B68F5C8B8F25762BCCEF0', '231-329-2209', 'P.O. Box 1102', NULL, 'Muskegon', 27, '49443', 'MJAC', '616-847-9265', '2010-04-30 05:28:11'),
('admin ', 'info@electcharlesnas', 'Administrator', '*59C70DA2F3E3A5BDF46B68F5C8B8F25762BCCEF0', '231-329-2209', 'P.O. Box 1102', NULL, 'Muskegon', 27, '49443', 'MJAC', '616-847-9265', '2010-04-30 05:28:11'),
('admin ', 'info@electcharlesnas', 'Administrator', '*59C70DA2F3E3A5BDF46B68F5C8B8F25762BCCEF0', '231-329-2209', 'P.O. Box 1102', NULL, 'Muskegon', 27, '49443', 'MJAC', '616-847-9265', '2010-04-30 05:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `lastmodified` datetime NOT NULL,
  `level` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `lastmodified`, `level`) VALUES
('bclincy', '*999AB360139A3C3E4AB606D33AB6B9BC75CAAC93', '2009-01-11 17:53:21', 1),
('bclincy', '*999AB360139A3C3E4AB606D33AB6B9BC75CAAC93', '2009-01-11 17:53:21', 1),
('bclincy', '*999AB360139A3C3E4AB606D33AB6B9BC75CAAC93', '2009-01-11 17:53:21', 1),
('bclincy', '*999AB360139A3C3E4AB606D33AB6B9BC75CAAC93', '2009-01-11 17:53:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `dsc` text NOT NULL,
  `cat_link` varchar(200) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `parent_id`, `cat_name`, `dsc`, `cat_link`, `lft`, `rgt`) VALUES
(1, 0, 'Content', 'Web Site content', 'Content', 1, 6),
(2, 0, 'Products', 'Products offered', 'Products', 7, 12),
(3, 1, 'About', 'About the Web site', 'About', 2, 3),
(4, 1, 'Policies', 'Different Web Policy', 'Policies', 4, 5),
(5, 2, 'Registration fees', 'Registration Fees', 'Registration-fees', 8, 9),
(6, 2, 'Registration Add-Ons', 'Extra things that registrations might need to have.', 'Registration-Add-Ons', 10, 11),
(1, 0, 'Content', 'Web Site content', 'Content', 1, 6),
(2, 0, 'Products', 'Products offered', 'Products', 7, 12),
(3, 1, 'About', 'About the Web site', 'About', 2, 3),
(4, 1, 'Policies', 'Different Web Policy', 'Policies', 4, 5),
(5, 2, 'Registration fees', 'Registration Fees', 'Registration-fees', 8, 9),
(6, 2, 'Registration Add-Ons', 'Extra things that registrations might need to have.', 'Registration-Add-Ons', 10, 11),
(1, 0, 'Content', 'Web Site content', 'Content', 1, 6),
(2, 0, 'Products', 'Products offered', 'Products', 7, 12),
(3, 1, 'About', 'About the Web site', 'About', 2, 3),
(4, 1, 'Policies', 'Different Web Policy', 'Policies', 4, 5),
(5, 2, 'Registration fees', 'Registration Fees', 'Registration-fees', 8, 9),
(6, 2, 'Registration Add-Ons', 'Extra things that registrations might need to have.', 'Registration-Add-Ons', 10, 11),
(1, 0, 'Content', 'Web Site content', 'Content', 1, 6),
(2, 0, 'Products', 'Products offered', 'Products', 7, 12),
(3, 1, 'About', 'About the Web site', 'About', 2, 3),
(4, 1, 'Policies', 'Different Web Policy', 'Policies', 4, 5),
(5, 2, 'Registration fees', 'Registration Fees', 'Registration-fees', 8, 9),
(6, 2, 'Registration Add-Ons', 'Extra things that registrations might need to have.', 'Registration-Add-Ons', 10, 11),
(1, 0, 'Content', 'Web Site content', 'Content', 1, 6),
(2, 0, 'Products', 'Products offered', 'Products', 7, 12),
(3, 1, 'About', 'About the Web site', 'About', 2, 3),
(4, 1, 'Policies', 'Different Web Policy', 'Policies', 4, 5),
(5, 2, 'Registration fees', 'Registration Fees', 'Registration-fees', 8, 9),
(6, 2, 'Registration Add-Ons', 'Extra things that registrations might need to have.', 'Registration-Add-Ons', 10, 11),
(1, 0, 'Content', 'Web Site content', 'Content', 1, 6),
(2, 0, 'Products', 'Products offered', 'Products', 7, 12),
(3, 1, 'About', 'About the Web site', 'About', 2, 3),
(4, 1, 'Policies', 'Different Web Policy', 'Policies', 4, 5),
(5, 2, 'Registration fees', 'Registration Fees', 'Registration-fees', 8, 9),
(6, 2, 'Registration Add-Ons', 'Extra things that registrations might need to have.', 'Registration-Add-Ons', 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `clubadmin`
--

CREATE TABLE `clubadmin` (
  `adminID` bigint(16) UNSIGNED NOT NULL,
  `club_id` bigint(16) UNSIGNED NOT NULL COMMENT 'foreignkey club_id',
  `user_id` bigint(16) UNSIGNED NOT NULL COMMENT 'foreignkey userID',
  `level` int(1) NOT NULL DEFAULT '1' COMMENT 'Level of security',
  `clubadminUp` date NOT NULL COMMENT 'when modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clubprofile`
--

CREATE TABLE `clubprofile` (
  `questionID` int(4) UNSIGNED NOT NULL,
  `question` text NOT NULL COMMENT 'question',
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clubprofile`
--

INSERT INTO `clubprofile` (`questionID`, `question`, `modified`) VALUES
(1, 'Club Purpose (club Mission statement):', '2014-06-21'),
(2, 'What are your team sizes', '2014-06-21'),
(3, 'What are you guys famous for?', '2014-06-21'),
(4, 'History of your program?', '2014-06-21'),
(5, 'Coaches Certification and/or Affiliations?', '2014-06-21'),
(1, 'Club Purpose (club Mission statement):', '2014-06-21'),
(2, 'What are your team sizes', '2014-06-21'),
(3, 'What are you guys famous for?', '2014-06-21'),
(4, 'History of your program?', '2014-06-21'),
(5, 'Coaches Certification and/or Affiliations?', '2014-06-21'),
(1, 'Club Purpose (club Mission statement):', '2014-06-21'),
(2, 'What are your team sizes', '2014-06-21'),
(3, 'What are you guys famous for?', '2014-06-21'),
(4, 'History of your program?', '2014-06-21'),
(5, 'Coaches Certification and/or Affiliations?', '2014-06-21'),
(1, 'Club Purpose (club Mission statement):', '2014-06-21'),
(2, 'What are your team sizes', '2014-06-21'),
(3, 'What are you guys famous for?', '2014-06-21'),
(4, 'History of your program?', '2014-06-21'),
(5, 'Coaches Certification and/or Affiliations?', '2014-06-21'),
(1, 'Club Purpose (club Mission statement):', '2014-06-21'),
(2, 'What are your team sizes', '2014-06-21'),
(3, 'What are you guys famous for?', '2014-06-21'),
(4, 'History of your program?', '2014-06-21'),
(5, 'Coaches Certification and/or Affiliations?', '2014-06-21'),
(1, 'Club Purpose (club Mission statement):', '2014-06-21'),
(2, 'What are your team sizes', '2014-06-21'),
(3, 'What are you guys famous for?', '2014-06-21'),
(4, 'History of your program?', '2014-06-21'),
(5, 'Coaches Certification and/or Affiliations?', '2014-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `club_admin`
--

CREATE TABLE `club_admin` (
  `adminID` int(5) UNSIGNED NOT NULL,
  `club_id` int(8) UNSIGNED NOT NULL COMMENT 'foreign key for the club',
  `username` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `lname` varchar(80) NOT NULL,
  `email` varchar(120) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `stateID` int(2) UNSIGNED NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `mobile` varchar(12) DEFAULT NULL COMMENT 'Number the system texts',
  `phone` varchar(15) DEFAULT NULL,
  `level` int(1) NOT NULL,
  `modifed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `club_coaches`
--

CREATE TABLE `club_coaches` (
  `pcID` int(10) UNSIGNED NOT NULL,
  `club_id` int(10) UNSIGNED NOT NULL,
  `coach_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `club_parents`
--

CREATE TABLE `club_parents` (
  `club_ID` int(10) UNSIGNED NOT NULL,
  `parent_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `club_volunteer`
--

CREATE TABLE `club_volunteer` (
  `clubs_id` int(11) UNSIGNED NOT NULL COMMENT 'foreign key for ',
  `volunteers_id` int(11) UNSIGNED NOT NULL COMMENT 'volunteers foreign ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `coachID` int(10) UNSIGNED NOT NULL,
  `riskID` varchar(25) DEFAULT NULL,
  `displayphone` int(1) UNSIGNED DEFAULT NULL COMMENT 'Display Sports',
  `sport_id` int(8) DEFAULT NULL COMMENT 'Foreign key for coach',
  `website` varchar(100) DEFAULT NULL COMMENT 'Web Site Address',
  `experiences` int(2) DEFAULT NULL COMMENT 'Years of Experience',
  `started` date DEFAULT NULL COMMENT 'Date Started',
  `philosophy` text COMMENT 'coaching philosophy',
  `achivements` text COMMENT 'Sports achievements',
  `independent` int(1) DEFAULT NULL COMMENT 'Independent coach'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `fname` varchar(25) NOT NULL DEFAULT '',
  `lname` varchar(30) NOT NULL DEFAULT '',
  `company` varchar(40) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `email` varchar(35) NOT NULL DEFAULT '',
  `address1` varchar(50) NOT NULL DEFAULT '',
  `address2` varchar(30) DEFAULT NULL,
  `city` varchar(30) NOT NULL DEFAULT '',
  `stateID` tinyint(2) NOT NULL DEFAULT '26',
  `zipcode` varchar(5) NOT NULL DEFAULT '',
  `phone` varchar(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dbemails`
--

CREATE TABLE `dbemails` (
  `ID` int(2) UNSIGNED NOT NULL,
  `club_id` int(9) UNSIGNED NOT NULL COMMENT 'connect email to club',
  `name` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `lastmodifed` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Emails that the Site sends emails';

--
-- Dumping data for table `dbemails`
--

INSERT INTO `dbemails` (`ID`, `club_id`, `name`, `content`, `lastmodifed`) VALUES
(1, 0, 'newuser', '<h2>Welcome to [website]</h2>\r\nThank you for joining [website]! We\'re very happy to have you on board, and we look forward to providing you with not only Online business solutions but an understanding of Online technologies and how the can work for your business.\r\n\r\nPlease feel free to check our blogs and comment on anything (because we do read our feedback).\r\nFollow us on <a href=\"http:///twitter.com/daonlinebiz\">Twitter</a>\r\n\r\n ', '2009-08-22'),
(2, 1, 'Registration', '<p>Welcome [fname] [lname]</p>\r\n<p>You recently registered at your player at [website]. We really appreciate it taking valuable time out of your day to to register. Can\'t wait until your player to get started.</p>\r\n<p>Would you please assist us by clicking on the url below to confirm your registration, so we can activate your account right away?</p>\r\n<p>Please click below.  It will only take a moment to confirm.<br />\r\n  <br /> \r\n  [confirmaddress]\r\n</p>\r\n<p>Please login to enjoy all our services availables on the Web site.<br />\r\n</p>\r\n<p>Sincerely,<br />\r\n  [companyname]</p>\r\n<p>If you no longer wish to receive notices regarding registration, please click here:</p>\r\n<p>[optout]</p>\r\n<p>This email address: [emailadd] from [ipadd] at [time].</p>', '2009-11-20'),
(1, 0, 'newuser', '<h2>Welcome to [website]</h2>\r\nThank you for joining [website]! We\'re very happy to have you on board, and we look forward to providing you with not only Online business solutions but an understanding of Online technologies and how the can work for your business.\r\n\r\nPlease feel free to check our blogs and comment on anything (because we do read our feedback).\r\nFollow us on <a href=\"http:///twitter.com/daonlinebiz\">Twitter</a>\r\n\r\n ', '2009-08-22'),
(2, 1, 'Registration', '<p>Welcome [fname] [lname]</p>\r\n<p>You recently registered at your player at [website]. We really appreciate it taking valuable time out of your day to to register. Can\'t wait until your player to get started.</p>\r\n<p>Would you please assist us by clicking on the url below to confirm your registration, so we can activate your account right away?</p>\r\n<p>Please click below.  It will only take a moment to confirm.<br />\r\n  <br /> \r\n  [confirmaddress]\r\n</p>\r\n<p>Please login to enjoy all our services availables on the Web site.<br />\r\n</p>\r\n<p>Sincerely,<br />\r\n  [companyname]</p>\r\n<p>If you no longer wish to receive notices regarding registration, please click here:</p>\r\n<p>[optout]</p>\r\n<p>This email address: [emailadd] from [ipadd] at [time].</p>', '2009-11-20'),
(1, 0, 'newuser', '<h2>Welcome to [website]</h2>\r\nThank you for joining [website]! We\'re very happy to have you on board, and we look forward to providing you with not only Online business solutions but an understanding of Online technologies and how the can work for your business.\r\n\r\nPlease feel free to check our blogs and comment on anything (because we do read our feedback).\r\nFollow us on <a href=\"http:///twitter.com/daonlinebiz\">Twitter</a>\r\n\r\n ', '2009-08-22'),
(2, 1, 'Registration', '<p>Welcome [fname] [lname]</p>\r\n<p>You recently registered at your player at [website]. We really appreciate it taking valuable time out of your day to to register. Can\'t wait until your player to get started.</p>\r\n<p>Would you please assist us by clicking on the url below to confirm your registration, so we can activate your account right away?</p>\r\n<p>Please click below.  It will only take a moment to confirm.<br />\r\n  <br /> \r\n  [confirmaddress]\r\n</p>\r\n<p>Please login to enjoy all our services availables on the Web site.<br />\r\n</p>\r\n<p>Sincerely,<br />\r\n  [companyname]</p>\r\n<p>If you no longer wish to receive notices regarding registration, please click here:</p>\r\n<p>[optout]</p>\r\n<p>This email address: [emailadd] from [ipadd] at [time].</p>', '2009-11-20'),
(1, 0, 'newuser', '<h2>Welcome to [website]</h2>\r\nThank you for joining [website]! We\'re very happy to have you on board, and we look forward to providing you with not only Online business solutions but an understanding of Online technologies and how the can work for your business.\r\n\r\nPlease feel free to check our blogs and comment on anything (because we do read our feedback).\r\nFollow us on <a href=\"http:///twitter.com/daonlinebiz\">Twitter</a>\r\n\r\n ', '2009-08-22'),
(2, 1, 'Registration', '<p>Welcome [fname] [lname]</p>\r\n<p>You recently registered at your player at [website]. We really appreciate it taking valuable time out of your day to to register. Can\'t wait until your player to get started.</p>\r\n<p>Would you please assist us by clicking on the url below to confirm your registration, so we can activate your account right away?</p>\r\n<p>Please click below.  It will only take a moment to confirm.<br />\r\n  <br /> \r\n  [confirmaddress]\r\n</p>\r\n<p>Please login to enjoy all our services availables on the Web site.<br />\r\n</p>\r\n<p>Sincerely,<br />\r\n  [companyname]</p>\r\n<p>If you no longer wish to receive notices regarding registration, please click here:</p>\r\n<p>[optout]</p>\r\n<p>This email address: [emailadd] from [ipadd] at [time].</p>', '2009-11-20'),
(1, 0, 'newuser', '<h2>Welcome to [website]</h2>\r\nThank you for joining [website]! We\'re very happy to have you on board, and we look forward to providing you with not only Online business solutions but an understanding of Online technologies and how the can work for your business.\r\n\r\nPlease feel free to check our blogs and comment on anything (because we do read our feedback).\r\nFollow us on <a href=\"http:///twitter.com/daonlinebiz\">Twitter</a>\r\n\r\n ', '2009-08-22'),
(2, 1, 'Registration', '<p>Welcome [fname] [lname]</p>\r\n<p>You recently registered at your player at [website]. We really appreciate it taking valuable time out of your day to to register. Can\'t wait until your player to get started.</p>\r\n<p>Would you please assist us by clicking on the url below to confirm your registration, so we can activate your account right away?</p>\r\n<p>Please click below.  It will only take a moment to confirm.<br />\r\n  <br /> \r\n  [confirmaddress]\r\n</p>\r\n<p>Please login to enjoy all our services availables on the Web site.<br />\r\n</p>\r\n<p>Sincerely,<br />\r\n  [companyname]</p>\r\n<p>If you no longer wish to receive notices regarding registration, please click here:</p>\r\n<p>[optout]</p>\r\n<p>This email address: [emailadd] from [ipadd] at [time].</p>', '2009-11-20'),
(1, 0, 'newuser', '<h2>Welcome to [website]</h2>\r\nThank you for joining [website]! We\'re very happy to have you on board, and we look forward to providing you with not only Online business solutions but an understanding of Online technologies and how the can work for your business.\r\n\r\nPlease feel free to check our blogs and comment on anything (because we do read our feedback).\r\nFollow us on <a href=\"http:///twitter.com/daonlinebiz\">Twitter</a>\r\n\r\n ', '2009-08-22'),
(2, 1, 'Registration', '<p>Welcome [fname] [lname]</p>\r\n<p>You recently registered at your player at [website]. We really appreciate it taking valuable time out of your day to to register. Can\'t wait until your player to get started.</p>\r\n<p>Would you please assist us by clicking on the url below to confirm your registration, so we can activate your account right away?</p>\r\n<p>Please click below.  It will only take a moment to confirm.<br />\r\n  <br /> \r\n  [confirmaddress]\r\n</p>\r\n<p>Please login to enjoy all our services availables on the Web site.<br />\r\n</p>\r\n<p>Sincerely,<br />\r\n  [companyname]</p>\r\n<p>If you no longer wish to receive notices regarding registration, please click here:</p>\r\n<p>[optout]</p>\r\n<p>This email address: [emailadd] from [ipadd] at [time].</p>', '2009-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `job_title`, `salary`, `notes`) VALUES
(1, 'Robin', 'Jackman', 'Software Engineer', 5500, NULL),
(2, 'Taylor', 'Edward', 'Software Architect', 7200, NULL),
(3, 'Vivian', 'Dickens', 'Database Administrator', 6000, NULL),
(4, 'Harry', 'Clifford', 'Database Administrator', 6800, NULL),
(5, 'Eliza', 'Clifford', 'Software Engineer', 4750, NULL),
(6, 'Nancy', 'Newman', 'Software Engineer', 5100, NULL),
(7, 'Melinda', 'Clifford', 'Project Manager', 8500, NULL),
(8, 'Harley', 'Gilbert', 'Software Architect', 8000, NULL),
(9, 'Robin', 'Jackman', 'Software Engineer', 5500, NULL),
(10, 'Taylor', 'Edward', 'Software Architect', 7200, NULL),
(11, 'Vivian', 'Dickens', 'Database Administrator', 6000, NULL),
(12, 'Harry', 'Clifford', 'Database Administrator', 6800, NULL),
(13, 'Eliza', 'Clifford', 'Software Engineer', 4750, NULL),
(14, 'Nancy', 'Newman', 'Software Engineer', 5100, NULL),
(15, 'Melinda', 'Clifford', 'Project Manager', 8500, NULL),
(16, 'Harley', 'Gilbert', 'Software Architect', 8000, NULL),
(17, 'Robin', 'Jackman', 'Software Engineer', 5500, NULL),
(18, 'Taylor', 'Edward', 'Software Architect', 7200, NULL),
(19, 'Vivian', 'Dickens', 'Database Administrator', 6000, NULL),
(20, 'Harry', 'Clifford', 'Database Administrator', 6800, NULL),
(21, 'Eliza', 'Clifford', 'Software Engineer', 4750, NULL),
(22, 'Nancy', 'Newman', 'Software Engineer', 5100, NULL),
(23, 'Melinda', 'Clifford', 'Project Manager', 8500, NULL),
(24, 'Harley', 'Gilbert', 'Software Architect', 8000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eventID` int(5) UNSIGNED NOT NULL,
  `club_id` int(5) UNSIGNED NOT NULL COMMENT 'foreign key for club',
  `title` varchar(200) NOT NULL,
  `location` tinytext NOT NULL,
  `rsvp` int(1) UNSIGNED NOT NULL COMMENT 'RSVP form include',
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `description` mediumtext COMMENT 'html or what ever',
  `featured` tinyint(1) NOT NULL COMMENT 'Feature items show on front page'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='event for calendar';

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `ID` int(5) UNSIGNED NOT NULL,
  `productID` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `question` tinytext NOT NULL,
  `answer` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `invoiceID` int(5) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zipcode` varchar(5) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  `custID` int(4) DEFAULT NULL,
  `dated` date DEFAULT NULL,
  `discount` decimal(6,2) DEFAULT NULL,
  `dtype` varchar(1) DEFAULT NULL,
  `inTotal` decimal(6,2) DEFAULT NULL,
  `nonpartname` varchar(125) DEFAULT NULL,
  `part_id` int(12) UNSIGNED DEFAULT NULL,
  `inprice` decimal(6,2) DEFAULT NULL,
  `prodprice` decimal(6,2) DEFAULT NULL,
  `qty` int(4) UNSIGNED DEFAULT NULL,
  `product` varchar(35) DEFAULT NULL,
  `ptype` varchar(15) DEFAULT NULL,
  `unit` varchar(5) DEFAULT NULL,
  `taxable` int(1) DEFAULT NULL,
  `paidon` date DEFAULT NULL,
  `payment` decimal(8,2) UNSIGNED DEFAULT NULL,
  `paytype` tinytext,
  `invoicenotes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_lines`
--

CREATE TABLE `invoice_lines` (
  `line_id` int(5) UNSIGNED NOT NULL,
  `invoiceID` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `partID` int(8) UNSIGNED NOT NULL DEFAULT '0',
  `nonpartname` varchar(125) DEFAULT NULL,
  `specifics` text,
  `qty` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00',
  `taxable` int(1) DEFAULT NULL COMMENT 'Add Tax to the total'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_notes`
--

CREATE TABLE `invoice_notes` (
  `id` int(4) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `Note` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_taxes`
--

CREATE TABLE `invoice_taxes` (
  `taxedinvID` int(8) UNSIGNED NOT NULL COMMENT 'Invoice Only have one taxable value',
  `rate` int(2) NOT NULL DEFAULT '6' COMMENT 'Tax Rate Percentage',
  `taxed` decimal(6,2) NOT NULL COMMENT 'Actual Taxed value ',
  `taxdated` date NOT NULL COMMENT 'Date Issued',
  `Location` varchar(20) NOT NULL DEFAULT 'MI' COMMENT 'Tax Authority'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Taxes for invoice Separate table easy way to pull what''s bee';

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `leagueID` int(8) UNSIGNED NOT NULL COMMENT 'Primary key',
  `leaguename` varchar(200) NOT NULL COMMENT 'league name',
  `leagueRep` varchar(200) NOT NULL COMMENT 'League Rep',
  `league_website` varchar(200) NOT NULL COMMENT 'Web site for the league',
  `league_description` mediumtext NOT NULL,
  `contactinfo` mediumtext NOT NULL COMMENT 'Phone/email to contact league',
  `lastmodified` date NOT NULL COMMENT 'last time they made changes',
  `verified` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Clubs are in different Leagues this is the league table';

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `ID` smallint(4) UNSIGNED NOT NULL,
  `cat` varchar(50) NOT NULL DEFAULT '3' COMMENT 'foreign for Category',
  `name` varchar(40) NOT NULL,
  `url` varchar(80) NOT NULL,
  `description` mediumtext COMMENT 'description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `pID` bigint(20) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `userID` bigint(20) UNSIGNED NOT NULL COMMENT 'User Foreign Key',
  `emergContact` varchar(100) NOT NULL COMMENT 'Emergency Contact infomation',
  `contactphone` varchar(15) NOT NULL COMMENT 'emergency Contact Phone #',
  `typeparent` varchar(50) DEFAULT 'Mother' COMMENT 'Type of Relationship parent',
  `lastchange` date NOT NULL COMMENT 'Last Changed'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Parent Tables all the parents are in here';

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parentID` int(10) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `Mobile` varchar(14) NOT NULL,
  `txt` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `Phone` varchar(14) NOT NULL,
  `stateID` int(2) UNSIGNED NOT NULL,
  `zipcode` varchar(9) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `emergencyCnt` varchar(200) DEFAULT NULL COMMENT 'Emergency contact Number',
  `altphone` varchar(15) DEFAULT NULL COMMENT 'Emergency contact telephone',
  `confirmed` int(1) DEFAULT NULL COMMENT 'email confirmed',
  `lastupdated` datetime NOT NULL COMMENT 'last updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parentsplayers`
--

CREATE TABLE `parentsplayers` (
  `parentID` int(10) UNSIGNED DEFAULT NULL,
  `pfname` varchar(100) DEFAULT NULL,
  `plname` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `abrivation` char(2) DEFAULT NULL,
  `zipcode` varchar(9) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `Mobile` varchar(14) DEFAULT NULL,
  `txt` int(1) UNSIGNED DEFAULT NULL,
  `Phone` varchar(14) DEFAULT NULL,
  `emergencyCnt` varchar(200) DEFAULT NULL,
  `altphone` varchar(15) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `playerID` bigint(25) UNSIGNED DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `school` varchar(200) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `shirtsizeID` int(2) DEFAULT NULL,
  `shortsizeID` int(2) DEFAULT NULL,
  `Medical` mediumtext,
  `gender` char(1) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `sinstruction` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parentsports`
--

CREATE TABLE `parentsports` (
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'foreign key for parent',
  `sport_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Foreign key for sport'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='table connects many parents to different sport interest';

-- --------------------------------------------------------

--
-- Table structure for table `parents_players`
--

CREATE TABLE `parents_players` (
  `parent_ID` int(10) UNSIGNED NOT NULL,
  `player_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parent_coaches`
--

CREATE TABLE `parent_coaches` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `coach_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `playerID` bigint(20) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `school` varchar(100) NOT NULL COMMENT 'Player''s School',
  `grade` int(1) NOT NULL COMMENT 'Player''s current Grade',
  `shirtsizeID` int(1) NOT NULL,
  `shortsizeID` int(1) NOT NULL,
  `medical` text NOT NULL COMMENT 'Medical information',
  `gender` char(1) NOT NULL DEFAULT 'N' COMMENT 'Sex',
  `specialInstruction` text NOT NULL COMMENT 'any kind of special instructions for players'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Player''s table connecting with user Information';

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `playerID` bigint(25) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `school` varchar(200) NOT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `shirtsizeID` int(2) NOT NULL DEFAULT '1',
  `shortsizeID` int(2) NOT NULL DEFAULT '1',
  `Medical` mediumtext,
  `gender` char(1) NOT NULL DEFAULT 'M' COMMENT 'Gender of the player',
  `relationship` varchar(100) NOT NULL COMMENT 'Type of Relationship',
  `sinstruction` tinytext COMMENT 'Any Special instructions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `ID` int(6) UNSIGNED NOT NULL,
  `authorID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(35) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT 'Sports is our game, and getting you in the game is our speciality',
  `keywords` varchar(255) DEFAULT 'Sport, Basketball, Baseball, Dodgeball',
  `content` mediumtext NOT NULL,
  `doc_date` date NOT NULL DEFAULT '2002-10-26',
  `catID` int(4) UNSIGNED NOT NULL DEFAULT '1',
  `active` int(1) NOT NULL DEFAULT '0' COMMENT 'Active pages will display'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `partID` int(12) UNSIGNED NOT NULL,
  `catID` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `product` varchar(35) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `QOH` int(4) DEFAULT NULL,
  `minQty` varchar(4) DEFAULT NULL,
  `supPtNum` varchar(25) DEFAULT NULL,
  `supplierID` tinyint(4) UNSIGNED DEFAULT NULL,
  `unit` varchar(5) NOT NULL DEFAULT 'each' COMMENT 'Units of products',
  `Price` decimal(6,2) NOT NULL DEFAULT '20.00',
  `type` varchar(15) NOT NULL DEFAULT 'Service',
  `lastmodified` date NOT NULL DEFAULT '2006-10-26',
  `notes` varchar(200) NOT NULL COMMENT 'comments location'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `regID` bigint(20) NOT NULL COMMENT 'Registration',
  `parentID` bigint(20) NOT NULL COMMENT 'Foreign key for parents table Parent Registering',
  `ClubsID` int(11) NOT NULL COMMENT 'Foreign key for club register',
  `playerID` int(11) NOT NULL COMMENT 'Foreign for the player',
  `seasonID` int(11) NOT NULL COMMENT 'Foreign for season registered',
  `dated` datetime NOT NULL COMMENT 'Date and time they register the child',
  `Notes` mediumtext COMMENT 'any Additional Notes'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Actual registration per season';

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `prog_id` int(10) UNSIGNED NOT NULL,
  `season_id` int(10) UNSIGNED NOT NULL,
  `ateamID` bigint(30) NOT NULL,
  `hteamID` bigint(30) NOT NULL,
  `start` datetime NOT NULL,
  `score` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Team Schedule Attached to ';

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `seasonID` int(12) UNSIGNED NOT NULL,
  `club_id` int(9) DEFAULT NULL COMMENT 'foreign key',
  `seasonname` varchar(200) NOT NULL,
  `describe` mediumtext COMMENT 'Describe the Season',
  `startdate` date NOT NULL COMMENT 'startreg',
  `enddate` date NOT NULL COMMENT 'endreg',
  `latedate` date DEFAULT NULL COMMENT 'Date starting to charging a late',
  `active` smallint(1) UNSIGNED NOT NULL COMMENT 'if season is active',
  `lastupdated` date NOT NULL COMMENT 'when it was changed',
  `Price` decimal(6,2) NOT NULL,
  `latefee` decimal(6,2) NOT NULL COMMENT 'Late fee after the registration date',
  `regplayerinfo` mediumtext COMMENT 'For people who are register this can give them more details about the season location and next step instructions',
  `parameters` varchar(80) DEFAULT NULL COMMENT 'Which players can be apart (GRADE & AGE)',
  `minimal` varchar(80) DEFAULT NULL COMMENT 'bottom level',
  `highest` varchar(80) DEFAULT NULL COMMENT 'highest level',
  `sdate` date NOT NULL COMMENT 'Start of Season',
  `maxnum` int(12) NOT NULL COMMENT 'maximum # of registration',
  `fileapplication` varchar(25) DEFAULT NULL COMMENT 'filepath',
  `gender` varchar(1) NOT NULL COMMENT 'C co-ed, F female M male'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Club Season';

-- --------------------------------------------------------

--
-- Table structure for table `seasonplayers`
--

CREATE TABLE `seasonplayers` (
  `season_id` bigint(25) NOT NULL COMMENT 'link to the season table',
  `player_id` bigint(25) NOT NULL COMMENT 'Link to players',
  `addedon` date NOT NULL COMMENT 'Date Player was Added to the season',
  `paid` int(1) NOT NULL COMMENT 'If they paid this will be a 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `secQuestions`
--

CREATE TABLE `secQuestions` (
  `ID` tinyint(4) UNSIGNED NOT NULL,
  `question` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `secQuestions`
--

INSERT INTO `secQuestions` (`ID`, `question`) VALUES
(1, 'What\'s your mother middle name?'),
(2, 'What is the name of the street you grew up on?'),
(3, 'What is or was your High School Mascot?'),
(4, 'Who\'s your favorite artist?'),
(5, 'What is the name of your favorite song?'),
(1, 'What\'s your mother middle name?'),
(2, 'What is the name of the street you grew up on?'),
(3, 'What is or was your High School Mascot?'),
(4, 'Who\'s your favorite artist?'),
(5, 'What is the name of your favorite song?'),
(1, 'What\'s your mother middle name?'),
(2, 'What is the name of the street you grew up on?'),
(3, 'What is or was your High School Mascot?'),
(4, 'Who\'s your favorite artist?'),
(5, 'What is the name of your favorite song?'),
(1, 'What\'s your mother middle name?'),
(2, 'What is the name of the street you grew up on?'),
(3, 'What is or was your High School Mascot?'),
(4, 'Who\'s your favorite artist?'),
(5, 'What is the name of your favorite song?'),
(1, 'What\'s your mother middle name?'),
(2, 'What is the name of the street you grew up on?'),
(3, 'What is or was your High School Mascot?'),
(4, 'Who\'s your favorite artist?'),
(5, 'What is the name of your favorite song?'),
(1, 'What\'s your mother middle name?'),
(2, 'What is the name of the street you grew up on?'),
(3, 'What is or was your High School Mascot?'),
(4, 'Who\'s your favorite artist?'),
(5, 'What is the name of your favorite song?');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `sizeID` int(2) NOT NULL,
  `Size` varchar(40) NOT NULL COMMENT 'Sizes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`sizeID`, `Size`) VALUES
(1, 'Child Small'),
(2, 'Child Medium'),
(3, 'Child Large'),
(4, 'Child Xsmall'),
(5, 'Adult Small'),
(6, 'Adult Medium'),
(7, 'Adult Large'),
(8, 'Adult XLarge'),
(9, 'Adult XXLarge'),
(10, 'Adult 3XLarge'),
(1, 'Child Small'),
(2, 'Child Medium'),
(3, 'Child Large'),
(4, 'Child Xsmall'),
(5, 'Adult Small'),
(6, 'Adult Medium'),
(7, 'Adult Large'),
(8, 'Adult XLarge'),
(9, 'Adult XXLarge'),
(10, 'Adult 3XLarge'),
(1, 'Child Small'),
(2, 'Child Medium'),
(3, 'Child Large'),
(4, 'Child Xsmall'),
(5, 'Adult Small'),
(6, 'Adult Medium'),
(7, 'Adult Large'),
(8, 'Adult XLarge'),
(9, 'Adult XXLarge'),
(10, 'Adult 3XLarge'),
(1, 'Child Small'),
(2, 'Child Medium'),
(3, 'Child Large'),
(4, 'Child Xsmall'),
(5, 'Adult Small'),
(6, 'Adult Medium'),
(7, 'Adult Large'),
(8, 'Adult XLarge'),
(9, 'Adult XXLarge'),
(10, 'Adult 3XLarge'),
(1, 'Child Small'),
(2, 'Child Medium'),
(3, 'Child Large'),
(4, 'Child Xsmall'),
(5, 'Adult Small'),
(6, 'Adult Medium'),
(7, 'Adult Large'),
(8, 'Adult XLarge'),
(9, 'Adult XXLarge'),
(10, 'Adult 3XLarge'),
(1, 'Child Small'),
(2, 'Child Medium'),
(3, 'Child Large'),
(4, 'Child Xsmall'),
(5, 'Adult Small'),
(6, 'Adult Medium'),
(7, 'Adult Large'),
(8, 'Adult XLarge'),
(9, 'Adult XXLarge'),
(10, 'Adult 3XLarge');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sportID` int(10) UNSIGNED NOT NULL,
  `sport` varchar(200) NOT NULL,
  `lastmodified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sportID`, `sport`, `lastmodified`) VALUES
(1, 'Basketball', '2011-02-26 20:38:39'),
(2, 'Bowling', '2011-02-26 20:38:39'),
(3, 'Biking', '2011-02-26 20:38:39'),
(4, 'Baseball', '2011-02-26 20:38:39'),
(5, 'Boating', '2011-02-26 20:38:39'),
(6, 'Football', '2011-02-26 20:38:39'),
(7, 'Golf', '2011-02-26 20:38:39'),
(8, 'Hockey', '2011-02-26 20:38:39'),
(9, 'Swimming', '2011-02-26 20:38:39'),
(10, 'Soccer', '2011-02-26 20:38:39'),
(11, 'Fishing', '2011-02-26 20:38:39'),
(12, 'Archery', '2011-02-26 20:38:39'),
(13, 'Running', '2011-02-26 20:38:39'),
(14, 'Skiing', '2011-02-26 20:38:39'),
(16, 'Karate', '2011-04-18 08:09:48'),
(17, 'Dodge Ball', '2012-12-30 11:23:19'),
(18, 'Kick-Ball', '2012-12-30 11:23:31'),
(19, 'Volleyball', '2012-12-30 11:23:50'),
(1, 'Basketball', '2011-02-26 20:38:39'),
(2, 'Bowling', '2011-02-26 20:38:39'),
(3, 'Biking', '2011-02-26 20:38:39'),
(4, 'Baseball', '2011-02-26 20:38:39'),
(5, 'Boating', '2011-02-26 20:38:39'),
(6, 'Football', '2011-02-26 20:38:39'),
(7, 'Golf', '2011-02-26 20:38:39'),
(8, 'Hockey', '2011-02-26 20:38:39'),
(9, 'Swimming', '2011-02-26 20:38:39'),
(10, 'Soccer', '2011-02-26 20:38:39'),
(11, 'Fishing', '2011-02-26 20:38:39'),
(12, 'Archery', '2011-02-26 20:38:39'),
(13, 'Running', '2011-02-26 20:38:39'),
(14, 'Skiing', '2011-02-26 20:38:39'),
(16, 'Karate', '2011-04-18 08:09:48'),
(17, 'Dodge Ball', '2012-12-30 11:23:19'),
(18, 'Kick-Ball', '2012-12-30 11:23:31'),
(19, 'Volleyball', '2012-12-30 11:23:50'),
(1, 'Basketball', '2011-02-26 20:38:39'),
(2, 'Bowling', '2011-02-26 20:38:39'),
(3, 'Biking', '2011-02-26 20:38:39'),
(4, 'Baseball', '2011-02-26 20:38:39'),
(5, 'Boating', '2011-02-26 20:38:39'),
(6, 'Football', '2011-02-26 20:38:39'),
(7, 'Golf', '2011-02-26 20:38:39'),
(8, 'Hockey', '2011-02-26 20:38:39'),
(9, 'Swimming', '2011-02-26 20:38:39'),
(10, 'Soccer', '2011-02-26 20:38:39'),
(11, 'Fishing', '2011-02-26 20:38:39'),
(12, 'Archery', '2011-02-26 20:38:39'),
(13, 'Running', '2011-02-26 20:38:39'),
(14, 'Skiing', '2011-02-26 20:38:39'),
(16, 'Karate', '2011-04-18 08:09:48'),
(17, 'Dodge Ball', '2012-12-30 11:23:19'),
(18, 'Kick-Ball', '2012-12-30 11:23:31'),
(19, 'Volleyball', '2012-12-30 11:23:50'),
(1, 'Basketball', '2011-02-26 20:38:39'),
(2, 'Bowling', '2011-02-26 20:38:39'),
(3, 'Biking', '2011-02-26 20:38:39'),
(4, 'Baseball', '2011-02-26 20:38:39'),
(5, 'Boating', '2011-02-26 20:38:39'),
(6, 'Football', '2011-02-26 20:38:39'),
(7, 'Golf', '2011-02-26 20:38:39'),
(8, 'Hockey', '2011-02-26 20:38:39'),
(9, 'Swimming', '2011-02-26 20:38:39'),
(10, 'Soccer', '2011-02-26 20:38:39'),
(11, 'Fishing', '2011-02-26 20:38:39'),
(12, 'Archery', '2011-02-26 20:38:39'),
(13, 'Running', '2011-02-26 20:38:39'),
(14, 'Skiing', '2011-02-26 20:38:39'),
(16, 'Karate', '2011-04-18 08:09:48'),
(17, 'Dodge Ball', '2012-12-30 11:23:19'),
(18, 'Kick-Ball', '2012-12-30 11:23:31'),
(19, 'Volleyball', '2012-12-30 11:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `sportsuggestion`
--

CREATE TABLE `sportsuggestion` (
  `suggestID` int(11) UNSIGNED NOT NULL COMMENT 'Primary',
  `suggestion` varchar(200) NOT NULL COMMENT 'Suggestiong',
  `parentID` int(8) UNSIGNED NOT NULL COMMENT 'foreign key for user',
  `lastmodified` date NOT NULL COMMENT 'Dated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `stateID` smallint(5) UNSIGNED NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT '',
  `abrivation` char(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`stateID`, `state`, `abrivation`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Co', 'DC'),
(11, 'FS OF Micrones', 'FM'),
(12, 'Florida', 'FL'),
(13, 'Georgia', 'GA'),
(14, 'Guam', 'GU'),
(15, 'Hawaii', 'HI'),
(16, 'Idaho', 'ID'),
(17, 'Illinois', 'IL'),
(18, 'Indiana', 'IN'),
(19, 'Iowa', 'IA'),
(20, 'Kansas', 'KS'),
(21, 'Kentucky', 'KY'),
(22, 'Louisiana', 'LA'),
(23, 'Maine', 'ME'),
(24, 'Marshall Islan', 'MH'),
(25, 'Maryland', 'MD'),
(26, 'Massachusetts', 'MA'),
(27, 'Michigan', 'MI'),
(28, 'Minnesota', 'MN'),
(29, 'Mississippi', 'MS'),
(30, 'Missouri', 'MO'),
(31, 'Montana', 'MT'),
(32, 'Nebraska', 'NE'),
(33, 'Nevada', 'NV'),
(34, 'New Hampshire', 'NH'),
(35, 'New Jersey', 'NJ'),
(36, 'New Mexico', 'NM'),
(37, 'New York', 'NY'),
(38, 'North Carolina', 'NC'),
(39, 'North Dakota', 'ND'),
(40, 'N. Mariana Isl', 'MP'),
(41, 'Ohio', 'OH'),
(42, 'Oklahoma', 'OK'),
(43, 'Oregon', 'OR'),
(44, 'Palau', 'PW'),
(45, 'Pennsylvania', 'PA'),
(46, 'Puerto Rico', 'PR'),
(47, 'Rhode Island', 'RI'),
(48, 'South Carolina', 'SC'),
(49, 'South Dakota', 'SD'),
(50, 'Tennessee', 'TN'),
(51, 'Texas', 'TX'),
(52, 'Utah', 'UT'),
(53, 'Vermont', 'VT'),
(54, 'Virgin Islands', 'VI'),
(55, 'Virginia', 'VA'),
(56, 'Washington', 'WA'),
(57, 'West Virginia', 'WV'),
(58, 'Wisconsin', 'WI'),
(59, 'Wyoming', 'WY'),
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Co', 'DC'),
(11, 'FS OF Micrones', 'FM'),
(12, 'Florida', 'FL'),
(13, 'Georgia', 'GA'),
(14, 'Guam', 'GU'),
(15, 'Hawaii', 'HI'),
(16, 'Idaho', 'ID'),
(17, 'Illinois', 'IL'),
(18, 'Indiana', 'IN'),
(19, 'Iowa', 'IA'),
(20, 'Kansas', 'KS'),
(21, 'Kentucky', 'KY'),
(22, 'Louisiana', 'LA'),
(23, 'Maine', 'ME'),
(24, 'Marshall Islan', 'MH'),
(25, 'Maryland', 'MD'),
(26, 'Massachusetts', 'MA'),
(27, 'Michigan', 'MI'),
(28, 'Minnesota', 'MN'),
(29, 'Mississippi', 'MS'),
(30, 'Missouri', 'MO'),
(31, 'Montana', 'MT'),
(32, 'Nebraska', 'NE'),
(33, 'Nevada', 'NV'),
(34, 'New Hampshire', 'NH'),
(35, 'New Jersey', 'NJ'),
(36, 'New Mexico', 'NM'),
(37, 'New York', 'NY'),
(38, 'North Carolina', 'NC'),
(39, 'North Dakota', 'ND'),
(40, 'N. Mariana Isl', 'MP'),
(41, 'Ohio', 'OH'),
(42, 'Oklahoma', 'OK'),
(43, 'Oregon', 'OR'),
(44, 'Palau', 'PW'),
(45, 'Pennsylvania', 'PA'),
(46, 'Puerto Rico', 'PR'),
(47, 'Rhode Island', 'RI'),
(48, 'South Carolina', 'SC'),
(49, 'South Dakota', 'SD'),
(50, 'Tennessee', 'TN'),
(51, 'Texas', 'TX'),
(52, 'Utah', 'UT'),
(53, 'Vermont', 'VT'),
(54, 'Virgin Islands', 'VI'),
(55, 'Virginia', 'VA'),
(56, 'Washington', 'WA'),
(57, 'West Virginia', 'WV'),
(58, 'Wisconsin', 'WI'),
(59, 'Wyoming', 'WY'),
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Co', 'DC'),
(11, 'FS OF Micrones', 'FM'),
(12, 'Florida', 'FL'),
(13, 'Georgia', 'GA'),
(14, 'Guam', 'GU'),
(15, 'Hawaii', 'HI'),
(16, 'Idaho', 'ID'),
(17, 'Illinois', 'IL'),
(18, 'Indiana', 'IN'),
(19, 'Iowa', 'IA'),
(20, 'Kansas', 'KS'),
(21, 'Kentucky', 'KY'),
(22, 'Louisiana', 'LA'),
(23, 'Maine', 'ME'),
(24, 'Marshall Islan', 'MH'),
(25, 'Maryland', 'MD'),
(26, 'Massachusetts', 'MA'),
(27, 'Michigan', 'MI'),
(28, 'Minnesota', 'MN'),
(29, 'Mississippi', 'MS'),
(30, 'Missouri', 'MO'),
(31, 'Montana', 'MT'),
(32, 'Nebraska', 'NE'),
(33, 'Nevada', 'NV'),
(34, 'New Hampshire', 'NH'),
(35, 'New Jersey', 'NJ'),
(36, 'New Mexico', 'NM'),
(37, 'New York', 'NY'),
(38, 'North Carolina', 'NC'),
(39, 'North Dakota', 'ND'),
(40, 'N. Mariana Isl', 'MP'),
(41, 'Ohio', 'OH'),
(42, 'Oklahoma', 'OK'),
(43, 'Oregon', 'OR'),
(44, 'Palau', 'PW'),
(45, 'Pennsylvania', 'PA'),
(46, 'Puerto Rico', 'PR'),
(47, 'Rhode Island', 'RI'),
(48, 'South Carolina', 'SC'),
(49, 'South Dakota', 'SD'),
(50, 'Tennessee', 'TN'),
(51, 'Texas', 'TX'),
(52, 'Utah', 'UT'),
(53, 'Vermont', 'VT'),
(54, 'Virgin Islands', 'VI'),
(55, 'Virginia', 'VA'),
(56, 'Washington', 'WA'),
(57, 'West Virginia', 'WV'),
(58, 'Wisconsin', 'WI'),
(59, 'Wyoming', 'WY'),
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'American Samoa', 'AS'),
(4, 'Arizona', 'AZ'),
(5, 'Arkansas', 'AR'),
(6, 'California', 'CA'),
(7, 'Colorado', 'CO'),
(8, 'Connecticut', 'CT'),
(9, 'Delaware', 'DE'),
(10, 'District of Co', 'DC'),
(11, 'FS OF Micrones', 'FM'),
(12, 'Florida', 'FL'),
(13, 'Georgia', 'GA'),
(14, 'Guam', 'GU'),
(15, 'Hawaii', 'HI'),
(16, 'Idaho', 'ID'),
(17, 'Illinois', 'IL'),
(18, 'Indiana', 'IN'),
(19, 'Iowa', 'IA'),
(20, 'Kansas', 'KS'),
(21, 'Kentucky', 'KY'),
(22, 'Louisiana', 'LA'),
(23, 'Maine', 'ME'),
(24, 'Marshall Islan', 'MH'),
(25, 'Maryland', 'MD'),
(26, 'Massachusetts', 'MA'),
(27, 'Michigan', 'MI'),
(28, 'Minnesota', 'MN'),
(29, 'Mississippi', 'MS'),
(30, 'Missouri', 'MO'),
(31, 'Montana', 'MT'),
(32, 'Nebraska', 'NE'),
(33, 'Nevada', 'NV'),
(34, 'New Hampshire', 'NH'),
(35, 'New Jersey', 'NJ'),
(36, 'New Mexico', 'NM'),
(37, 'New York', 'NY'),
(38, 'North Carolina', 'NC'),
(39, 'North Dakota', 'ND'),
(40, 'N. Mariana Isl', 'MP'),
(41, 'Ohio', 'OH'),
(42, 'Oklahoma', 'OK'),
(43, 'Oregon', 'OR'),
(44, 'Palau', 'PW'),
(45, 'Pennsylvania', 'PA'),
(46, 'Puerto Rico', 'PR'),
(47, 'Rhode Island', 'RI'),
(48, 'South Carolina', 'SC'),
(49, 'South Dakota', 'SD'),
(50, 'Tennessee', 'TN'),
(51, 'Texas', 'TX'),
(52, 'Utah', 'UT'),
(53, 'Vermont', 'VT'),
(54, 'Virgin Islands', 'VI'),
(55, 'Virginia', 'VA'),
(56, 'Washington', 'WA'),
(57, 'West Virginia', 'WV'),
(58, 'Wisconsin', 'WI'),
(59, 'Wyoming', 'WY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
