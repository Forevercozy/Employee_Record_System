

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `sharp_emp` (
  `id` int(11) NOT NULL,
  `employee_id` text DEFAULT NULL,
  `first_name` text NOT NULL,
  `middle_name` text DEFAULT NULL,
  `last_name` text NOT NULL,
  `phone` int(11) NOT NULL,
  `employee_image` text NOT NULL,
  `id_type` text NOT NULL,
  `id_number` text NOT NULL,
  `id_card_image` text NOT NULL,
  `residence_address` text NOT NULL,
  `residence_location` text NOT NULL,
  `residence_direction` text NOT NULL,
  `residence_gps` text NOT NULL,
  `next_of_kin` text NOT NULL,
  `relationship` text NOT NULL,
  `phone_of_kin` text NOT NULL,
  `kin_residence` text NOT NULL,
  `kin_residence_direction` text NOT NULL,
  `date_employed` date NOT NULL,
  `job_type` text NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
--

INSERT INTO `sharp_emp` (`id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `phone`, `employee_image`, `id_type`, `id_number`, `id_card_image`, `residence_address`, `residence_location`, `residence_direction`, `residence_gps`, `next_of_kin`, `relationship`, `phone_of_kin`, `kin_residence`, `kin_residence_direction`, `date_employed`, `job_type`, `status`) VALUES
(1, '1', 'sujon', '', 'kumar', 516421320, 'GwNjRCHTUcA57az_lo.png', 'Voter\'s', '115151', 'NYwCLstOrlaG3JK_Capture.JPG', 'Kolkata', 'Kolkata', 'Indian', 'Kolkata', 'sujon kumar', 'n/a', '45454355335', 'Kolkata', 'Kolkata', '2020-08-26', 'manager', 'employee');

-- --------------------------------------------------------


CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `accounttype` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `accounttype`) VALUES
(1, 'Maxwell', 'Morrison', 'xxx2xy', '10a55271c201e41913764ff95b33248b', 'Admin'),
(3, 'Maxwell', 'Morrison', 'admins', '4a7f064e93e8f12f3d364413af1d3b8c', 'Admin');


ALTER TABLE `sharp_emp`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);




ALTER TABLE `sharp_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

