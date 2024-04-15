BEGIN TRANSACTION;

CREATE TABLE state (
	state_abbreviation char(2) NOT NULL,
	state_name varchar(50) NOT NULL,
	CONSTRAINT PK_state PRIMARY KEY(state_abbreviation),
	CONSTRAINT UQ_state_name UNIQUE(state_name)
);

CREATE TABLE designation (
	designation_id serial PRIMARY KEY,
	designation_name varchar(50) NOT NULL
	CONSTRAINT CHK_designation_name CHECK (designation_name IN ('National Park',
													'National Monument', 'National Battlefield',
													 'National Battlefield Park', 'National Battlefield Site',
													 'National Historical Park', 'National Historic Site',
													 'National Lakeshore', 'National Memorial', 'National Military Park', 'Other',
													 'National Parkway', 'National Preserve', 'National Recreation Area',
													 'National Reserve', 'National River', 'National Scenic Trail',
													 'National Seashore', 'National Wild and Scenic River', 'International Historic Site'))
);

CREATE TABLE site (
	site_id serial,
	site_name varchar(100) NOT NULL,
	nps_call_letters varchar(4) NOT NULL,
	date_established date NOT NULL,
	area_km2 numeric(6,1), --NOT NULL,
	has_camping boolean NOT NULL,
	has_junior_ranger boolean,
	CONSTRAINT PK_site PRIMARY KEY (site_id),
	CONSTRAINT UQ_site_name UNIQUE (site_name)
);

CREATE TABLE designation_state (
	designation_id int NOT NULL,
	state_abbreviation char(2) NOT NULL,
	CONSTRAINT PK_designation_state PRIMARY KEY(state_abbreviation, designation_id)
);

CREATE TABLE site_state (
	site_id int NOT NULL,
	state_abbreviation char(2) NOT NULL,
	CONSTRAINT PK_site_state PRIMARY KEY(site_id, state_abbreviation)
);

CREATE TABLE designation_site (
	site_id int NOT NULL REFERENCES site(site_id),
	designation_id int NOT NULL,
	CONSTRAINT PK_designation_site PRIMARY KEY(site_id, designation_id)
);


COMMIT TRANSACTION;
