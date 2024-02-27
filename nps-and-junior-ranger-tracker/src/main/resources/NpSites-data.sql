START TRANSACTION;

DROP TABLE IF EXISTS site_state, site, park, monument, state CASCADE;

CREATE TABLE state (
	state_abbreviation char(2) NOT NULL,
	state_name varchar(50) NOT NULL,
	CONSTRAINT PK_state PRIMARY KEY(state_abbreviation),
	CONSTRAINT UQ_state_name UNIQUE(state_name)
);


CREATE TABLE site (
	site_id serial,
	site_name varchar(100) NOT NULL,
	site_type varchar(50),
	date_established date NOT NULL,
	CONSTRAINT PK_site PRIMARY KEY (site_id),
	CONSTRAINT UQ_site_name UNIQUE (site_name),
	CONSTRAINT CHK_site_type CHECK (site_type IS NULL 
									OR site_type IN ('Park', 
													'Monument', 'Battlefield', 
													 'Battlefield Park', 'Battlefield Site', 
													 'Historical Park', 'Historic Site', 
													 'Lakeshore', 'Memorial', 'Military Park', 
													 'Parkway', 'Preserve', 'Recreation Area', 
													 'Reserve', 'River', 'Scenic River','Scenic Trail', 
													 'Seashore', 'Wild & Scenic River', 'Wild River'))
);

CREATE TABLE park (
	park_id int NOT NULL REFERENCES site(site_id),
	park_name varchar(50) NOT NULL,
	date_established date NOT NULL,
	area numeric(6,1) NOT NULL,
	has_camping boolean NOT NULL,
	CONSTRAINT PK_park PRIMARY KEY(park_id),
	CONSTRAINT UQ_park_name UNIQUE(park_name)
);

-- CREATE TABLE monument (
-- 	monument_id int NOT NULL,
-- 	monument_name varchar(50) NOT NULL,
-- );

CREATE TABLE site_state (
	site_id int NOT NULL,
	state_abbreviation char(2) NOT NULL,
	CONSTRAINT PK_site_state PRIMARY KEY(site_id, state_abbreviation)
);

-- insert data

-- data collected February 10, 2021
-- state name, abbrev, capital, population (2019 estimate), area (sq km, 2018 data) - https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States
-- state sales tax (base) - https://en.wikipedia.org/wiki/Sales_taxes_in_the_United_States
-- state nickname (first official nickname only, NULL if no official nickname) - https://en.wikipedia.org/wiki/List_of_U.S._state_and_territory_nicknames
-- census region - https://en.wikipedia.org/wiki/List_of_regions_of_the_United_States#Census_Bureau-designated_regions_and_divisions
INSERT INTO state (state_abbreviation, state_name) VALUES ('AL', 'Alabama');
INSERT INTO state (state_abbreviation, state_name) VALUES ('AK', 'Alaska');
INSERT INTO state (state_abbreviation, state_name) VALUES ('AS', 'American Samoa');
INSERT INTO state (state_abbreviation, state_name) VALUES ('AZ', 'Arizona');
INSERT INTO state (state_abbreviation, state_name) VALUES ('AR', 'Arkansas');
INSERT INTO state (state_abbreviation, state_name) VALUES ('CA', 'California');
INSERT INTO state (state_abbreviation, state_name) VALUES ('CO', 'Colorado');
INSERT INTO state (state_abbreviation, state_name) VALUES ('CT', 'Connecticut');
INSERT INTO state (state_abbreviation, state_name) VALUES ('DE', 'Delaware');
INSERT INTO state (state_abbreviation, state_name) VALUES ('DC', 'District of Columbia');
INSERT INTO state (state_abbreviation, state_name) VALUES ('FL', 'Florida');
INSERT INTO state (state_abbreviation, state_name) VALUES ('GA', 'Georgia');
INSERT INTO state (state_abbreviation, state_name) VALUES ('GU', 'Guam');
INSERT INTO state (state_abbreviation, state_name) VALUES ('HI', 'Hawaii');
INSERT INTO state (state_abbreviation, state_name) VALUES ('ID', 'Idaho');
INSERT INTO state (state_abbreviation, state_name) VALUES ('IL', 'Illinois');
INSERT INTO state (state_abbreviation, state_name) VALUES ('IN', 'Indiana');
INSERT INTO state (state_abbreviation, state_name) VALUES ('IA', 'Iowa');
INSERT INTO state (state_abbreviation, state_name) VALUES ('KS', 'Kansas');
INSERT INTO state (state_abbreviation, state_name) VALUES ('KY', 'Kentucky');
INSERT INTO state (state_abbreviation, state_name) VALUES ('LA', 'Louisiana');
INSERT INTO state (state_abbreviation, state_name) VALUES ('ME', 'Maine');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MD', 'Maryland');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MA', 'Massachusetts');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MI', 'Michigan');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MN', 'Minnesota');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MS', 'Mississippi');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MO', 'Missouri');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MT', 'Montana');
INSERT INTO state (state_abbreviation, state_name) VALUES ('NE', 'Nebraska');
INSERT INTO state (state_abbreviation, state_name) VALUES ('NV', 'Nevada');
INSERT INTO state (state_abbreviation, state_name) VALUES ('NH', 'New Hampshire');
INSERT INTO state (state_abbreviation, state_name) VALUES ('NJ', 'New Jersey');
INSERT INTO state (state_abbreviation, state_name) VALUES ('NM', 'New Mexico');
INSERT INTO state (state_abbreviation, state_name) VALUES ('NY', 'New York');
INSERT INTO state (state_abbreviation, state_name) VALUES ('NC', 'North Carolina');
INSERT INTO state (state_abbreviation, state_name) VALUES ('ND', 'North Dakota');
INSERT INTO state (state_abbreviation, state_name) VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO state (state_abbreviation, state_name) VALUES ('OH', 'Ohio');
INSERT INTO state (state_abbreviation, state_name) VALUES ('OK', 'Oklahoma');
INSERT INTO state (state_abbreviation, state_name) VALUES ('OR', 'Oregon');
INSERT INTO state (state_abbreviation, state_name) VALUES ('PA', 'Pennsylvania');
INSERT INTO state (state_abbreviation, state_name) VALUES ('PR', 'Puerto Rico');
INSERT INTO state (state_abbreviation, state_name) VALUES ('RI', 'Rhode Island');
INSERT INTO state (state_abbreviation, state_name) VALUES ('SC', 'South Carolina');
INSERT INTO state (state_abbreviation, state_name) VALUES ('SD', 'South Dakota');
INSERT INTO state (state_abbreviation, state_name) VALUES ('TN', 'Tennessee');
INSERT INTO state (state_abbreviation, state_name) VALUES ('TX', 'Texas');
INSERT INTO state (state_abbreviation, state_name) VALUES ('VI', 'U.S. Virgin Islands');
INSERT INTO state (state_abbreviation, state_name) VALUES ('UT', 'Utah');
INSERT INTO state (state_abbreviation, state_name) VALUES ('VT', 'Vermont');
INSERT INTO state (state_abbreviation, state_name) VALUES ('VA', 'Virginia');
INSERT INTO state (state_abbreviation, state_name) VALUES ('WA', 'Washington');
INSERT INTO state (state_abbreviation, state_name) VALUES ('WV', 'West Virginia');
INSERT INTO state (state_abbreviation, state_name) VALUES ('WI', 'Wisconsin');
INSERT INTO state (state_abbreviation, state_name) VALUES ('WY', 'Wyoming');


-- National Battlefield
INSERT INTO site (site_name, site_type, date_established) VALUES ('Antietam National Battlefield', 'Battlefield', '1890-08-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Big Hole National Battlefield', 'Battlefield', '1910-06-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cowpens National Battlefield', 'Battlefield', '1929-03-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Donelson National Battlefield', 'Battlefield', '1933-08-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Necessity National Battlefield', 'Battlefield', '1931-03-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Monocacy National Battlefield', 'Battlefield', '1934-06-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Moores Creek National Battlefield', 'Battlefield', '1926-06-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Petersburg National Battlefield', 'Battlefield', '1926-07-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Stones River National Battlefield', 'Battlefield', '1927-03-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tupelo National Battlefield', 'Battlefield', '1933-08-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wilson''s Creek National Battlefield', 'Battlefield', '1960-04-22');


-- Battlefield Site
INSERT INTO site (site_name, site_type, date_established) VALUES ('Brices Cross Roads National Battlefield Site', 'Battlefield Site', '1929-02-21');


-- Battlefield Park
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kennesaw Mountain National Battlefield Park', 'Battlefield Park', '1917-02-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Manassas National Battlefield Park', 'Battlefield Park', '1936-11-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Richmond National Battlefield Park', 'Battlefield Park', '1936-03-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('River Raisin National Battlefield Park', 'Battlefield Park', '2010-10-22');


-- Military Park
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chickamauga and Chattanooga National Military Park', 'Military Park', '1890-08-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fredericksburg and Spotsylvania County Battlefields Memorial National Military Park', 'Military Park', '1927-02-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gettysburg National Military Park', 'Military Park', '1895-02-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Guilford Courthouse National Military Park', 'Military Park', '1917-03-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Horseshoe Bend National Military Park', 'Military Park', '1956-07-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kings Mountain National Military Park', 'Military Park', '1933-08-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pea Ridge National Military Park', 'Military Park', '1956-07-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Shiloh National Military Park', 'Military Park', '1894-12-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Vicksburg National Military Park', 'Military Park', '1899-02-21');


INSERT INTO site (site_name, site_type, date_established) VALUES ('Allegheny Portage Railroad National Historic Site', 'Historic Site', '1964-08-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Amache National Historic Site', 'Historic Site', '2022-03-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Andersonville National Historic Site', 'Historic Site', '1970-10-16');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Andrew Johnson National Historic Site', 'Historic Site', '1963-12-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bent''s Old Fort National Historic Site', 'Historic Site', '1960-06-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Boston African American National Historic Site', 'Historic Site', '1980-10-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Carl Sandburg Home National Historic Site', 'Historic Site', '1968-10-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Carter G. Woodson Home National Historic Site', 'Historic Site', '2006-02-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Charles Pinckney National Historic Site', 'Historic Site', '1988-09-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chimney Rock National Historic Site', 'Historic Site', '2012-09-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Christiansted National Historic Site', 'Historic Site', '1961-01-16'); 
INSERT INTO site (site_name, site_type, date_established) VALUES ('Clara Barton National Historic Site', 'Historic Site', '1974-10-26'); 
INSERT INTO site (site_name, site_type, date_established) VALUES ('Edgar Allan Poe National Historic Site', 'Historic Site', '1978-11-10'); 
INSERT INTO site (site_name, site_type, date_established) VALUES ('Eisenhower National Historic Site', 'Historic Site', '1967-11-27'); 
INSERT INTO site (site_name, site_type, date_established) VALUES ('Eleanor Roosevelt National Historic Site', 'Historic Site', '1977-05-26'); 
INSERT INTO site (site_name, site_type, date_established) VALUES ('Eugene O''Neill National Historic Site', 'Historic Site', '1976-10-12'); 
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fallen Timbers Battlefield and Fort Miamis National Historic Site', 'Historic Site', '1999-12-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('First Ladies National Historic Site', 'Historic Site', '2000-10-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Ford''s Theatre National Historic Site', 'Historic Site', '1970-06-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Bowie National Historic Site', 'Historic Site', '1964-08-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Davis National Historic Site', 'Historic Site', '1961-09-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Laramie National Historic Site', 'Historic Site', '1960-04-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Larned National Historic Site', 'Historic Site', '1964-08-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Point National Historic Site', 'Historic Site', '1970-10-16');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Raleigh National Historic Site', 'Historic Site', '1941-04-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Scott National Historic Site', 'Historic Site', '1978-10-19');							
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Smith National Historic Site', 'Historic Site', '1961-09-13');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Union Trading Post National Historic Site', 'Historic Site', '1966-06-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Vancouver National Historic Site', 'Historic Site', '1961-06-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Frederick Douglass National Historic Site', 'Historic Site', '1988-02-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Frederick Law Olmsted National Historic Site', 'Historic Site', '1979-05-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Friendship Hill National Historic Site', 'Historic Site', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gloria Dei (Old Swedes'') Church National Historic Site', 'Historic Site', '1942-11-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grant–Kohrs Ranch National Historic Site', 'Historic Site', '1972-08-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grey Towers National Historic Site', 'Historic Site', '2004-12-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hampton National Historic Site', 'Historic Site', '1948-06-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Harry S. Truman National Historic Site', 'Historic Site', '1983-05-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Herbert Hoover National Historic Site', 'Historic Site', '1965-08-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Home of Franklin D. Roosevelt National Historic Site', 'Historic Site', '1944-01-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Honouliuli National Historic Site', 'Historic Site', '2019-03-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hopewell Furnace National Historic Site', 'Historic Site', '1985-09-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hubbell Trading Post National Historic Site', 'Historic Site', '1965-08-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('James A. Garfield National Historic Site', 'Historic Site', '1980-12-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Jamestown National Historic Site', 'Historic Site', '1940-12-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('John Fitzgerald Kennedy National Historic Site', 'Historic Site', '1967-05-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('John Muir National Historic Site', 'Historic Site', '1964-08-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Knife River Indian Villages National Historic Site', 'Historic Site', '1974-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lincoln Home National Historic Site', 'Historic Site', '1971-08-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Little Rock Central High School National Historic Site', 'Historic Site', '1999-11-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Longfellow House — Washington''s Headquarters National Historic Site', 'Historic Site', '2010-12-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lower East Side Tenement National Historic Site', 'Historic Site', '1998-11-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Maggie L. Walker National Historic Site', 'Historic Site', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Manzanar National Historic Site', 'Historic Site', '1992-03-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Martin Van Buren National Historic Site', 'Historic Site', '1974-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mary McLeod Bethune Council House National Historic Site', 'Historic Site', '1991-12-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Minidoka National Historic Site', 'Historic Site', '2008-05-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Minuteman Missile National Historic Site', 'Historic Site', '1999-11-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('New Philadelphia National Historic Site', 'Historic Site', '2022-12-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Nicodemus National Historic Site', 'Historic Site', '1996-11-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Ninety Six National Historic Site', 'Historic Site', '1976-08-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pennsylvania Avenue National Historic Site', 'Historic Site', '1965-09-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('President William Jefferson Clinton Birthplace Home National Historic Site', 'Historic Site', '2010-12-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Puʻukoholā Heiau National Historic Site', 'Historic Site', '1972-08-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sagamore Hill National Historic Site', 'Historic Site', '1963-07-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Saint Paul''s Church National Historic Site', 'Historic Site', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Salem Maritime National Historic Site', 'Historic Site', '1938-03-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('San Juan National Historic Site', 'Historic Site', '1949-02-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sand Creek Massacre National Historic Site', 'Historic Site', '2007-04-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Saugus Iron Works National Historic Site', 'Historic Site', '1968-04-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Springfield Armory National Historic Site', 'Historic Site', '1974-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Steamtown National Historic Site', 'Historic Site', '1986-10-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Theodore Roosevelt Birthplace National Historic Site', 'Historic Site', '1970-06-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Theodore Roosevelt Inaugural National Historic Site', 'Historic Site', '1966-11-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Thomas Cole National Historic Site', 'Historic Site', '1999-12-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Thomas Stone National Historic Site', 'Historic Site', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Touro Synagogue National Historic Site', 'Historic Site', '1946-03-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tuskegee Airmen National Historic Site', 'Historic Site', '1998-11-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tuskegee Institute National Historic Site', 'Historic Site', '1974-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Ulysses S. Grant National Historic Site', 'Historic Site', '1989-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Vanderbilt Mansion National Historic Site', 'Historic Site', '1940-12-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Washita Battlefield National Historic Site', 'Historic Site', '1996-11-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Whitman Mission National Historic Site', 'Historic Site', '1963-01-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('William Howard Taft National Historic Site', 'Historic Site', '1969-12-02');


-- Memorials
INSERT INTO site (site_name, site_type, date_established) VALUES ('Arkansas Post National Memorial', 'Memorial', '1960-07-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Arlington House, The Robert E. Lee National Memorial', 'Memorial', '1955-06-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chamizal National Memorial', 'Memorial', '1974-02-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Coronado National Memorial', 'Memorial', '1952-11-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('De Soto National Memorial', 'Memorial', '1948-03-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Dwight D. Eisenhower Memorial', 'Memorial', '2020-09-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Federal Hall National Memorial', 'Memorial', '1955-08-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Flight 93 National Memorial', 'Memorial', '2011-09-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Caroline National Memorial', 'Memorial', '1953-01-16');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Franklin Delano Roosevelt Memorial', 'Memorial', '1997-05-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('General Grant National Memorial', 'Memorial', '1959-05-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hamilton Grange National Memorial', 'Memorial', '1988-11-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Johnstown Flood National Memorial', 'Memorial', '1964-08-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Korean War Veterans Memorial', 'Memorial', '1995-07-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lincoln Boyhood National Memorial', 'Memorial', '1962-02-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lincoln Memorial', 'Memorial', '1922-05-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lyndon Baines Johnson Memorial Grove on the Potomac', 'Memorial', '1974-09-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Martin Luther King Jr. Memorial', 'Memorial', '2011-08-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mount Rushmore National Memorial', 'Memorial', '1939-07-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pearl Harbor National Memorial', 'Memorial', '2019-03-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Perry''s Victory and International Peace Memorial', 'Memorial', '1972-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Port Chicago Naval Magazine National Memorial', 'Memorial', '1992-10-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Roger Williams National Memorial', 'Memorial', '1965-10-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Thaddeus Kosciuszko National Memorial', 'Memorial', '1972-10-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Theodore Roosevelt Island', 'Memorial', '1967-10-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Thomas Jefferson Memorial', 'Memorial', '1943-04-13');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Vietnam Veterans Memorial', 'Memorial', '1982-11-13');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Washington Monument', 'Memorial', '1885-02-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('World War I Memorial', 'Memorial', '2014-12-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('World War II Memorial', 'Memorial', '2004-05-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wright Brothers National Memorial', 'Memorial', '1953-12-04');


-- Monuments
INSERT INTO site (site_name, site_type, date_established) VALUES ('Admiralty Island National Monument', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('African Burial Ground National Monument', 'Monument', '2006-02-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Agate Fossil Beds National Monument', 'Monument', '1997-06-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Agua Fria National Monument', 'Monument', '2000-01-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Aleutian Islands World War II National Monument', 'Monument', '2008-12-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Alibates Flint Quarries National Monument', 'Monument', '1965-08-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Aniakchak National Monument', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Avi Kwa Ame National Monument', 'Monument', '2023-03-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Aztec Ruins National Monument', 'Monument', '1923-01-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Baaj Nwaavjo I''tah Kukveni – Ancestral Footprints of the Grand Canyon National Monument', 'Monument', '2023-08-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bandelier National Monument', 'Monument', '1916-02-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Basin and Range National Monument', 'Monument', '2015-07-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bears Ears National Monument', 'Monument', '2016-12-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Belmont-Paul Women''s Equality National Monument', 'Monument', '2016-04-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Berryessa Snow Mountain National Monument', 'Monument', '2015-07-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Birmingham Civil Rights National Monument', 'Monument', '2017-01-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Booker T. Washington National Monument', 'Monument', '1956-04-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Browns Canyon National Monument', 'Monument', '2015-02-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Buck Island Reef National Monument', 'Monument', '1961-12-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cabrillo National Monument', 'Monument', '1913-10-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('California Coastal National Monument', 'Monument', '2000-01-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Camp Hale — Continental Divide National Monument', 'Monument', '2022-10-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Camp Nelson National Monument', 'Monument', '2018-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Canyon de Chelly National Monument', 'Monument', '1931-04-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Canyons of the Ancients National Monument', 'Monument', '2000-06-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cape Krusenstern National Monument', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Capulin Volcano National Monument', 'Monument', '1916-08-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Carrizo Plain National Monument', 'Monument', '2001-01-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Casa Grande Ruins National Monument', 'Monument', '1918-08-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cascade–Siskiyou National Monument', 'Monument', '2000-06-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castillo de San Marcos National Monument', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castle Clinton National Monument', 'Monument', '1946-08-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castle Mountains National Monument', 'Monument', '2016-02-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castner Range National Monument', 'Monument', '2023-03-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cedar Breaks National Monument', 'Monument', '1933-08-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('César E. Chávez National Monument', 'Monument', '2012-10-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Charles Young Buffalo Soldiers National Monument', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chimney Rock National Monument', 'Monument', '2012-09-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chiricahua National Monument', 'Monument', '1924-04-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Colorado National Monument', 'Monument', '1911-05-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Craters of the Moon National Monument', 'Monument', '1924-05-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Devils Postpile National Monument', 'Monument', '1911-07-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Devils Tower National Monument', 'Monument', '1906-09-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Dinosaur National Monument', 'Monument', '1915-10-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Effigy Mounds National Monument', 'Monument', '1949-10-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('El Malpais National Monument', 'Monument', '1987-12-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('El Morro National Monument', 'Monument', '1906-12-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Emmett Till and Mamie Till-Mobley National Monument', 'Monument', '2023-07-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Florissant Fossil Beds National Monument', 'Monument', '1969-08-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Frederica National Monument', 'Monument', '1936-05-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Matanzas National Monument', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort McHenry National Monument and Historic Shrine', 'Monument', '1925-03-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Monroe National Monument', 'Monument', '2011-11-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Ord National Monument', 'Monument', '2012-04-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Pulaski National Monument', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Stanwix National Monument', 'Monument', '1935-08-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Union National Monument', 'Monument', '1956-04-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fossil Butte National Monument', 'Monument', '1972-10-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Freedom Riders National Monument', 'Monument', '2017-01-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('George Washington Birthplace National Monument', 'Monument', '1930-01-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('George Washington Carver National Monument', 'Monument', '1943-07-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Giant Sequoia National Monument', 'Monument', '2000-04-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gila Cliff Dwellings National Monument', 'Monument', '1907-11-16');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gold Butte National Monument', 'Monument', '2016-12-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Governors Island National Monument', 'Monument', '2001-01-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Canyon–Parashant National Monument', 'Monument', '2000-01-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Portage National Monument', 'Monument', '1960-01-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Staircase–Escalante National Monument', 'Monument', '1996-09-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hagerman Fossil Beds National Monument', 'Monument', '1988-11-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hanford Reach National Monument', 'Monument', '2000-06-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Harriet Tubman Underground Railroad National Monument', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hohokam Pima National Monument', 'Monument', '1972-10-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hovenweep National Monument', 'Monument', '1923-03-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Ironwood Forest National Monument', 'Monument', '2000-06-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Jewel Cave National Monument', 'Monument', '1908-02-07');
INSERT INTO site (site_name, site_type, date_established) VALUES ('John Day Fossil Beds National Monument', 'Monument', '1974-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Jurassic National Monument', 'Monument', '2019-03-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kasha-Katuwe Tent Rocks National Monument', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Katahdin Woods and Waters National Monument', 'Monument', '2016-08-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lava Beds National Monument', 'Monument', '1925-11-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Little Bighorn Battlefield National Monument', 'Monument', '1940-07-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Marianas Trench Marine National Monument', 'Monument', '2009-01-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Medgar and Myrlie Evers Home National Monument', 'Monument', '2020-12-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Military Working Dog Teams National Monument', 'Monument', '2013-10-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mill Springs Battlefield National Monument', 'Monument', '2020-09-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Misty Fjords National Monument', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mojave Trails National Monument', 'Monument', '2016-02-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Montezuma Castle National Monument', 'Monument', '1906-12-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mount St. Helens Volcanic National Monument', 'Monument', '1982-08-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Muir Woods National Monument', 'Monument', '1908-01-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Natural Bridges National Monument', 'Monument', '1908-04-16');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Navajo National Monument', 'Monument', '1909-03-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Newberry Volcanic National Monument', 'Monument', '1990-11-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Northeast Canyons and Seamounts Marine National Monument', 'Monument', '2016-09-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Oregon Caves National Monument and Preserve', 'Monument', '1909-07-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Organ Mountains–Desert Peaks National Monument', 'Monument', '2014-05-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Organ Pipe Cactus National Monument', 'Monument', '1937-04-13');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pacific Remote Islands Marine National Monument', 'Monument', '2009-01-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Papahānaumokuākea Marine National Monument', 'Monument', '2006-06-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Petroglyph National Monument', 'Monument', '1990-06-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pipe Spring National Monument', 'Monument', '1923-05-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pipestone National Monument', 'Monument', '1937-08-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pompeys Pillar National Monument', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Poverty Point National Monument', 'Monument', '1988-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Prehistoric Trackways National Monument', 'Monument', '2009-03-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('President Lincoln and Soldiers’ Home National Monument', 'Monument', '2000-07-07');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Rainbow Bridge National Monument', 'Monument', '1910-05-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Río Grande del Norte National Monument', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Rose Atoll Marine National Monument', 'Monument', '2009-01-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Russell Cave National Monument', 'Monument', '1961-05-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Saint Francis Dam Disaster National Monument', 'Monument', '2019-03-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Salinas Pueblo Missions National Monument', 'Monument', '1909-11-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('San Gabriel Mountains National Monument', 'Monument', '2014-10-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('San Juan Islands National Monument', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sand to Snow', 'Monument', '2016-02-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Santa Rosa and San Jacinto Mountains National Monument', 'Monument', '2000-10-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Scotts Bluff National Monument', 'Monument', '1919-12-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sonoran Desert National Monument', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Statue of Liberty National Monument', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Stonewall National Monument', 'Monument', '2016-06-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sunset Crater Volcano National Monument', 'Monument', '1930-05-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Timpanogos Cave National Monument', 'Monument', '1922-10-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tonto National Monument', 'Monument', '1907-10-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tule Lake National Monument', 'Monument', '2008-12-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tule Springs Fossil Beds National Monument', 'Monument', '2014-12-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tuzigoot National Monument', 'Monument', '1939-07-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Upper Missouri River Breaks National Monument', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Vermilion Cliffs National Monument', 'Monument', '2000-11-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Virgin Islands Coral Reef National Monument', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Waco Mammoth National Monument', 'Monument', '2015-07-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Walnut Canyon National Monument', 'Monument', '1915-11-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wupatki National Monument', 'Monument', '1924-12-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Yucca House National Monument', 'Monument', '1919-12-19');


-- Parks
INSERT INTO site (site_name, site_type, date_established) VALUES ('Acadia National Park', 'Park', '1919-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('National Park of American Samoa', 'Park', '1988-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Arches National Park', 'Park', '1971-11-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Badlands National Park', 'Park', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Big Bend National Park', 'Park', '1944-06-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Biscayne National Park', 'Park', '1980-06-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Black Canyon of the Gunnison National Park', 'Park', '1999-10-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bryce Canyon National Park', 'Park', '1928-02-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Canyonlands National Park', 'Park', '1964-09-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Capitol Reef National Park', 'Park', '1971-12-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Carlsbad Caverns National Park', 'Park', '1930-05-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Channel Islands National Park', 'Park', '1980-03-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Congaree National Park', 'Park', '2003-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Crater Lake National Park', 'Park', '1902-05-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cuyahoga Valley National Park', 'Park', '2000-10-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Death Valley National Park', 'Park', '1994-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Denali National Park', 'Park', '1917-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Dry Tortugas National Park', 'Park', '1992-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Everglades National Park', 'Park', '1934-05-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gates of the Arctic National Park', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gateway Arch National Park', 'Park', '2018-02-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Glacier National Park', 'Park', '1910-05-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Glacier Bay National Park', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Canyon National Park', 'Park', '1919-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Teton National Park', 'Park', '1929-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Great Basin National Park', 'Park', '1986-10-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Great Sand Dunes National Park', 'Park', '2004-09-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Great Smoky Mountains National Park', 'Park', '1934-06-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Guadalupe Mountains National Park', 'Park', '1972-09-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Haleakalā National Park', 'Park', '1961-07-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hawaiʻi Volcanoes National Park', 'Park', '1916-08-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hot Springs National Park', 'Park', '1921-03-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Indiana Dunes National Park', 'Park', '2019-02-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Isle Royale National Park', 'Park', '1940-04-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Joshua Tree National Park', 'Park', '1994-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Katmai National Park', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kenai Fjords National Park', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kings Canyon National Park', 'Park', '1940-03-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kobuk Valley National Park', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lake Clark National Park', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lassen Volcanic National Park', 'Park', '1916-08-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mammoth Cave National Park', 'Park', '1941-07-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mesa Verde National Park', 'Park', '1906-06-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mount Rainier National Park', 'Park', '1899-03-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('New River Gorge National Park and Preserve', 'Park', '2020-12-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('North Cascades National Park', 'Park', '1968-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Olympic National Park', 'Park', '1938-06-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Petrified Forest National Park', 'Park', '1962-12-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pinnacles National Park', 'Park', '2013-01-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Redwood National Park', 'Park', '1968-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Rocky Mountain National Park', 'Park', '1915-01-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Saguaro National Park', 'Park', '1994-10-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sequoia National Park', 'Park', '1890-09-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Shenandoah National Park', 'Park', '1935-12-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Theodore Roosevelt National Park', 'Park', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Virgin Islands National Park', 'Park', '1956-08-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Voyageurs National Park', 'Park', '1975-04-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('White Sands National Park', 'Park', '2019-12-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wind Cave National Park', 'Park', '1903-01-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wrangell-St. Elias National Park', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Yellowstone National Park', 'Park', '1872-03-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Yosemite National Park', 'Park', '1890-10-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Zion National Park', 'Park', '1919-11-19');


-- National Parkways
INSERT INTO site (site_name, site_type, date_established) VALUES ('Blue Ridge Parkway', 'Parkway', '1936-06-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('George Washington Memorial Parkway', 'Parkway', '1930-05-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('John D. Rockefeller Jr. Memorial Parkway', 'Parkway', '1972-08-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Natchez Trace Parkway', 'Parkway', '1938-05-08');


-- Recreation Areas
INSERT INTO site (site_name, site_type, date_established) VALUES ('Amistad National Recreation Area', 'Recreation Area', '1990-11-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bighorn Canyon National Recreation Area', 'Recreation Area', '1966-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Boston Harbor Islands National Recreation Area', 'Recreation Area', '1996-11-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chattahoochee River National Recreation Area', 'Recreation Area', '1978-08-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chickasaw National Recreation Area', 'Recreation Area', '1976-03-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Curecanti National Recreation Area', 'Recreation Area', '1965-02-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Delaware Water Gap National Recreation Area', 'Recreation Area', '1965-09-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gateway National Recreation Area', 'Recreation Area', '1972-10-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gauley River National Recreation Area', 'Recreation Area', '1988-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Glen Canyon National Recreation Area', 'Recreation Area', '1972-10-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Golden Gate National Recreation Area', 'Recreation Area', '1972-10-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lake Chelan National Recreation Area', 'Recreation Area', '1968-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lake Mead National Recreation Area', 'Recreation Area', '1964-10-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lake Meredith National Recreation Area', 'Recreation Area', '1990-11-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lake Roosevelt National Recreation Area', 'Recreation Area', '1997-01-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Ross Lake National Recreation Area', 'Recreation Area', '1968-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Santa Monica Mountains National Recreation Area', 'Recreation Area', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Whiskeytown–Shasta–Trinity National Recreation Area', 'Recreation Area', '1972-10-21');


-- National Rivers
INSERT INTO site (site_name, site_type, date_established) VALUES ('Alagnak Wild River', 'Wild & Scenic River', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bluestone National Scenic River', 'Wild & Scenic River', '1988-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Buffalo National River', 'River', '1992-04-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Great Egg Harbor Scenic and Recreational River', 'Wild & Scenic River', '1992-10-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Missouri National Recreational River', 'Wild & Scenic River', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Niobrara National Scenic River', 'Wild & Scenic River', '1991-05-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Obed Wild and Scenic River', 'Wild & Scenic River', '1976-10-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Rio Grande Wild & Scenic River', 'Wild & Scenic River', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Saint Croix National Scenic Riverway', 'Wild & Scenic River', '1968-10-02');


-- Lakeshores
INSERT INTO site (site_name, site_type, date_established) VALUES ('Apostle Islands National Lakeshore', 'Lakeshore', '1970-09-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pictured Rocks National Lakeshore', 'Lakeshore', '1966-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sleeping Bear Dunes National Lakeshore', 'Lakeshore', '1970-10-21');


-- Seashores
INSERT INTO site (site_name, site_type, date_established) VALUES ('Assateague Island National Seashore', 'Seashore', '1965-09-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Canaveral National Seashore', 'Seashore', '1975-01-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cape Cod National Seashore', 'Seashore', '1966-06-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cape Hatteras National Seashore', 'Seashore', '1953-01-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cape Lookout National Seashore', 'Seashore', '1966-03-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cumberland Island National Seashore', 'Seashore', '1972-10-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fire Island National Seashore', 'Seashore', '1964-09-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gulf Islands National Seashore', 'Seashore', '1971-01-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Padre Island National Seashore', 'Seashore', '1968-04-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Point Reyes National Seashore', 'Seashore', '1972-10-20');


-- Scenic Trails
INSERT INTO site (site_name, site_type, date_established) VALUES ('Appalachian National Scenic Trail', 'Scenic Trail', '1968-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Ice Age National Scenic Trail', 'Scenic Trail', '1980-10-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Natchez Trace National Scenic Trail', 'Scenic Trail', '1983-03-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('New England National Scenic Trail', 'Scenic Trail', '2009-03-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('North Country National Scenic Trail', 'Scenic Trail', '1980-03-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Potomac Heritage National Scenic Trail', 'Scenic Trail', '1983-03-28');



-- data collected February 10, 2021
-- park name, area (sq km, 2019 data) - https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States
-- has_camping - https://www.nps.gov/subjects/camping/campground.htm
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Acadia National Park'), 'Acadia National Park', '2/26/1919', 198.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'National Park of American Samoa'), 'National Park of American Samoa', '10/31/1988', 33.4, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Arches National Park'), 'Arches National Park', '11/12/1971', 310.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Badlands National Park'), 'Badlands National Park', '11/10/1978', 982.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Big Bend National Park'), 'Big Bend National Park', '6/12/1944', 3242.2, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Biscayne National Park'), 'Biscayne National Park', '6/28/1980', 700, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Black Canyon of the Gunnison National Park'), 'Black Canyon of the Gunnison National Park', '10/21/1999', 124.6, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Bryce Canyon National Park'), 'Bryce Canyon National Park', '2/25/1928', 145, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Canyonlands National Park'), 'Canyonlands National Park', '9/12/1964', 1366.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Capitol Reef National Park'), 'Capitol Reef National Park', '12/18/1971', 979, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Carlsbad Caverns National Park'), 'Carlsbad Caverns National Park', '5/14/1930', 189.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Channel Islands National Park'), 'Channel Islands National Park', '3/5/1980', 1009.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Congaree National Park'), 'Congaree National Park', '11/10/2003', 107.1, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Crater Lake National Park'), 'Crater Lake National Park', '5/22/1902', 741.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Cuyahoga Valley National Park'), 'Cuyahoga Valley National Park', '10/11/2000', 131.8, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Death Valley National Park'), 'Death Valley National Park', '10/31/1994', 13793.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Denali National Park'), 'Denali National Park', '2/26/1917', 19185.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Dry Tortugas National Park'), 'Dry Tortugas National Park', '10/26/1992', 261.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Everglades National Park'), 'Everglades National Park', '5/30/1934', 6106.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Gates of the Arctic National Park'), 'Gates of the Arctic National Park', '12/2/1980', 30448.1, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Gateway Arch National Park'), 'Gateway Arch National Park', '2/22/2018', 0.8, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Glacier National Park'), 'Glacier National Park', '5/11/1910', 4100, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Glacier Bay National Park'), 'Glacier Bay National Park', '12/2/1980', 13044.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Grand Canyon National Park'), 'Grand Canyon National Park', '2/26/1919', 4862.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Grand Teton National Park'), 'Grand Teton National Park', '2/26/1929', 1254.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Great Basin National Park'), 'Great Basin National Park', '10/27/1986', 312.3, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Great Sand Dunes National Park'), 'Great Sand Dunes National Park', '9/13/2004', 434.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Great Smoky Mountains National Park'), 'Great Smoky Mountains National Park', '6/15/1934', 2114.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Guadalupe Mountains National Park'), 'Guadalupe Mountains National Park', '10/15/1966', 349.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Haleakalā National Park'), 'Haleakalā National Park', '7/1/1961', 134.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Hawaiʻi Volcanoes National Park'), 'Hawaiʻi Volcanoes National Park', '8/1/1916', 1317.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Hot Springs National Park'), 'Hot Springs National Park', '3/4/1921', 22.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Indiana Dunes National Park'), 'Indiana Dunes National Park', '2/15/2019', 62.1, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Isle Royale National Park'), 'Isle Royale National Park', '4/3/1940', 2314, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Joshua Tree National Park'), 'Joshua Tree National Park', '10/31/1994', 3217.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Katmai National Park'), 'Katmai National Park', '12/2/1980', 14870.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Kenai Fjords National Park'), 'Kenai Fjords National Park', '12/2/1980', 2710, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Kings Canyon National Park'), 'Kings Canyon National Park', '3/4/1940', 1869.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Kobuk Valley National Park'), 'Kobuk Valley National Park', '12/2/1980', 7084.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Lake Clark National Park'), 'Lake Clark National Park', '12/2/1980', 10602, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Lassen Volcanic National Park'), 'Lassen Volcanic National Park', '8/9/1916', 431.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Mammoth Cave National Park'), 'Mammoth Cave National Park', '7/1/1941', 218.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Mesa Verde National Park'), 'Mesa Verde National Park', '6/29/1906', 212.4, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Mount Rainier National Park'), 'Mount Rainier National Park', '3/2/1899', 956.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'New River Gorge National Park and Preserve'), 'New River Gorge National Park and Preserve', '12/27/2020', 28.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'North Cascades National Park'), 'North Cascades National Park', '10/2/1968', 2042.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Olympic National Park'), 'Olympic National Park', '6/29/1938', 3733.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Petrified Forest National Park'), 'Petrified Forest National Park', '12/9/1962', 895.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Pinnacles National Park'), 'Pinnacles National Park', '1/10/2013', 108, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Redwood National Park'), 'Redwood National Park', '10/2/1968', 562.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Rocky Mountain National Park'), 'Rocky Mountain National Park', '1/26/1915', 1075.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Saguaro National Park'), 'Saguaro National Park', '10/14/1994', 375.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Sequoia National Park'), 'Sequoia National Park', '9/25/1890', 1635.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Shenandoah National Park'), 'Shenandoah National Park', '12/26/1935', 806.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Theodore Roosevelt National Park'), 'Theodore Roosevelt National Park', '11/10/1978', 285.1, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Virgin Islands National Park'), 'Virgin Islands National Park', '8/2/1956', 60.9, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Voyageurs National Park'), 'Voyageurs National Park', '4/8/1975', 883.1, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'White Sands National Park'), 'White Sands National Park', '12/20/2019', 592.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Wind Cave National Park'), 'Wind Cave National Park', '1/9/1903', 137.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Wrangell-St. Elias National Park'), 'Wrangell-St. Elias National Park', '12/2/1980', 33682.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Yellowstone National Park'), 'Yellowstone National Park', '3/1/1872', 8983.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Yosemite National Park'), 'Yosemite National Park', '10/1/1890', 3082.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Zion National Park'), 'Zion National Park', '11/19/1919', 595.9, true);

-- park states - https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Acadia National Park'), 'ME');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'National Park of American Samoa'), 'AS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Arches National Park'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Badlands National Park'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Bend National Park'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Biscayne National Park'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Black Canyon of the Gunnison National Park'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bryce Canyon National Park'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Canyonlands National Park'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Capitol Reef National Park'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Carlsbad Caverns National Park'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Channel Islands National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Congaree National Park'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Crater Lake National Park'), 'OR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cuyahoga Valley National Park'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Death Valley National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Death Valley National Park'), 'NV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Denali National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dry Tortugas National Park'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Everglades National Park'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gates of the Arctic National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gateway Arch National Park'), 'MO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier National Park'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier Bay National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Canyon National Park'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Teton National Park'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Basin National Park'), 'NV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Sand Dunes National Park'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Smoky Mountains National Park'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Smoky Mountains National Park'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Guadalupe Mountains National Park'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name =  'Haleakalā National Park'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name =  'Hawaiʻi Volcanoes National Park'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hot Springs National Park'), 'AR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Indiana Dunes National Park'), 'IN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Isle Royale National Park'), 'MI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Joshua Tree National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Katmai National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kenai Fjords National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kings Canyon National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kobuk Valley National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Clark National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lassen Volcanic National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mammoth Cave National Park'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mesa Verde National Park'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mount Rainier National Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'New River Gorge National Park and Preserve'), 'WV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Cascades National Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Olympic National Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Petrified Forest National Park'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pinnacles National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Redwood National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rocky Mountain National Park'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saguaro National Park'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sequoia National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Shenandoah National Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt National Park'), 'ND');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Virgin Islands National Park'), 'VI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Voyageurs National Park'), 'MN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'White Sands National Park'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wind Cave National Park'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wrangell-St. Elias National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone National Park'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone National Park'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone National Park'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yosemite National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Zion National Park'), 'UT');


-- foreign keys

ALTER TABLE site_state ADD CONSTRAINT FK_site_state_site FOREIGN KEY(site_id) REFERENCES site(site_id);

ALTER TABLE site_state ADD CONSTRAINT FK_site_state_state FOREIGN KEY(state_abbreviation) REFERENCES state(state_abbreviation);

COMMIT;