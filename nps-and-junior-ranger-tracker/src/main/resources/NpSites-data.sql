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
													 'Reserve', 'River', 'Scenic Trail', 
													 'Seashore', 'Wild & Scenic River'))
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


INSERT INTO site (site_name, site_type, date_established) VALUES ('Acadia', 'Park', '1919-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('American Samoa', 'Park', '1988-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Arches', 'Park', '1971-11-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Badlands', 'Park', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Big Bend', 'Park', '1944-06-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Biscayne', 'Park', '1980-06-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Black Canyon of the Gunnison', 'Park', '1999-10-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bryce Canyon', 'Park', '1928-02-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Canyonlands', 'Park', '1964-09-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Capitol Reef', 'Park', '1971-12-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Carlsbad Caverns', 'Park', '1930-05-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Channel Islands', 'Park', '1980-03-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Congaree', 'Park', '2003-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Crater Lake', 'Park', '1902-05-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cuyahoga Valley', 'Park', '2000-10-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Death Valley', 'Park', '1994-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Denali', 'Park', '1917-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Dry Tortugas', 'Park', '1992-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Everglades', 'Park', '1934-05-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gates of the Arctic', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gateway Arch', 'Park', '2018-02-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Glacier', 'Park', '1910-05-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Glacier Bay', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Canyon', 'Park', '1919-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Teton', 'Park', '1929-02-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Great Basin', 'Park', '1986-10-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Great Sand Dunes', 'Park', '2004-09-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Great Smoky Mountains', 'Park', '1934-06-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Guadalupe Mountains', 'Park', '1972-09-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Haleakalā', 'Park', '1961-07-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hawaiʻi Volcanoes', 'Park', '1916-08-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hot Springs', 'Park', '1921-03-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Indiana Dunes', 'Park', '2019-02-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Isle Royale', 'Park', '1940-04-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Joshua Tree', 'Park', '1994-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Katmai', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kenai Fjords', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kings Canyon', 'Park', '1940-03-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kobuk Valley', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lake Clark', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lassen Volcanic', 'Park', '1916-08-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mammoth Cave', 'Park', '1941-07-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mesa Verde', 'Park', '1906-06-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mount Rainier', 'Park', '1899-03-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('New River Gorge', 'Park', '2020-12-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('North Cascades', 'Park', '1968-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Olympic', 'Park', '1938-06-29');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Petrified Forest', 'Park', '1962-12-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pinnacles', 'Park', '2013-01-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Redwood', 'Park', '1968-10-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Rocky Mountain', 'Park', '1915-01-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Saguaro', 'Park', '1994-10-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sequoia', 'Park', '1890-09-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Shenandoah', 'Park', '1935-12-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Theodore Roosevelt', 'Park', '1978-11-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Virgin Islands', 'Park', '1956-08-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Voyageurs', 'Park', '1975-04-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('White Sands', 'Park', '2019-12-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wind Cave', 'Park', '1903-01-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wrangell–St. Elias', 'Park', '1980-12-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Yellowstone', 'Park', '1872-03-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Yosemite', 'Park', '1890-10-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Zion', 'Park', '1919-11-19');

INSERT INTO site (site_name, site_type, date_established) VALUES ('Admiralty Island', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('African Burial Ground', 'Monument', '2006-02-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Agate Fossil Beds', 'Monument', '1997-06-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Agua Fria', 'Monument', '2000-01-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Aleutian Islands World War II', 'Monument', '2008-12-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Alibates Flint Quarries', 'Monument', '1965-08-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Aniakchak', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Avi Kwa Ame', 'Monument', '2023-03-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Aztec Ruins', 'Monument', '1923-01-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Baaj Nwaavjo I"tah Kukveni – Ancestral Footprints of the Grand Canyon', 'Monument', '2023-08-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bandelier', 'Monument', '1916-02-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Basin and Range', 'Monument', '2015-07-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Bears Ears', 'Monument', '2016-12-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Belmont-Paul Women"s Equality', 'Monument', '2016-04-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Berryessa Snow Mountain', 'Monument', '2015-07-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Birmingham Civil Rights', 'Monument', '2017-01-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Booker T. Washington', 'Monument', '1956-04-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Browns Canyon', 'Monument', '2015-02-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Buck Island Reef', 'Monument', '1961-12-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cabrillo', 'Monument', '1913-10-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('California Coastal', 'Monument', '2000-01-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Camp Hale — Continental Divide', 'Monument', '2022-10-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Camp Nelson', 'Monument', '2018-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Canyon de Chelly', 'Monument', '1931-04-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Canyons of the Ancients', 'Monument', '2000-06-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cape Krusenstern', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Capulin Volcano', 'Monument', '1916-08-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Carrizo Plain', 'Monument', '2001-01-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Casa Grande Ruins', 'Monument', '1918-08-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cascade–Siskiyou', 'Monument', '2000-06-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castillo de San Marcos', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castle Clinton', 'Monument', '1946-08-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castle Mountains', 'Monument', '2016-02-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Castner Range', 'Monument', '2023-03-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Cedar Breaks', 'Monument', '1933-08-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('César E. Chávez', 'Monument', '2012-10-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Charles Young Buffalo Soldiers', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chimney Rock', 'Monument', '2012-09-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Chiricahua', 'Monument', '1924-04-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Colorado', 'Monument', '1911-05-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Craters of the Moon', 'Monument', '1924-05-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Devils Postpile', 'Monument', '1911-07-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Devils Tower', 'Monument', '1906-09-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Dinosaur', 'Monument', '1915-10-04');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Effigy Mounds', 'Monument', '1949-10-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('El Malpais', 'Monument', '1987-12-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('El Morro', 'Monument', '1906-12-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Emmett Till and Mamie Till-Mobley', 'Monument', '2023-07-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Florissant Fossil Beds', 'Monument', '1969-08-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Frederica', 'Monument', '1936-05-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Matanzas', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort McHenry', 'Monument', '1925-03-03');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Monroe', 'Monument', '2011-11-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Ord', 'Monument', '2012-04-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Pulaski', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Stanwix', 'Monument', '1935-08-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Union', 'Monument', '1956-04-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Fossil Butte', 'Monument', '1972-10-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Freedom Riders', 'Monument', '2017-01-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('George Washington Birthplace', 'Monument', '1930-01-23');
INSERT INTO site (site_name, site_type, date_established) VALUES ('George Washington Carver', 'Monument', '1943-07-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Giant Sequoia', 'Monument', '2000-04-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gila Cliff Dwellings', 'Monument', '1907-11-16');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Gold Butte', 'Monument', '2016-12-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Governors Island', 'Monument', '2001-01-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Canyon–Parashant', 'Monument', '2000-01-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Portage', 'Monument', '1960-01-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Staircase–Escalante', 'Monument', '1996-09-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hagerman Fossil Beds', 'Monument', '1988-11-18');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hanford Reach', 'Monument', '2000-06-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Harriet Tubman Underground Railroad', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hohokam Pima', 'Monument', '1972-10-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Hovenweep', 'Monument', '1923-03-02');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Ironwood Forest', 'Monument', '2000-06-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Jewel Cave', 'Monument', '1908-02-07');
INSERT INTO site (site_name, site_type, date_established) VALUES ('John Day Fossil Beds', 'Monument', '1974-10-26');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Jurassic', 'Monument', '2019-03-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Kasha-Katuwe Tent Rocks', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Katahdin Woods and Waters', 'Monument', '2016-08-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Lava Beds', 'Monument', '1925-11-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Little Bighorn Battlefield', 'Monument', '1940-07-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Marianas Trench Marine', 'Monument', '2009-01-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Medgar and Myrlie Evers Home', 'Monument', '2020-12-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Military Working Dog Teams', 'Monument', '2013-10-28');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mill Springs Battlefield', 'Monument', '2020-09-22');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Misty Fjords', 'Monument', '1978-12-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mojave Trails', 'Monument', '2016-02-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Montezuma Castle', 'Monument', '1906-12-08');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Mount St. Helens Volcanic', 'Monument', '1982-08-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Muir Woods', 'Monument', '1908-01-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Natural Bridges', 'Monument', '1908-04-16');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Navajo', 'Monument', '1909-03-20');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Newberry Volcanic', 'Monument', '1990-11-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Northeast Canyons and Seamounts Marine', 'Monument', '2016-09-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Oregon Caves', 'Monument', '1909-07-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Organ Mountains–Desert Peaks', 'Monument', '2014-05-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Organ Pipe Cactus', 'Monument', '1937-04-13');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pacific Remote Islands Marine', 'Monument', '2009-01-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Papahānaumokuākea Marine', 'Monument', '2006-06-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Petroglyph', 'Monument', '1990-06-27');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pipe Spring', 'Monument', '1923-05-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pipestone', 'Monument', '1937-08-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Pompeys Pillar', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Poverty Point', 'Monument', '1988-10-31');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Prehistoric Trackways', 'Monument', '2009-03-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('President Lincoln and Soldiers’ Home', 'Monument', '2000-07-07');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Rainbow Bridge', 'Monument', '1910-05-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Río Grande del Norte', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Rose Atoll Marine', 'Monument', '2009-01-06');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Russell Cave', 'Monument', '1961-05-11');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Saint Francis Dam Disaster', 'Monument', '2019-03-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Salinas Pueblo Missions', 'Monument', '1909-11-01');
INSERT INTO site (site_name, site_type, date_established) VALUES ('San Gabriel Mountains', 'Monument', '2014-10-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('San Juan Islands', 'Monument', '2013-03-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sand to Snow', 'Monument', '2016-02-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Santa Rosa and San Jacinto Mountains', 'Monument', '2000-10-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Scotts Bluff', 'Monument', '1919-12-12');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sonoran Desert', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Statue of Liberty', 'Monument', '1924-10-15');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Stonewall', 'Monument', '2016-06-24');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Sunset Crater Volcano', 'Monument', '1930-05-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Timpanogos Cave', 'Monument', '1922-10-14');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tonto', 'Monument', '1907-10-21');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tule Lake', 'Monument', '2008-12-05');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tule Springs Fossil Beds', 'Monument', '2014-12-19');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Tuzigoot', 'Monument', '1939-07-25');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Upper Missouri River Breaks', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Vermilion Cliffs', 'Monument', '2000-11-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Virgin Islands Coral Reef', 'Monument', '2001-01-17');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Waco Mammoth', 'Monument', '2015-07-10');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Walnut Canyon', 'Monument', '1915-11-30');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Wupatki', 'Monument', '1924-12-09');
INSERT INTO site (site_name, site_type, date_established) VALUES ('Yucca House', 'Monument', '1919-12-19');

  


 
-- data collected February 10, 2021
-- park name, area (sq km, 2019 data) - https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States
-- has_camping - https://www.nps.gov/subjects/camping/campground.htm
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Acadia'), 'Acadia', '2/26/1919', 198.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'American Samoa'), 'American Samoa', '10/31/1988', 33.4, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Arches'), 'Arches', '11/12/1971', 310.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Badlands'), 'Badlands', '11/10/1978', 982.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Big Bend'), 'Big Bend', '6/12/1944', 3242.2, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Biscayne'), 'Biscayne', '6/28/1980', 700, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Black Canyon of the Gunnison'), 'Black Canyon of the Gunnison', '10/21/1999', 124.6, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Bryce Canyon'), 'Bryce Canyon', '2/25/1928', 145, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Canyonlands'), 'Canyonlands', '9/12/1964', 1366.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Capitol Reef'), 'Capitol Reef', '12/18/1971', 979, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Carlsbad Caverns'), 'Carlsbad Caverns', '5/14/1930', 189.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Channel Islands'), 'Channel Islands', '3/5/1980', 1009.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Congaree'), 'Congaree', '11/10/2003', 107.1, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Crater Lake'), 'Crater Lake', '5/22/1902', 741.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Cuyahoga Valley'), 'Cuyahoga Valley', '10/11/2000', 131.8, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Death Valley'), 'Death Valley', '10/31/1994', 13793.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Denali'), 'Denali', '2/26/1917', 19185.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Dry Tortugas'), 'Dry Tortugas', '10/26/1992', 261.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Everglades'), 'Everglades', '5/30/1934', 6106.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Gates of the Arctic'), 'Gates of the Arctic', '12/2/1980', 30448.1, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Gateway Arch'), 'Gateway Arch', '2/22/2018', 0.8, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Glacier'), 'Glacier', '5/11/1910', 4100, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Glacier Bay'), 'Glacier Bay', '12/2/1980', 13044.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Grand Canyon'), 'Grand Canyon', '2/26/1919', 4862.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Grand Teton'), 'Grand Teton', '2/26/1929', 1254.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Great Basin'), 'Great Basin', '10/27/1986', 312.3, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Great Sand Dunes'), 'Great Sand Dunes', '9/13/2004', 434.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Great Smoky Mountains'), 'Great Smoky Mountains', '6/15/1934', 2114.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Guadalupe Mountains'), 'Guadalupe Mountains', '10/15/1966', 349.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Haleakalā'), 'Haleakalā', '7/1/1961', 134.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Hawaiʻi Volcanoes'), 'Hawaiʻi Volcanoes', '8/1/1916', 1317.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Hot Springs'), 'Hot Springs', '3/4/1921', 22.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Indiana Dunes'), 'Indiana Dunes', '2/15/2019', 62.1, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Isle Royale'), 'Isle Royale', '4/3/1940', 2314, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Joshua Tree'), 'Joshua Tree', '10/31/1994', 3217.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Katmai'), 'Katmai', '12/2/1980', 14870.3, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Kenai Fjords'), 'Kenai Fjords', '12/2/1980', 2710, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Kings Canyon'), 'Kings Canyon', '3/4/1940', 1869.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Kobuk Valley'), 'Kobuk Valley', '12/2/1980', 7084.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Lake Clark'), 'Lake Clark', '12/2/1980', 10602, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Lassen Volcanic'), 'Lassen Volcanic', '8/9/1916', 431.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Mammoth Cave'), 'Mammoth Cave', '7/1/1941', 218.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Mesa Verde'), 'Mesa Verde', '6/29/1906', 212.4, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Mount Rainier'), 'Mount Rainier', '3/2/1899', 956.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'New River Gorge'), 'New River Gorge', '12/27/2020', 28.4, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'North Cascades'), 'North Cascades', '10/2/1968', 2042.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Olympic'), 'Olympic', '6/29/1938', 3733.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Petrified Forest'), 'Petrified Forest', '12/9/1962', 895.9, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Pinnacles'), 'Pinnacles', '1/10/2013', 108, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Redwood'), 'Redwood', '10/2/1968', 562.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Rocky Mountain'), 'Rocky Mountain', '1/26/1915', 1075.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Saguaro'), 'Saguaro', '10/14/1994', 375.8, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Sequoia'), 'Sequoia', '9/25/1890', 1635.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Shenandoah'), 'Shenandoah', '12/26/1935', 806.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Theodore Roosevelt'), 'Theodore Roosevelt', '11/10/1978', 285.1, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Virgin Islands'), 'Virgin Islands', '8/2/1956', 60.9, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Voyageurs'), 'Voyageurs', '4/8/1975', 883.1, false);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'White Sands'), 'White Sands', '12/20/2019', 592.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Wind Cave'), 'Wind Cave', '1/9/1903', 137.5, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Wrangell-St. Elias'), 'Wrangell-St. Elias', '12/2/1980', 33682.6, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Yellowstone'), 'Yellowstone', '3/1/1872', 8983.2, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Yosemite'), 'Yosemite', '10/1/1890', 3082.7, true);
INSERT INTO park (park_id, park_name, date_established, area, has_camping) VALUES ((select site_id from site where site_name = 'Zion'), 'Zion', '11/19/1919', 595.9, true); 

-- park states - https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Acadia'), 'ME');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'American Samoa'), 'AS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Arches'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Badlands'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Bend'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Biscayne'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Black Canyon of the Gunnison'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bryce Canyon'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Canyonlands'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Capitol Reef'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Carlsbad Caverns'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Channel Islands'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Congaree'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Crater Lake'), 'OR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cuyahoga Valley'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Death Valley'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Death Valley'), 'NV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Denali'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dry Tortugas'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Everglades'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gates of the Arctic'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gateway Arch'), 'MO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier Bay'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Canyon'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Teton'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Basin'), 'NV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Sand Dunes'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Smoky Mountains'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Smoky Mountains'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Guadalupe Mountains'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name =  'Haleakalā'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name =  'Hawaiʻi Volcanoes'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hot Springs'), 'AR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Indiana Dunes'), 'IN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Isle Royale'), 'MI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Joshua Tree'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Katmai'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kenai Fjords'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kings Canyon'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kobuk Valley'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Clark'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lassen Volcanic'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mammoth Cave'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mesa Verde'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mount Rainier'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'New River Gorge'), 'WV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Cascades'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Olympic'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Petrified Forest'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pinnacles'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Redwood'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rocky Mountain'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saguaro'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sequoia'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Shenandoah'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt'), 'ND');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Virgin Islands'), 'VI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Voyageurs'), 'MN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'White Sands'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wind Cave'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wrangell-St. Elias'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yosemite'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Zion'), 'UT');


-- foreign keys

ALTER TABLE site_state ADD CONSTRAINT FK_site_state_site FOREIGN KEY(site_id) REFERENCES site(site_id);

ALTER TABLE site_state ADD CONSTRAINT FK_site_state_state FOREIGN KEY(state_abbreviation) REFERENCES state(state_abbreviation);

COMMIT;