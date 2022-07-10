-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `userID` varchar(255) NOT NULL,
  `discordName` varchar(255) NOT NULL,
  `discordID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `discordID` (`discordID`),
  ADD UNIQUE KEY `discordName` (`discordName`),
  ADD UNIQUE KEY `username` (`userID`);

ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
