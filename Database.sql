CREATE DATABASE IF NOT EXISTS clinic;
USE clinic;

CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(200)
);

CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100)
);

CREATE TABLE Prescriptions (
    PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    Medicine VARCHAR(150) NOT NULL,
    DateIssued DATE NOT NULL,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID) ON DELETE CASCADE,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID) ON DELETE CASCADE
);

insert into Patients(Name,Age,Address) values
('Jerome Ventura', 69, 'Rosario'),
('Dexter Yponla', 75, 'Lipa City'),
('Cassey Angel', 96, 'Lipa City'),
('Ronalyn Abuyan', 123, 'Lipa City'),
('Jake Anchoy', 75, 'Lipa City');

insert into Doctors (Name, Specialty) values
('Dr. Kwak kwak','Neurosurgeon'),
('Dr. Juan','Pediatrics'),
('Dr. Pedro','Cardiology');

select * from Prescriptions;

