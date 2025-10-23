DROP TABLE IF EXISTS work;
DROP TABLE IF EXISTS specialty;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS member;

-- TASK 1 A)
CREATE TABLE project
(
	code VARCHAR(5) NOT NULL,
    name VARCHAR(20) NOT NULL,
    description VARCHAR(50) NOT NULL,
    category TEXT NOT NULL,
    duration INT NOT NULL,
    CONSTRAINT projectPK PRIMARY KEY(code),
    CONSTRAINT categoryCHK CHECK (category IN ('Web app', 'Mobile app', 'Others')),
    CONSTRAINT durationCHK CHECK (duration > 0 )
);

CREATE TABLE member
(
	email VARCHAR(40) NOT NULL,
    name VARCHAR(30) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    CONSTRAINT memberPK PRIMARY KEY(email),
    CONSTRAINT genderCHK CHECK (gender IN ('M', 'F'))
);

CREATE TABLE work
(
	project VARCHAR(5) NOT NULL,
    member VARCHAR(40) NOT NULL,
    hours INT NOT NULL,
    CONSTRAINT workPK PRIMARY KEY (project, member),
    CONSTRAINT workprojectFK FOREIGN KEY (project) REFERENCES project(code),
	CONSTRAINT workmemberFK FOREIGN KEY (member) REFERENCES member(email),
    CONSTRAINT hoursCHK CHECK (hours >= 0 )
);

CREATE TABLE specialty
(
	member VARCHAR(40) NOT NULL,
    topic VARCHAR(20) NOT NULL,
    CONSTRAINT specialtyPK PRIMARY KEY (member, topic),
	CONSTRAINT specialtymemberFK FOREIGN KEY (member) REFERENCES member(email)
);

-- TASK 1 B)
-- Add the coordinator column
ALTER TABLE project
ADD coordinator VARCHAR(40);

-- Add the foreign key constraint with ON UPDATE CASCADE
ALTER TABLE project
ADD CONSTRAINT coordinatorFK
FOREIGN KEY (coordinator) REFERENCES member(email)
ON UPDATE CASCADE;

-- Insert into members
INSERT INTO member (email, name, gender) VALUES
('alice@example.com', 'Alice Tan', 'F'),
('bob@example.com', 'Bob Lim', 'M'),
('charlie@example.com', 'Charlie Goh', 'M');

-- Insert into project (with coordinator)
INSERT INTO project (code, name, description, category, duration, coordinator) VALUES
('P001', 'Smart Campus', 'IoT sensors across campus', 'Web app', 12, 'alice@example.com'),
('P002', 'Mobile Attendance', 'An app to track student attendance', 'Mobile app', 6, 'bob@example.com'),
('P003', 'Health Tracker', 'Monitors vital signs remotely', 'Others', 9, NULL); -- no coordinator

-- Insert into work (members contributing to the project)
INSERT INTO work (project, member, hours) VALUES
('P001', 'alice@example.com', 20),
('P001', 'charlie@example.com', 15),
('P002', 'bob@example.com', 30),
('P003', 'charlie@example.com', 25);

-- Insert into specialty (member-topic pairings)
INSERT INTO specialty (member, topic) VALUES
('alice@example.com', 'IoT'),
('bob@example.com', 'Android Development'),
('charlie@example.com', 'Data Analytics');

SELECT * FROM project;
SELECT * FROM member;
SELECT * FROM work;
SELECT * FROM specialty;