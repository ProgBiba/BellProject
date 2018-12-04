CREATE TABLE IF NOT EXISTS Organization (
    id         INTEGER  PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(50)  NOT NULL,
    full_name  VARCHAR(100) UNIQUE NOT NULL,
    inn        INTEGER UNIQUE NOT NULL,
    kpp        INTEGER UNIQUE NOT NULL,
    address    VARCHAR(50) NOT NULL,
    phone      BIGINT UNIQUE,
    is_active  TINYINT(1)
);

CREATE TABLE IF NOT EXISTS Office (
    id            INTEGER PRIMARY KEY AUTO_INCREMENT,
    org_id        INTEGER NOT NULL,
    name          VARCHAR(50) UNIQUE,
    phone         BIGINT UNIQUE,
    is_active     TINYINT(1),
    address       VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Employee (
    id               INTEGER PRIMARY KEY AUTO_INCREMENT,
    office_id        INTEGER NOT NULL,
    first_name       VARCHAR(50) NOT NULL,
    last_name        VARCHAR(50),
    second_name      VARCHAR(50),
    middle_name      VARCHAR(50),
    position         VARCHAR(50) NOT NULL,
    phone            BIGINT UNIQUE,
    doc_code         INTEGER,
    doc_date         DATE,
    doc_number       INTEGER,
    citizenship_code INTEGER,
    is_identified    TINYINT(1)
);

CREATE TABLE IF NOT EXISTS Citizenship (
    id              INTEGER PRIMARY KEY AUTO_INCREMENT,
    code            INTEGER UNIQUE,
    name            VARCHAR(50) UNIQUE
);

CREATE TABLE IF NOT EXISTS Document (
    id              INTEGER PRIMARY KEY AUTO_INCREMENT,
    code            INTEGER UNIQUE,
    name            VARCHAR(50) UNIQUE
);

CREATE INDEX UX_Organization_Full_Name ON Organization (full_name);
CREATE INDEX UX_Organization_INN ON Organization (inn);
CREATE INDEX UX_Organization_KPP ON Organization (kpp);
CREATE INDEX UX_Organization_Phone ON Organization (phone);

CREATE INDEX IX_Organization_Name ON Organization (name);
CREATE INDEX IX_Organization_Address ON Organization (address);
CREATE INDEX IX_Organization_Active ON Organization (is_active);


CREATE INDEX UX_Employee_Phone ON Employee (phone);

CREATE INDEX IX_Employee_First_Name ON Employee (first_name);
CREATE INDEX IX_Employee_Second_Name ON Employee (second_name);
CREATE INDEX IX_Employee_Middle_Name ON Employee (middle_name);
CREATE INDEX IX_Employee_Position ON Employee (position);
CREATE INDEX IX_Employee_Doc_Name ON Employee (doc_code);
CREATE INDEX IX_Employee_Doc_Date ON Employee (doc_date);
CREATE INDEX IX_Employee_Doc_Number ON Employee (doc_number);
CREATE INDEX IX_Employee_Citizenship_Name ON Employee (citizenship_code);
CREATE INDEX IX_Employee_Is_Identified ON Employee (is_identified);

ALTER TABLE Employee ADD FOREIGN KEY (doc_code) REFERENCES Document(code);
ALTER TABLE Employee ADD FOREIGN KEY (citizenship_code) REFERENCES Citizenship(code);
ALTER TABLE Employee ADD FOREIGN KEY (office_id) REFERENCES Office(id);


CREATE INDEX UX_Office_Phone ON Office (phone);
CREATE INDEX UX_Office_Name ON Office (name);

CREATE INDEX IX_Office_Address ON Office (address);

ALTER TABLE Office ADD FOREIGN KEY (org_id) REFERENCES Organization(id);
