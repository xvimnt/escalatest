-- put in ./dump directory 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `Person` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Person` (`id`, `name`) VALUES
(1, 'William'),
(2, 'Marc'),
(3, 'John');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `createUser` varchar(45) NOT NULL,
  `createDate` datetime NOT NULL,
  `modifiedUser` varchar(45) NOT NULL,
  `modifiedDate` datetime NOT NULL,

  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`roleId`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `roles` (`roleId`, `roleName`, `status`) VALUES
(1, 'admin', 1),
(2, 'user', 1),
(3, 'guest', 1);

INSERT INTO `user` (`userId`, `roleId`, `user_name`, `password`, `firstName`, `lastName`, `status`, `createUser`, `createDate`, `modifiedUser`, `modifiedDate`) VALUES 
(1, 1, 'admin', 'admin', 'admin', 'admin', '1', 'admin', '2019-01-01 00:00:00', 'admin', '2019-01-01 00:00:00'),
(2, 2, 'user', 'user', 'user', 'user', '1', 'admin', '2019-01-01 00:00:00', 'admin', '2019-01-01 00:00:00'),
(3, 3, 'guest', 'guest', 'guest', 'guest', '1', 'admin', '2019-01-01 00:00:00', 'admin', '2019-01-01 00:00:00');

