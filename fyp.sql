SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: 'u1762963'

-- Table strucutre

CREATE TABLE `consultation` (
  `id` int(10) UNSIGNED NOT NULL,
  `consultant` int(10) UNSIGNED NOT NULL,
  `consultee_given_name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `submission` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `topic` varchar(40) NOT NULL,
  `institution` varchar(60) NOT NULL,
  `title` varchar(75) NOT NULL,
  `body` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `contact_info` varchar(50) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `consultant` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `speciality` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data 

INSERT INTO `consultation` (`id`, `consultant`, `consultee_given_name`, `date`, `time`) VALUES
(1, 1, 'Andy Bell', '2021-03-31', '12:00'), 
(2, 3, 'Sarah Bellingham', '2021-04-01', '14:00'), 
(3, 2, 'Brody Cannavaro', '2021-04-08', '14:00'), 
(4, 7, 'Gem Archer', '2021-04-12', '14:00'), 
(5, 4, 'Belly Wickham', '2021-04-17', '12:00'), 
(6, 4, 'Jessica Jackson', '2021-04-18', '14:00'), 
(7, 6, 'Belfort Joshtingham', '2021-04-26', '12:00'), 
(8, 7, 'Lewis Released', '2021-05-02', '12:00'), 
(9, 7, 'Dominic Foston', '2021-05-02', '14:00'), 
(10, 5, 'Fourth Best', '2021-05-05', '14:00');

INSERT INTO `submission` (`id`, `name`, `topic`, `institution`, `title`, `body`, `date`, `time`, `contact_info`, `comments`) VALUES
(1, 'Noel', 'Anxiety', 'University of Huddersfield', 'Struggling with Attendance', 'lorem ipsum',		 		'2021-03-31', '13:16', '07645647322', ''), 
(2, 'Liam', 'Depression', 'University of Chester', 'cant motivate myself.', 'lorem ipsum',				 		'2021-04-10', '02:47', 'liamg123456789@gmail.com', ''),
(3, 'Andy', 'Depression', 'University of Huddersfield', 'Help Please', 'lorem ipsum', 							'2021-04-14', '13:41', '07445632134', ''),
(4, 'Gem', 'Stress', 'University of Derby', 'Anyone just always stressed?', 'lorem ipsum', 				 		'2021-04-17', '15:49', '07838596073', ''),
(5, 'Paul', 'Anxiety', 'University of Leeds', 'I cant do group work', 'lorem ipsum', 					 		'2021-04-24', '19:10', 'paulabelcaine@outlook.co.uk', ''),
(6, 'Alan', 'Other', 'University of Huddersfield', 'I dont enjoy my course.', 'lorem ipsum', 					'2021-04-30', '04:00', '', ''),
(7, 'Sarah', 'Stress', 'Lancaster University', 'Attendance', 'lorem ipsum', 									'2021-05-05', '08:42', '', ''),
(8, 'Jessica', 'Anxiety', 'University of Huddersfield', 'anyone else?', 'lorem ipsum', 							'2021-05-06', '08:21', '', ''),
(9, 'Jane', 'Anxiety', 'University of Derby', 'anxious', 'lorem ipsum', 										'2021-05-06', '11:48', 'u1345789@unimail.der.ac.uk', ''),
(10, 'Noella', 'Other', 'University of Huddersfield', 'payments not come through...', 'lorem ipsum', 			'2021-05-23', '06:46', '', ''),
(11, 'Freddie', 'Anxiety', 'University of Reading', 'Struggling', 'lorem ipsum', 								'2021-06-12', '20:29', '0161 677 8213', ''),
(12, 'Phil', 'Anxiety', 'University of Huddersfield', 'Just need someone to talk to.', 'lorem ipsum', 			'2021-06-17', '23:31', '', ''),
(13, 'Raheem', 'Other', 'University of Manchester', 'international struggles', 'lorem ipsum',				 	'2021-06-22', '23:41', '07598584393', ''),
(14, 'Harriet', 'Depression', 'University of Huddersfield', 'constantly bed bound. help me.', 'lorem ipsum', 	'2021-06-23', '20:27', '', ''),
(15, 'Alex', 'Stress', 'University of Huddersfield', 'Should I take a gap year?', 'lorem ipsum', 				'2021-06-28', '20:41', 'alexemail4567@gmail.com', ''),
(16, 'Mohamed', 'Anxiety', 'University of Reading', 'Struggling with Attendance', 'lorem ipsum', 				'2021-06-29', '01:50', '07444499012', ''),
(17, 'Sesso', 'Stress', 'University of Derby', 'Parents are not supportive.', 'lorem ipsum', 					'2021-07-01', '10:45', '', ''),
(18, 'Gibbo', 'Depression', 'Lancaster University', 'just want to end it all.', 'lorem ipsum', 					'2021-07-01', '14:35', '07645647323', ''),
(19, 'Maria', 'Anxiety', 'University of Chester', 'this illness is ruining my studies', 'lorem ipsum', 			'2021-08-02', '19:42', '', ''),
(20, 'Mark', 'Other', 'University of Huddersfield', 'my tutor is my mums boyfriend....', 'lorem ipsum', 		'2021-08-14', '20:41', '07596021110', '');

INSERT INTO `consultant` (`id`, `first_name`, `last_name`, `dob`, `speciality`) VALUES
(1, 'Daniel', 'Shepherd', '1997-07-11', 'Anxiety'),
(2, 'Hady', 'Smith', '1987-01-01', 'Anxiety'),
(3, 'Victoria', 'Bamford', '1969-10-20', 'Depression'),
(4, 'Laurie', 'Nicholson', '1989-07-26', 'Stress'),
(5, 'Harriett', 'Berrow', '1994-05-30', 'Depression'),
(6, 'Peter', 'Hart', '1991-02-16', 'Anxiety'),
(7, 'Paula', 'Fulhouz', '1976-01-19', 'Stress');

-- Indexes

ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk__consultation__consultant` (`consultant`);
  
ALTER TABLE `consultant`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `submission`
  ADD PRIMARY KEY (`id`);
  
-- AUTO_INCREMENT

ALTER TABLE `consultation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
  
ALTER TABLE `consultant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `submission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;  
  
-- Constraints

ALTER TABLE `consultation`
  ADD CONSTRAINT `fk__consultation__consultant` FOREIGN KEY (`consultant`) REFERENCES `consultant` (`id`);
  
  