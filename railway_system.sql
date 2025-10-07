--To create database:

CREATE DATABASE railway_system;
USE railway_system;


--Stations  table:

CREATE TABLE Stations (
  station_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  city VARCHAR(100)
);


--Track table:

CREATE TABLE Tracks (
  track_id INT PRIMARY KEY AUTO_INCREMENT,
  from_id INT,
  to_id INT,
  FOREIGN KEY (from_id) REFERENCES Stations(station_id),
  FOREIGN KEY (to_id) REFERENCES Stations(station_id)
);


--Trains table:

CREATE TABLE Trains (
  train_id INT PRIMARY KEY AUTO_INCREMENT,
  train_name VARCHAR(100) NOT NULL
);


--Trainschedule table:

CREATE TABLE TrainSchedules (
  schedule_id INT PRIMARY KEY AUTO_INCREMENT,
  train_id INT,
  station_id INT,
  arrival_time TIME,
  departure_time TIME,
  sequence_no INT,
  FOREIGN KEY (train_id) REFERENCES Trains(train_id),
  FOREIGN KEY (station_id) REFERENCES Stations(station_id)
);


--Booking table:

CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY AUTO_INCREMENT,
  train_id INT,
  travel_date DATE,
  from_id INT,
  to_id INT,
  coach VARCHAR(10),
  seat_no VARCHAR(10),
  passenger_name VARCHAR(100),
  FOREIGN KEY (train_id) REFERENCES Trains(train_id),
  FOREIGN KEY (from_id) REFERENCES Stations(station_id),
  FOREIGN KEY (to_id) REFERENCES Stations(station_id)
);


--To insert Data:

-- Stations
INSERT INTO Stations (name, city) VALUES
('Jenin ', 'Jerusalem'),
('Ramallah Station', 'Ramallah'),
('Nablus Station', 'Nablus');

-- Tracks
INSERT INTO Tracks (from_id, to_id) VALUES
(1, 2),
(2, 3);

-- Trains
INSERT INTO Trains (train_name) VALUES
(' Train1'),

-- TrainSchedules
INSERT INTO TrainSchedules (train_id, station_id, arrival_time, departure_time, sequence_no) VALUES
(1, 1, NULL, '08:00:00', 1),
(1, 2, '08:30:00', '08:40:00', 2),
(1, 3, '09:20:00', NULL, 3);

-- Bookings
INSERT INTO Bookings (train_id, travel_date, from_id, to_id, coach, seat_no, passenger_name)
VALUES
(1, '2025-10-10', 1, 3, 'A', '12', 'Wafaa Jawad');

