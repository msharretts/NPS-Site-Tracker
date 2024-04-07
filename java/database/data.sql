-- insert data
-- data collected February 10, 2021
-- state name, abbrev https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States
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

-- data collected March 2024
-- park name, date established*, area* -
    --https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States
    --https://en.wikipedia.org/wiki/List_of_national_monuments_of_the_United_States
    --https://en.wikipedia.org/wiki/National_preserve
    --https://en.wikipedia.org/wiki/National_Historic_Site_(United_States)
    --https://en.wikipedia.org/wiki/National_military_park
    --https://en.wikipedia.org/wiki/List_of_national_memorials_of_the_United_States
    --https://en.wikipedia.org/wiki/National_recreation_area
    --https://en.wikipedia.org/wiki/List_of_national_lakeshores_and_seashores_of_the_United_States
    --https://en.wikipedia.org/wiki/National_Wild_and_Scenic_Rivers_System
    --https://en.wikipedia.org/wiki/National_Parkway
-- *date established not listed on wikipedia found through:
    --http://npshistory.com/park_histories.htm#i
-- *area not listed found through:
    --https://web.archive.org/web/20210113132417/https://www.nps.gov/subjects/lwcf/upload/NPS-Acreage-12-31-2020.pdf
-- has_camping - https://www.nps.gov/subjects/camping/campground.htm
-- park states - https://www.nps.gov/aboutus/national-park-system.htm

INSERT INTO designation (designation_name) VALUES ('International Historic Site');
INSERT INTO designation (designation_name) VALUES ('National Battlefield');
INSERT INTO designation (designation_name) VALUES ('National Battlefield Park');
INSERT INTO designation (designation_name) VALUES ('National Battlefield Site');
INSERT INTO designation (designation_name) VALUES ('National Historical Park');
INSERT INTO designation (designation_name) VALUES ('National Historic Site');
INSERT INTO designation (designation_name) VALUES ('National Lakeshore');
INSERT INTO designation (designation_name) VALUES ('National Memorial');
INSERT INTO designation (designation_name) VALUES ('National Military Park');
INSERT INTO designation (designation_name) VALUES ('National Monument');
INSERT INTO designation (designation_name) VALUES ('Other');
INSERT INTO designation (designation_name) VALUES ('National Park');
INSERT INTO designation (designation_name) VALUES ('National Parkway');
INSERT INTO designation (designation_name) VALUES ('National Preserve');
INSERT INTO designation (designation_name) VALUES ('National Recreation Area');
INSERT INTO designation (designation_name) VALUES ('National Reserve');
INSERT INTO designation (designation_name) VALUES ('National River');
INSERT INTO designation (designation_name) VALUES ('National Scenic Trail');
INSERT INTO designation (designation_name) VALUES ('National Seashore');
INSERT INTO designation (designation_name) VALUES ('National Wild and Scenic River');


-- Multiple Designations
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Gates of the Arctic National Park and Preserve', '1980-12-02', '34287.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Denali National Park and Preserve', '1917-02-26', '24584.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Wrangell-St. Elias National Park and Preserve', '1980-12-02', '53320.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lake Clark National Park and Preserve', '1980-12-02', '16309.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Katmai National Park and Preserve', '1980-12-02', '16564.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Aniakchak National Monument and Preserve', '1978-12-01', '2433.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Glacier Bay National Park and Preserve', '1980-12-02', '13281.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Craters of the Moon National Monument and Preserve', '1924-05-02', '3044.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Great Sand Dunes National Park and Preserve', '2004-09-24', '603.1', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Aniakchak National Monument and Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Craters of the Moon National Monument and Preserve'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Denali National Park and Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gates of the Arctic National Park and Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier Bay National Park and Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Sand Dunes National Park and Preserve'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Katmai National Park and Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Clark National Park and Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wrangell-St. Elias National Park and Preserve'), 'AK');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Aniakchak National Monument and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Aniakchak National Monument and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Craters of the Moon National Monument and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Craters of the Moon National Monument and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Denali National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Denali National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gates of the Arctic National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gates of the Arctic National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier Bay National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier Bay National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Sand Dunes National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Sand Dunes National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Katmai National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Katmai National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Clark National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Clark National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wrangell-St. Elias National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wrangell-St. Elias National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));


-- Battlefield
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Antietam National Battlefield', '1890-08-30', '13.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Big Hole National Battlefield', '1910-06-23', '3.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cowpens National Battlefield', '1929-03-04', '3.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Donelson National Battlefield', '1933-08-10', '5.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Necessity National Battlefield', '1931-03-04', '3.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Monocacy National Battlefield', '1934-06-21', '6.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Moores Creek National Battlefield', '1926-06-02', '0.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Petersburg National Battlefield', '1926-07-03', '37.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Stones River National Battlefield', '1927-03-03', '2.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tupelo National Battlefield', '1933-08-11', '0.0040', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Wilson''s Creek National Battlefield', '1960-04-22', '9.7', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Antietam National Battlefield'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Hole National Battlefield'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cowpens National Battlefield'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Donelson National Battlefield'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Donelson National Battlefield'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Necessity National Battlefield'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Monocacy National Battlefield'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Moores Creek National Battlefield'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Petersburg National Battlefield'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Stones River National Battlefield'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tupelo National Battlefield'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wilson''s Creek National Battlefield'), 'MO');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Antietam National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Hole National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cowpens National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Donelson National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Necessity National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Monocacy National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Moores Creek National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Petersburg National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Stones River National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tupelo National Battlefield'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wilson''s Creek National Battlefield'),	(SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));


-- Battlefield Site
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Brices Cross Roads National Battlefield Site', '1929-02-21', '0.0040', 'false');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Brices Cross Roads National Battlefield Site'), 'MS');
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Brices Cross Roads National Battlefield Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Site'));


-- Battlefield Park
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Kennesaw Mountain National Battlefield Park', '1917-02-18', '11.8', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Manassas National Battlefield Park', '1936-11-14', '20.5', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Richmond National Battlefield Park', '1936-03-02', '33.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('River Raisin National Battlefield Park', '2010-10-22', '0.2', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kennesaw Mountain National Battlefield Park'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manassas National Battlefield Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Richmond National Battlefield Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'River Raisin National Battlefield Park'), 'MI');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kennesaw Mountain National Battlefield Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manassas National Battlefield Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Richmond National Battlefield Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'River Raisin National Battlefield Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Park'));


-- Military Park
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Chickamauga and Chattanooga National Military Park', '1890-08-19', '38.5', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fredericksburg and Spotsylvania County Battlefields Memorial National Military Park', '1927-02-14', '34.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Gettysburg National Military Park', '1895-02-11', '24.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Guilford Courthouse National Military Park', '1917-03-02', '1.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Horseshoe Bend National Military Park', '1956-07-25', '8.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Kings Mountain National Military Park', '1933-08-10', '16.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pea Ridge National Military Park', '1956-07-20', '17.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Shiloh National Military Park', '1894-12-27', '37.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Vicksburg National Military Park', '1899-02-21', '10.2', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chickamauga and Chattanooga National Military Park'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chickamauga and Chattanooga National Military Park'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fredericksburg and Spotsylvania County Battlefields Memorial National Military Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gettysburg National Military Park'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Guilford Courthouse National Military Park'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Horseshoe Bend National Military Park'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kings Mountain National Military Park'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pea Ridge National Military Park'), 'AR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Shiloh National Military Park'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Shiloh National Military Park'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Vicksburg National Military Park'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Vicksburg National Military Park'), 'LA');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chickamauga and Chattanooga National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fredericksburg and Spotsylvania County Battlefields Memorial National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gettysburg National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Guilford Courthouse National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Horseshoe Bend National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kings Mountain National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pea Ridge National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Shiloh National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Vicksburg National Military Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));


-- Historic Site
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Allegheny Portage Railroad National Historic Site', '1964-08-31', '5.1973', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Amache National Historic Site', '2022-03-18', null, 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Andersonville National Historic Site', '1970-10-16', '2.0866', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Andrew Johnson National Historic Site', '1963-12-11', '0.0675', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Bent''s Old Fort National Historic Site', '1960-06-03', '3.2316', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Boston African American National Historic Site', '1980-10-10', '0.0024', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Carl Sandburg Home National Historic Site', '1968-10-17', '1.0865', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Carter G. Woodson Home National Historic Site', '2006-02-27', '0.00061', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Charles Pinckney National Historic Site', '1988-09-08', '0.1151', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Christiansted National Historic Site', '1961-01-16', '0.1099', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Clara Barton National Historic Site', '1974-10-26', '0.0348', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Edgar Allan Poe National Historic Site', '1978-11-10', '0.0021', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Eisenhower National Historic Site', '1967-11-27', '2.7942', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Eleanor Roosevelt National Historic Site', '1977-05-26', '0.7305', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Eugene O''Neill National Historic Site', '1976-10-12', '0.0534', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('First Ladies National Historic Site', '2000-10-11', '0.0019', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ford''s Theatre National Historic Site', '1970-06-23', '0.0012', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Bowie National Historic Site', '1964-08-30', '4.0446', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Davis National Historic Site', '1961-09-08', '2.1165', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Laramie National Historic Site', '1960-04-29', '3.5334', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Larned National Historic Site', '1964-08-31', '2.9072', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Point National Historic Site', '1970-10-16', '0.1174', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Raleigh National Historic Site', '1941-04-05', '2.0871', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Scott National Historic Site', '1978-10-19', '0.0814', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Smith National Historic Site', '1961-09-13', '0.3035', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Union Trading Post National Historic Site', '1966-06-20', '1.7812', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Vancouver National Historic Site', '1961-06-30', '0.8366', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Frederick Douglass National Historic Site', '1988-02-12', '0.0347', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Frederick Law Olmsted National Historic Site', '1979-05-01', '0.0292', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Friendship Hill National Historic Site', '1978-11-10', '2.7298', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Grant–Kohrs Ranch National Historic Site', '1972-08-25', '6.5496', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hampton National Historic Site', '1948-06-22', '0.2511', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Harry S. Truman National Historic Site', '1983-05-23', '0.0509', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Herbert Hoover National Historic Site', '1965-08-12', '0.7560', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Home of Franklin D. Roosevelt National Historic Site', '1944-01-15', '3.3930', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Honouliuli National Historic Site', '2019-03-12', '0.6251', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hopewell Furnace National Historic Site', '1985-09-18', '3.4320', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hubbell Trading Post National Historic Site', '1965-08-28', '0.6479', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('James A. Garfield National Historic Site', '1980-12-28', '0.0316', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('John Fitzgerald Kennedy National Historic Site', '1967-05-26', '0.00036', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('John Muir National Historic Site', '1964-08-31', '1.3927', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Knife River Indian Villages National Historic Site', '1974-10-26', '7.0860', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lincoln Home National Historic Site', '1971-08-18', '0.0495', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Little Rock Central High School National Historic Site', '1999-11-06', '0.1142', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Longfellow House — Washington''s Headquarters National Historic Site', '2010-12-22', '0.0080', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Maggie L. Walker National Historic Site', '1978-11-10', '0.0052', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Manzanar National Historic Site', '1992-03-03', '3.2934', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Martin Van Buren National Historic Site', '1974-10-26', '1.1531', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mary McLeod Bethune Council House National Historic Site', '1991-12-11', '0.00028', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Minidoka National Historic Site', '2008-05-08', '1.6038', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Minuteman Missile National Historic Site', '1999-11-29', '0.1773', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('New Philadelphia National Historic Site', '2022-12-29', '0.5031', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Nicodemus National Historic Site', '1996-11-12', '0.0178', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ninety Six National Historic Site', '1976-08-19', '4.1356', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pennsylvania Avenue National Historic Site', '1965-09-30', '0.0713', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('President William Jefferson Clinton Birthplace Home National Historic Site', '2010-12-14', '0.0028', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Puʻukoholā Heiau National Historic Site', '1972-08-17', '0.3490', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Sagamore Hill National Historic Site', '1963-07-08', '0.3360', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Saint Paul''s Church National Historic Site', '1978-11-10', '0.0248', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Salem Maritime National Historic Site', '1938-03-17', '0.0365', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('San Juan National Historic Site', '1949-02-14', '0.3040', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Sand Creek Massacre National Historic Site', '2007-04-27', '50.9230', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Saugus Iron Works National Historic Site', '1968-04-05', '0.0344', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Springfield Armory National Historic Site', '1974-10-26', '0.2223', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Steamtown National Historic Site', '1986-10-30', '0.2528', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Theodore Roosevelt Birthplace National Historic Site', '1970-06-18', '0.00045', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Theodore Roosevelt Inaugural National Historic Site', '1966-11-02', '0.0048', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Thomas Stone National Historic Site', '1978-11-10', '1.3284', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tuskegee Airmen National Historic Site', '1998-11-06', '0.3629', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tuskegee Institute National Historic Site', '1974-10-26', '0.2344', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ulysses S. Grant National Historic Site', '1989-10-02', '0.0388', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Vanderbilt Mansion National Historic Site', '1940-12-18', '0.8565', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Washita Battlefield National Historic Site', '1996-11-12', '1.2756', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Whitman Mission National Historic Site', '1963-01-01', '0.5606', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('William Howard Taft National Historic Site', '1969-12-02', '0.0147', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Allegheny Portage Railroad National Historic Site'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Amache National Historic Site'),'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Andersonville National Historic Site'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Andrew Johnson National Historic Site'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bent''s Old Fort National Historic Site'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Boston African American National Historic Site'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Carl Sandburg Home National Historic Site'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Carter G. Woodson Home National Historic Site'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Charles Pinckney National Historic Site'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Christiansted National Historic Site'), 'VI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Clara Barton National Historic Site'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Edgar Allan Poe National Historic Site'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Eisenhower National Historic Site'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Eleanor Roosevelt National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Eugene O''Neill National Historic Site'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'First Ladies National Historic Site'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ford''s Theatre National Historic Site'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Bowie National Historic Site'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Davis National Historic Site'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Laramie National Historic Site'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Larned National Historic Site'), 'KS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Point National Historic Site'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Raleigh National Historic Site'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Scott National Historic Site'), 'KS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Smith National Historic Site'), 'AR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Smith National Historic Site'), 'OK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Union Trading Post National Historic Site'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Union Trading Post National Historic Site'), 'ND');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Vancouver National Historic Site'), 'OR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Vancouver National Historic Site'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Frederick Douglass National Historic Site'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Frederick Law Olmsted National Historic Site'),'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Friendship Hill National Historic Site'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grant–Kohrs Ranch National Historic Site'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hampton National Historic Site'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harry S. Truman National Historic Site'), 'MO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Herbert Hoover National Historic Site'), 'IA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Home of Franklin D. Roosevelt National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Honouliuli National Historic Site'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hopewell Furnace National Historic Site'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hubbell Trading Post National Historic Site'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'James A. Garfield National Historic Site'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'John Fitzgerald Kennedy National Historic Site'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'John Muir National Historic Site'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Knife River Indian Villages National Historic Site'), 'ND');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lincoln Home National Historic Site'), 'IL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Little Rock Central High School National Historic Site'), 'AR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Longfellow House — Washington''s Headquarters National Historic Site'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Maggie L. Walker National Historic Site'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manzanar National Historic Site'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Martin Van Buren National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mary McLeod Bethune Council House National Historic Site'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Minidoka National Historic Site'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Minuteman Missile National Historic Site'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'New Philadelphia National Historic Site'), 'IL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Nicodemus National Historic Site'), 'KS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ninety Six National Historic Site'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pennsylvania Avenue National Historic Site'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'President William Jefferson Clinton Birthplace Home National Historic Site'), 'AR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Puʻukoholā Heiau National Historic Site'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sagamore Hill National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint Paul''s Church National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Salem Maritime National Historic Site'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Juan National Historic Site'), 'PR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sand Creek Massacre National Historic Site'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saugus Iron Works National Historic Site'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Springfield Armory National Historic Site'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Steamtown National Historic Site'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt Birthplace National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt Inaugural National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thomas Stone National Historic Site'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tuskegee Airmen National Historic Site'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tuskegee Institute National Historic Site'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ulysses S. Grant National Historic Site'), 'MO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Vanderbilt Mansion National Historic Site'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Washita Battlefield National Historic Site'), 'OK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Whitman Mission National Historic Site'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'William Howard Taft National Historic Site'), 'OH');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Allegheny Portage Railroad National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Amache National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Andersonville National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Andrew Johnson National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bent''s Old Fort National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Boston African American National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Carl Sandburg Home National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Carter G. Woodson Home National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Charles Pinckney National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Christiansted National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Clara Barton National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Edgar Allan Poe National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Eisenhower National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Eleanor Roosevelt National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Eugene O''Neill National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'First Ladies National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ford''s Theatre National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Bowie National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Davis National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Laramie National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Larned National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Point National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Raleigh National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Scott National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Smith National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Union Trading Post National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Vancouver National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Frederick Douglass National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Frederick Law Olmsted National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Friendship Hill National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grant–Kohrs Ranch National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hampton National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harry S. Truman National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Herbert Hoover National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Home of Franklin D. Roosevelt National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Honouliuli National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hopewell Furnace National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hubbell Trading Post National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'James A. Garfield National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'John Fitzgerald Kennedy National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'John Muir National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Knife River Indian Villages National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lincoln Home National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Little Rock Central High School National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Longfellow House — Washington''s Headquarters National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Maggie L. Walker National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manzanar National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Martin Van Buren National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mary McLeod Bethune Council House National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Minidoka National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Minuteman Missile National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'New Philadelphia National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Nicodemus National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ninety Six National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pennsylvania Avenue National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'President William Jefferson Clinton Birthplace Home National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Puʻukoholā Heiau National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sagamore Hill National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint Paul''s Church National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Salem Maritime National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Juan National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sand Creek Massacre National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saugus Iron Works National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Springfield Armory National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Steamtown National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt Birthplace National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt Inaugural National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thomas Stone National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tuskegee Airmen National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tuskegee Institute National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ulysses S. Grant National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Vanderbilt Mansion National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Washita Battlefield National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Whitman Mission National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'William Howard Taft National Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));


-- International Historic Site
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Saint Croix Island International Historic Site', '1984-09-25', '0.026', 'false');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint Croix Island International Historic Site'), 'ME');
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint Croix Island International Historic Site'), (SELECT designation_id FROM designation WHERE designation_name = 'International Historic Site'));


-- Historical Parks
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Abraham Lincoln Birthplace National Historical Park', '2009-03-30', '1.3941', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Adams National Historical Park', '1998-11-02', '0.0964', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Appomattox Court House National Historical Park', '1954-04-15', '7.1816', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Blackstone River Valley National Historical Park', '2014-12-19', '6.0258', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Boston National Historical Park', '1974-10-01', '0.1773', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Brown v. Board of Education National Historical Park', '2022-05-12', '0.0075', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cane River Creole National Historical Park', '1994-11-02', '0.8316', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cedar Creek and Belle Grove National Historical Park', '2002-12-19', '14.9934', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Chaco Culture National Historical Park', '1980-12-19', '137.4320', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Chesapeake and Ohio Canal National Historical Park', '1971-01-08', '79.3887', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Colonial National Historical Park', '1936-06-05', '35.1066', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cumberland Gap National Historical Park', '1940-06-11', '99.3375', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Dayton Aviation Heritage National Historical Park', '1992-10-16', '0.4474', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('First State National Historical Park', '2014-12-19', '5.7029', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Sumter and Fort Moultrie National Historical Park', '2019-03-12', '0.9410', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('George Rogers Clark National Historical Park', '1966-07-23', '0.1059', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Golden Spike National Historical Park', '2019-03-12', '11.0693', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Harpers Ferry National Historical Park', '1963-05-29', '14.8487', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Harriet Tubman National Historical Park', '2017-01-10', '0.1275', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Harriet Tubman Underground Railroad National Historical Park', '2014-12-19', '1.9425', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Homestead National Historical Park', '2021-01-13', '0.8517', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hopewell Culture National Historical Park', '1992-05-27', '7.1863', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Independence National Historical Park', '1948-06-28', '0.1816', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Jean Lafitte National Historical Park and Preserve', '1978-11-10', '104.7159', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Jimmy Carter National Historical Park', '2021-01-13', '0.3171', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Kalaupapa National Historical Park', '1980-12-22', '43.6206', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Kaloko-Honokōhau National Historical Park', '1978-11-10', '4.7067', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Keweenaw National Historical Park', '1992-10-27', '7.5676', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Klondike Gold Rush National Historical Park', '1976-06-30', '52.5949', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lewis and Clark National Historical Park', '2004-10-30', '13.8004', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lowell National Historical Park', '1978-06-05', '0.5735', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lyndon B. Johnson National Historical Park', '1980-12-28', '6.3605', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Manhattan Project National Historical Park', '2015-11-11', '0.4598', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Marsh-Billings-Rockefeller National Historical Park', '1998-10-21', '2.6024', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Martin Luther King Jr. National Historical Park', '2018-01-08', '0.1585', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Minute Man National Historical Park', '1959-09-21', '4.1592', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Morristown National Historical Park', '1933-07-04', '6.9230', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Natchez National Historical Park', '1988-10-07', '0.4846', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('New Bedford Whaling National Historical Park', '1996-11-12', '0.1376', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('New Orleans Jazz National Historical Park', '1994-10-31', '0.0208', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Nez Perce National Historical Park', '1965-05-15', '18.4736', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ocmulgee Mounds National Historical Park', '2019-03-12', '13.7671', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Palo Alto Battlefield National Historical Park', '2009-03-30', '13.8681', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Paterson Great Falls National Historical Park', '2011-11-07', '0.2077', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pecos National Historical Park', '1990-06-27', '27.0876', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pullman National Historical Park', '2022-12-29', '0.002', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Puʻuhonua o Hōnaunau National Historical Park', '1978-11-10', '1.6989', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Reconstruction Era National Historical Park', '2019-03-12', '0.2630', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Rosie the Riveter/World War II Home Front National Historical Park', '2000-10-24', '0.5876', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Saint-Gaudens National Historical Park', '2019-03-12', '0.7719', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ste. Genevieve National Historical Park', '2020-10-30', '0.0684', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Salt River Bay National Historical Park and Ecological Preserve', '1992-02-24', '4.0040', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('San Antonio Missions National Historical Park', '1978-11-10', '3.8355', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('San Francisco Maritime National Historical Park', '1988-06-27', '0.2018', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('San Juan Island National Historical Park', '1966-09-09', '8.6828', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Saratoga National Historical Park', '1938-06-01', '14.4843', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Sitka National Historical Park', '1972-10-18', '0.4706', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Thomas Edison National Historical Park', '2009-03-30', '0.0860', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tumacácori National Historical Park', '1990-08-06', '1.4582', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Valley Forge National Historical Park', '1976-07-04', '14.0367', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('War in the Pacific National Historical Park', '1978-08-18', '8.2177', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Weir Farm National Historical Park', '2021-01-05', '0.3003', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Women''s Rights National Historical Park', '1980-12-28', '0.0301', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Abraham Lincoln Birthplace National Historical Park'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Adams National Historical Park'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appomattox Court House National Historical Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Blackstone River Valley National Historical Park'), 'RI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Blackstone River Valley National Historical Park'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Boston National Historical Park'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Brown v. Board of Education National Historical Park'), 'KS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Brown v. Board of Education National Historical Park'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cane River Creole National Historical Park'), 'LA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cedar Creek and Belle Grove National Historical Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chaco Culture National Historical Park'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chesapeake and Ohio Canal National Historical Park'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chesapeake and Ohio Canal National Historical Park'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chesapeake and Ohio Canal National Historical Park'), 'WV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Colonial National Historical Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cumberland Gap National Historical Park'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cumberland Gap National Historical Park'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cumberland Gap National Historical Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dayton Aviation Heritage National Historical Park'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'First State National Historical Park'), 'DE');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'First State National Historical Park'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Sumter and Fort Moultrie National Historical Park'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Rogers Clark National Historical Park'), 'IN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Golden Spike National Historical Park'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harpers Ferry National Historical Park'), 'WV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harpers Ferry National Historical Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harpers Ferry National Historical Park'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harriet Tubman National Historical Park'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harriet Tubman Underground Railroad National Historical Park'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Homestead National Historical Park'), 'NE');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hopewell Culture National Historical Park'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Independence National Historical Park'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Jean Lafitte National Historical Park and Preserve'), 'LA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Jimmy Carter National Historical Park'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kalaupapa National Historical Park'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kaloko-Honokōhau National Historical Park'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Keweenaw National Historical Park'), 'MI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Klondike Gold Rush National Historical Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Klondike Gold Rush National Historical Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lewis and Clark National Historical Park'), 'OR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lewis and Clark National Historical Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lowell National Historical Park'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lyndon B. Johnson National Historical Park'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manhattan Project National Historical Park'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manhattan Project National Historical Park'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manhattan Project National Historical Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Marsh-Billings-Rockefeller National Historical Park'), 'VT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Martin Luther King Jr. National Historical Park'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Minute Man National Historical Park'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Morristown National Historical Park'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez National Historical Park'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'New Bedford Whaling National Historical Park'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'New Orleans Jazz National Historical Park'), 'LA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Nez Perce National Historical Park'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Nez Perce National Historical Park'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Nez Perce National Historical Park'), 'OR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Nez Perce National Historical Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ocmulgee Mounds National Historical Park'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Palo Alto Battlefield National Historical Park'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Paterson Great Falls National Historical Park'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pecos National Historical Park'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pullman National Historical Park'), 'IL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Puʻuhonua o Hōnaunau National Historical Park'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Reconstruction Era National Historical Park'), 'SC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rosie the Riveter/World War II Home Front National Historical Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint-Gaudens National Historical Park'), 'NH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Salt River Bay National Historical Park and Ecological Preserve'), 'VI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ste. Genevieve National Historical Park'), 'MO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Antonio Missions National Historical Park'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Francisco Maritime National Historical Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Juan Island National Historical Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saratoga National Historical Park'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sitka National Historical Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thomas Edison National Historical Park'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tumacácori National Historical Park'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Valley Forge National Historical Park'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'War in the Pacific National Historical Park'), 'GU');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Weir Farm National Historical Park'), 'CT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Women''s Rights National Historical Park'), 'NY');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Abraham Lincoln Birthplace National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Adams National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appomattox Court House National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Blackstone River Valley National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Boston National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Brown v. Board of Education National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cane River Creole National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cedar Creek and Belle Grove National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chaco Culture National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chesapeake and Ohio Canal National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Colonial National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cumberland Gap National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dayton Aviation Heritage National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'First State National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Sumter and Fort Moultrie National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Rogers Clark National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Golden Spike National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harpers Ferry National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harriet Tubman National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Harriet Tubman Underground Railroad National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Homestead National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hopewell Culture National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Independence National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Jean Lafitte National Historical Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Jimmy Carter National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kalaupapa National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kaloko-Honokōhau National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Keweenaw National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Klondike Gold Rush National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lewis and Clark National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lowell National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lyndon B. Johnson National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Manhattan Project National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Marsh-Billings-Rockefeller National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Martin Luther King Jr. National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Minute Man National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Morristown National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'New Bedford Whaling National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'New Orleans Jazz National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Nez Perce National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ocmulgee Mounds National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Palo Alto Battlefield National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Paterson Great Falls National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pecos National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pullman National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Puʻuhonua o Hōnaunau National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Reconstruction Era National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rosie the Riveter/World War II Home Front National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint-Gaudens National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ste. Genevieve National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Salt River Bay National Historical Park and Ecological Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Antonio Missions National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Francisco Maritime National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'San Juan Island National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saratoga National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sitka National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thomas Edison National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tumacácori National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Valley Forge National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'War in the Pacific National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Weir Farm National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Women''s Rights National Historical Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));


-- Memorials
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Arkansas Post National Memorial', '1960-07-06', '3.0655', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Arlington House, The Robert E. Lee National Memorial', '1955-06-25', '0.1136', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Chamizal National Memorial', '1974-02-04', '0.2222', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Coronado National Memorial', '1952-11-05', '19.5472', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('De Soto National Memorial', '1948-03-11', '0.12', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Dwight D. Eisenhower Memorial', '2020-09-17', '0.0137', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Federal Hall National Memorial', '1955-08-11', '0.0018', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Flight 93 National Memorial', '2011-09-10', '9.3885', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Caroline National Memorial', '1953-01-16', '0.56', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Franklin Delano Roosevelt Memorial', '1997-05-02', '0.0329', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('General Grant National Memorial', '1959-05-01', '0.0031', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hamilton Grange National Memorial', '1988-11-19', '0.0042', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Johnstown Flood National Memorial', '1964-08-31', '0.7194', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Korean War Veterans Memorial', '1995-07-27', '0.0063', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lincoln Boyhood National Memorial', '1962-02-19', '0.8080', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lincoln Memorial', '1922-05-30', '0.0295', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lyndon Baines Johnson Memorial Grove on the Potomac', '1974-09-27', '0.0688', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Martin Luther King Jr. Memorial', '2011-08-28', '0.0111', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mount Rushmore National Memorial', '1939-07-01', '5.1737', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pearl Harbor National Memorial', '2019-03-12', '0.0862', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Perry''s Victory and International Peace Memorial', '1972-10-26', '0.1027', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Port Chicago Naval Magazine National Memorial', '1992-10-28', '0.0202', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Roger Williams National Memorial', '1965-10-22', '0.0185', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Thaddeus Kosciuszko National Memorial', '1972-10-21', '0.0081', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Theodore Roosevelt Island', '1967-10-27', '0.3581', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Thomas Jefferson Memorial', '1943-04-13', '0.0743', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Vietnam Veterans Memorial', '1982-11-13', '0.0088', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Washington Monument', '1885-02-21', '0.4290', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('World War I Memorial', '2014-12-19', '0.0071', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('World War II Memorial', '2004-05-29', '0.0334', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Wright Brothers National Memorial', '1953-12-04', '1.7338', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Arkansas Post National Memorial'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Arlington House, The Robert E. Lee National Memorial'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chamizal National Memorial'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Coronado National Memorial'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'De Soto National Memorial'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dwight D. Eisenhower Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Federal Hall National Memorial'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Flight 93 National Memorial'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Caroline National Memorial'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Franklin Delano Roosevelt Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'General Grant National Memorial'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hamilton Grange National Memorial'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Johnstown Flood National Memorial'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Korean War Veterans Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lincoln Boyhood National Memorial'), 'IN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lincoln Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lyndon Baines Johnson Memorial Grove on the Potomac'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Martin Luther King Jr. Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mount Rushmore National Memorial'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pearl Harbor National Memorial'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Perry''s Victory and International Peace Memorial'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Port Chicago Naval Magazine National Memorial'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Roger Williams National Memorial'), 'RI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thaddeus Kosciuszko National Memorial'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt Island'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thomas Jefferson Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Vietnam Veterans Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Washington Monument'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'World War I Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'World War II Memorial'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wright Brothers National Memorial'), 'NC');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Arkansas Post National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Arlington House, The Robert E. Lee National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chamizal National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Coronado National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'De Soto National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dwight D. Eisenhower Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Federal Hall National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Flight 93 National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Caroline National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Franklin Delano Roosevelt Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'General Grant National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hamilton Grange National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Johnstown Flood National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Korean War Veterans Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lincoln Boyhood National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lincoln Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lyndon Baines Johnson Memorial Grove on the Potomac'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Martin Luther King Jr. Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mount Rushmore National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pearl Harbor National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Perry''s Victory and International Peace Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Port Chicago Naval Magazine National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Roger Williams National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thaddeus Kosciuszko National Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt Island'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Thomas Jefferson Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Vietnam Veterans Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Washington Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'World War I Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'World War II Memorial'), (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wright Brothers National Memorial'),  (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));


-- Monuments
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('African Burial Ground National Monument', '2006-02-27', '0.001', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Agate Fossil Beds National Monument', '1997-06-14', '12.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Alibates Flint Quarries National Monument', '1965-08-21', '5.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Aztec Ruins National Monument', '1923-01-24', '1.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Bandelier National Monument', '1916-02-11', '136.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Belmont-Paul Women''s Equality National Monument', '2016-04-12', '0.001', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Birmingham Civil Rights National Monument', '2017-01-12', '0.004', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Booker T. Washington National Monument', '1956-04-02', '1.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Buck Island Reef National Monument', '1961-12-28', '77.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cabrillo National Monument', '1913-10-14', '0.6', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Camp Nelson National Monument', '2018-10-26', '1.5', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Canyon de Chelly National Monument', '1931-04-01', '339.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cape Krusenstern National Monument', '1978-12-01', '2626.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Capulin Volcano National Monument', '1916-08-09', '3.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Casa Grande Ruins National Monument', '1918-08-03', '1.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Castillo de San Marcos National Monument', '1924-10-15', '0.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Castle Clinton National Monument', '1946-08-12', '0.004', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Castle Mountains National Monument', '2016-02-12', '85.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cedar Breaks National Monument', '1933-08-22', '24.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('César E. Chávez National Monument', '2012-10-08', '0.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Charles Young Buffalo Soldiers National Monument', '2013-03-25', '0.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Chiricahua National Monument', '1924-04-18', '48.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Colorado National Monument', '1911-05-24', '83.1', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Devils Postpile National Monument', '1911-07-06', '3.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Devils Tower National Monument', '1906-09-24', '5.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Dinosaur National Monument', '1915-10-4', '851.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Effigy Mounds National Monument', '1949-10-25', '10.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('El Malpais National Monument', '1987-12-31', '462.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('El Morro National Monument', '1906-12-8', '5.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Emmett Till and Mamie Till-Mobley National Monument', '2023-07-25', '0.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Florissant Fossil Beds National Monument', '1969-08-20', '25.5', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Frederica National Monument', '1936-05-26', '1.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Matanzas National Monument', '1924-10-15', '1.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort McHenry National Monument and Historic Shrine Monument', '1925-03-03', '0.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Monroe National Monument', '2011-11-01', '1.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Pulaski National Monument', '1924-10-15', '22.8', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Stanwix National Monument', '1935-08-21', '0.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Union National Monument', '1956-04-05', '2.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fossil Butte National Monument', '1972-10-23', '33.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Freedom Riders National Monument', '2017-01-12', '0.02', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('George Washington Birthplace National Monument', '1930-01-23', '2.6', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('George Washington Carver National Monument', '1943-07-14', '0.8', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Gila Cliff Dwellings National Monument', '1907-11-16', '2.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Governors Island National Monument', '2001-01-19', '0.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Grand Canyon-Parashant National Monument', '2000-01-11', '4132.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Grand Portage National Monument', '1960-01-27', '2.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hagerman Fossil Beds National Monument', '1988-11-18', '17.6', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hohokam Pima National Monument', '1972-10-21', '6.8', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hovenweep National Monument', '1923-03-02', '3.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Jewel Cave National Monument', '1908-02-07', '5.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('John Day Fossil Beds National Monument', '1974-10-26', '56.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Katahdin Woods and Waters National Monument', '2016-08-24', '354.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lava Beds National Monument', '1925-11-21', '189.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Little Bighorn Battlefield National Monument', '1940-07-01', '3.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Medgar and Myrlie Evers Home National Monument', '2020-12-10', '0.0', 'False');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mill Springs Battlefield National Monument', '2020-09-22', '5.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Montezuma Castle National Monument', '1906-12-08', '4.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Muir Woods National Monument', '1908-01-09', '2.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Natural Bridges National Monument', '1908-04-16', '30.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Navajo National Monument', '1909-03-20', '1.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Oregon Caves National Monument', '1909-07-12', '18.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Organ Pipe Cactus National Monument', '1937-04-13', '1338.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Petroglyph National Monument', '1990-06-27', '29.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pipe Spring National Monument', '1923-05-31', '0.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pipestone National Monument', '1937-08-25', '1.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Poverty Point National Monument', '1988-10-31', '3.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Rainbow Bridge National Monument', '1910-05-30', '0.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Russell Cave National Monument', '1961-05-11', '1.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Salinas Pueblo Missions National Monument', '1909-11-01', '4.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Scotts Bluff National Monument', '1919-12-12', '12.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Statue of Liberty National Monument', '1924-10-15', '0.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Stonewall National Monument', '2016-06-24', '0.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Sunset Crater Volcano National Monument', '1930-05-30', '12.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Timpanogos Cave National Monument', '1922-10-14', '1.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tonto National Monument', '1907-10-21', '4.5', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tule Lake National Monument', '2008-12-05', '5.629', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tule Springs Fossil Beds National Monument', '2014-12-19', '91.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tuzigoot National Monument', '1939-07-25', '3.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Virgin Islands Coral Reef National Monument', '2001-01-17', '51.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Waco Mammoth National Monument', '2015-07-10', '0.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Walnut Canyon National Monument', '1915-11-30', '14.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Wupatki National Monument', '1924-12-09', '143.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Yucca House National Monument', '1919-12-19', '0.1', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'African Burial Ground National Monument'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Agate Fossil Beds National Monument'), 'NE');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Alibates Flint Quarries National Monument'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Aztec Ruins National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bandelier National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Belmont-Paul Women''s Equality National Monument'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Birmingham Civil Rights National Monument'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Booker T. Washington National Monument'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Buck Island Reef National Monument'), 'VI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cabrillo National Monument'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Camp Nelson National Monument'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Canyon de Chelly National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Krusenstern National Monument'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Capulin Volcano National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Casa Grande Ruins National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Castillo de San Marcos National Monument'),'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Castle Clinton National Monument'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Castle Mountains National Monument'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cedar Breaks National Monument'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'César E. Chávez National Monument'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Charles Young Buffalo Soldiers National Monument'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chiricahua National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Colorado National Monument'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Devils Postpile National Monument'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Devils Tower National Monument'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dinosaur National Monument'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dinosaur National Monument'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Effigy Mounds National Monument'), 'IA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'El Malpais National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'El Morro National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Emmett Till and Mamie Till-Mobley National Monument'), 'IL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Emmett Till and Mamie Till-Mobley National Monument'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Florissant Fossil Beds National Monument'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Frederica National Monument'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Matanzas National Monument'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort McHenry National Monument and Historic Shrine Monument'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Monroe National Monument'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Pulaski National Monument'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Stanwix National Monument'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Union National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fossil Butte National Monument'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Freedom Riders National Monument'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Birthplace National Monument'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Carver National Monument'), 'MO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gila Cliff Dwellings National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Governors Island National Monument'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Canyon-Parashant National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Portage National Monument'), 'MN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hagerman Fossil Beds National Monument'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hohokam Pima National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hovenweep National Monument'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hovenweep National Monument'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Jewel Cave National Monument'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'John Day Fossil Beds National Monument'), 'OR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Katahdin Woods and Waters National Monument'), 'ME');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lava Beds National Monument'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Little Bighorn Battlefield National Monument'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Medgar and Myrlie Evers Home National Monument'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mill Springs Battlefield National Monument'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Montezuma Castle National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Muir Woods National Monument'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natural Bridges National Monument'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Navajo National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Oregon Caves National Monument'), 'OR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Organ Pipe Cactus National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Petroglyph National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pipe Spring National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pipestone National Monument'), 'MN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Poverty Point National Monument'), 'LA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rainbow Bridge National Monument'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Russell Cave National Monument'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Salinas Pueblo Missions National Monument'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Scotts Bluff National Monument'), 'NE');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Statue of Liberty National Monument'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Statue of Liberty National Monument'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Stonewall National Monument'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sunset Crater Volcano National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Timpanogos Cave National Monument'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tonto National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tule Lake National Monument'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tule Springs Fossil Beds National Monument'), 'NV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tuzigoot National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Virgin Islands Coral Reef National Monument'), 'VI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Waco Mammoth National Monument'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Walnut Canyon National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wupatki National Monument'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yucca House National Monument'), 'CO');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'African Burial Ground National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Agate Fossil Beds National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Alibates Flint Quarries National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Aztec Ruins National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bandelier National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Belmont-Paul Women''s Equality National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Birmingham Civil Rights National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Booker T. Washington National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Buck Island Reef National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cabrillo National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Camp Nelson National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Canyon de Chelly National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Krusenstern National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Capulin Volcano National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Casa Grande Ruins National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Castillo de San Marcos National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Castle Clinton National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Castle Mountains National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cedar Breaks National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'César E. Chávez National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Charles Young Buffalo Soldiers National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chiricahua National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Colorado National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Devils Postpile National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Devils Tower National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dinosaur National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Effigy Mounds National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'El Malpais National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'El Morro National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Emmett Till and Mamie Till-Mobley National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Florissant Fossil Beds National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Frederica National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Matanzas National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort McHenry National Monument and Historic Shrine Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Monroe National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Pulaski National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Stanwix National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Union National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fossil Butte National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Freedom Riders National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Birthplace National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Carver National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gila Cliff Dwellings National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Governors Island National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Canyon-Parashant National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Portage National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hagerman Fossil Beds National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hohokam Pima National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hovenweep National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Jewel Cave National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'John Day Fossil Beds National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Katahdin Woods and Waters National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lava Beds National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Little Bighorn Battlefield National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Medgar and Myrlie Evers Home National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mill Springs Battlefield National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Montezuma Castle National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Muir Woods National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natural Bridges National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Navajo National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Oregon Caves National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Organ Pipe Cactus National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Petroglyph National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pipe Spring National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pipestone National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Poverty Point National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rainbow Bridge National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Russell Cave National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Salinas Pueblo Missions National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Scotts Bluff National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Statue of Liberty National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Stonewall National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sunset Crater Volcano National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Timpanogos Cave National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tonto National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tule Lake National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tule Springs Fossil Beds National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tuzigoot National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Virgin Islands Coral Reef National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Waco Mammoth National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Walnut Canyon National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wupatki National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yucca House National Monument'), (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));


-- Parks
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Acadia National Park', '1919-02-26', '198.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Arches National Park', '1971-11-12', '310.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Badlands National Park', '1978-11-10', '982.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Big Bend National Park', '1944-06-12', '3242.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Biscayne National Park', '1980-06-28', '700', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Black Canyon of the Gunnison National Park', '1999-10-21', '124.6', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Bryce Canyon National Park', '1928-02-25', '145', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Canyonlands National Park', '1964-09-12', '1366.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Capitol Reef National Park', '1971-12-18', '979', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Carlsbad Caverns National Park', '1930-05-14', '189.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Channel Islands National Park', '1980-03-05', '1009.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Congaree National Park', '2003-11-10', '107.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Crater Lake National Park', '1902-05-22', '741.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cuyahoga Valley National Park', '2000-10-11', '131.8', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Death Valley National Park', '1994-10-31', '13793.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Dry Tortugas National Park', '1992-10-26', '261.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Everglades National Park', '1934-05-30', '6106.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Gateway Arch National Park', '2018-02-22', '0.8', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Glacier National Park', '1910-05-11', '4100', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Grand Canyon National Park', '1919-02-26', '4862.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Grand Teton National Park', '1929-02-26', '1254.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Great Basin National Park', '1986-10-27', '312.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Great Smoky Mountains National Park', '1934-06-15', '2114.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Guadalupe Mountains National Park', '1972-09-30', '349.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Haleakalā National Park', '1961-07-01', '134.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hawaiʻi Volcanoes National Park', '1916-08-01', '1317.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Hot Springs National Park', '1921-03-04', '22.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Indiana Dunes National Park', '2019-02-15', '62.1', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Isle Royale National Park', '1940-04-03', '2314', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Joshua Tree National Park', '1994-10-31', '3217.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Kenai Fjords National Park', '1980-12-02', '2710', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Kings Canyon National Park', '1940-03-04', '1869.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Kobuk Valley National Park', '1980-12-02', '7084.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lassen Volcanic National Park', '1916-08-09', '431.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mammoth Cave National Park', '1941-07-01', '218.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mesa Verde National Park', '1906-06-29', '212.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mount Rainier National Park', '1899-03-02', '956.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('National Park of American Samoa', '1988-10-31', '33.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('New River Gorge National Park and Preserve', '2020-12-27', '28.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('North Cascades National Park', '1968-10-02', '2042.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Olympic National Park', '1938-06-29', '3733.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Petrified Forest National Park', '1962-12-09', '895.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pinnacles National Park', '2013-01-10', '108', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Redwood National Park', '1968-10-02', '562.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Rocky Mountain National Park', '1915-01-26', '1075.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Saguaro National Park', '1994-10-14', '375.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Sequoia National Park', '1890-09-25', '1635.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Shenandoah National Park', '1935-12-26', '806.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Theodore Roosevelt National Park', '1978-11-10', '285.1', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Virgin Islands National Park', '1956-08-02', '60.9', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Voyageurs National Park', '1975-04-08', '883.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('White Sands National Park', '2019-12-20', '592.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Wind Cave National Park', '1903-01-09', '137.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Yellowstone National Park', '1872-03-01', '8983.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Yosemite National Park', '1890-10-01', '3082.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Zion National Park', '1919-11-19', '595.9', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Acadia National Park'), 'ME');
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
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dry Tortugas National Park'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Everglades National Park'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gateway Arch National Park'), 'MO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier National Park'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Canyon National Park'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Teton National Park'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Basin National Park'), 'NV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Smoky Mountains National Park'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Smoky Mountains National Park'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Guadalupe Mountains National Park'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Haleakalā National Park'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hawaiʻi Volcanoes National Park'), 'HI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hot Springs National Park'), 'AR');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Indiana Dunes National Park'), 'IN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Isle Royale National Park'), 'MI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Joshua Tree National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kenai Fjords National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kings Canyon National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kobuk Valley National Park'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lassen Volcanic National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mammoth Cave National Park'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mesa Verde National Park'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mount Rainier National Park'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'National Park of American Samoa'), 'VI');
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
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone National Park'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone National Park'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone National Park'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yosemite National Park'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Zion National Park'), 'UT');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Acadia National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Arches National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Badlands National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Bend National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Biscayne National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Black Canyon of the Gunnison National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bryce Canyon National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Canyonlands National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Capitol Reef National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Carlsbad Caverns National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Channel Islands National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Congaree National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Crater Lake National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cuyahoga Valley National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Death Valley National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Dry Tortugas National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Everglades National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gateway Arch National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glacier National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Canyon National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Grand Teton National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Basin National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Smoky Mountains National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Guadalupe Mountains National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Haleakalā National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hawaiʻi Volcanoes National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Hot Springs National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Indiana Dunes National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Isle Royale National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Joshua Tree National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kenai Fjords National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kings Canyon National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Kobuk Valley National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lassen Volcanic National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mammoth Cave National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mesa Verde National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mount Rainier National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'National Park of American Samoa'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'New River Gorge National Park and Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Cascades National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Olympic National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Petrified Forest National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pinnacles National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Redwood National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rocky Mountain National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saguaro National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sequoia National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Shenandoah National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Theodore Roosevelt National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Virgin Islands National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Voyageurs National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'White Sands National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wind Cave National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yellowstone National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yosemite National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Zion National Park'), (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));


-- Parkways
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Blue Ridge Parkway', '1936-06-30', '403.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('George Washington Memorial Parkway', '1930-05-29', '27.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('John D. Rockefeller Jr. Memorial Parkway', '1972-08-25', '96.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Natchez Trace Parkway', '1938-05-08', '211.7', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Blue Ridge Parkway'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Blue Ridge Parkway'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Memorial Parkway'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Memorial Parkway'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Memorial Parkway'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'John D. Rockefeller Jr. Memorial Parkway'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez Trace Parkway'), 'MS');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Blue Ridge Parkway'), (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'George Washington Memorial Parkway'), (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'John D. Rockefeller Jr. Memorial Parkway'), (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez Trace Parkway'), (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));


-- Preserves
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Bering Land Bridge National Preserve', '1980-12-02', '10916.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Big Cypress National Preserve', '1974-10-11', '2916.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Big Thicket National Preserve', '1974-10-11', '457.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Little River Canyon National Preserve', '1992-10-24', '61.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mojave National Preserve', '1994-10-31', '6264.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Noatak National Preserve', '1980-12-02', '26656.9', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Tallgrass Prairie National Preserve', '1996-11-12', '44.0', 'true');;
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Timucuan Ecological and Historic Preserve', '1988-02-16', '187.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Valles Caldera National Preserve', '2014-02-19', '363.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Yukon–Charley Rivers National Preserve', '1980-12-02', '10224.4', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bering Land Bridge National Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Cypress National Preserve'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Thicket National Preserve'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Little River Canyon National Preserve'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mojave National Preserve'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Noatak National Preserve'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tallgrass Prairie National Preserve'), 'KS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Timucuan Ecological and Historic Preserve'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Valles Caldera National Preserve'), 'NM');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yukon–Charley Rivers National Preserve'), 'AK');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bering Land Bridge National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Cypress National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big Thicket National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Little River Canyon National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mojave National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Noatak National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Tallgrass Prairie National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Timucuan Ecological and Historic Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Valles Caldera National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Yukon–Charley Rivers National Preserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));


-- Reserves
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('City of Rocks National Reserve', '1988-11-18', '58.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ebey''s Landing National Historical Reserve', '1978-11-10', '78.2', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'City of Rocks National Reserve'), 'ID');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ebey''s Landing National Historical Reserve'), 'WA');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'City of Rocks National Reserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Reserve'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ebey''s Landing National Historical Reserve'), (SELECT designation_id FROM designation WHERE designation_name = 'National Reserve'));


-- Recreation Areas
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Amistad National Recreation Area', '1990-11-28', '254.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Bighorn Canyon National Recreation Area', '1966-10-15', '486.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Boston Harbor Islands National Recreation Area', '1996-11-12', '6.0', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Chattahoochee River National Recreation Area', '1978-08-15', '50.6', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Chickasaw National Recreation Area', '1976-03-17', '40.1', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Curecanti National Recreation Area', '1965-02-11', '176.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Delaware Water Gap National Recreation Area', '1965-09-01', '278.1', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Gateway National Recreation Area', '1972-10-27', '107.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Gauley River National Recreation Area', '1988-10-26', '46.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Glen Canyon National Recreation Area', '1972-10-27', '5075.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Golden Gate National Recreation Area', '1972-10-27', '332.3', 'false');;
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lake Chelan National Recreation Area', '1968-10-02', '250.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lake Mead National Recreation Area', '1964-10-08', '6053.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lake Meredith National Recreation Area', '1990-11-28', '182.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Lake Roosevelt National Recreation Area', '1997-01-01', '406.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ross Lake National Recreation Area', '1968-10-02', '475.8', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Santa Monica Mountains National Recreation Area', '1978-11-10', '638.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Whiskeytown–Shasta–Trinity National Recreation Area', '1972-10-21', '172.0', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Amistad National Recreation Area'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bighorn Canyon National Recreation Area'), 'MT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bighorn Canyon National Recreation Area'), 'WY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Boston Harbor Islands National Recreation Area'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chattahoochee River National Recreation Area'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chickasaw National Recreation Area'), 'OK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Curecanti National Recreation Area'), 'CO');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Delaware Water Gap National Recreation Area'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Delaware Water Gap National Recreation Area'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gateway National Recreation Area'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gateway National Recreation Area'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gauley River National Recreation Area'), 'WV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glen Canyon National Recreation Area'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glen Canyon National Recreation Area'), 'UT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Golden Gate National Recreation Area'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Chelan National Recreation Area'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Mead National Recreation Area'), 'AZ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Mead National Recreation Area'), 'NV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Meredith National Recreation Area'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Roosevelt National Recreation Area'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ross Lake National Recreation Area'), 'WA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Santa Monica Mountains National Recreation Area'), 'CA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Whiskeytown–Shasta–Trinity National Recreation Area'), 'CA');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Amistad National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bighorn Canyon National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Boston Harbor Islands National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chattahoochee River National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Chickasaw National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Curecanti National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Delaware Water Gap National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gateway National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gauley River National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Glen Canyon National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Golden Gate National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Chelan National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Mead National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Meredith National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Lake Roosevelt National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ross Lake National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Santa Monica Mountains National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Whiskeytown–Shasta–Trinity National Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));


-- National Rivers
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Big South Fork National River and Recreation Area', '1974-03-07', '500.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Buffalo National River', '1992-04-22', '381.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Mississippi National River and Recreation Areas', '1988-11-18', '217.6', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ozark National Scenic Riverways', '1964-08-27', '326.9', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big South Fork National River and Recreation Area'), 'KY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big South Fork National River and Recreation Area'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Buffalo National River'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mississippi National River and Recreation Areas'), 'MN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ozark National Scenic Riverways'), 'MO');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Big South Fork National River and Recreation Area'), (SELECT designation_id FROM designation WHERE designation_name = 'National River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Buffalo National River'), (SELECT designation_id FROM designation WHERE designation_name = 'National River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Mississippi National River and Recreation Areas'), (SELECT designation_id FROM designation WHERE designation_name = 'National River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ozark National Scenic Riverways'), (SELECT designation_id FROM designation WHERE designation_name = 'National River'));


-- Wild and Scenic Rivers
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Alagnak Wild River', '1980-12-02', '124.1', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Bluestone National Scenic River', '1988-10-26', '17.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Great Egg Harbor Scenic and Recreational River', '1992-10-27', '175.3', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Missouri National Recreational River', '1978-11-10', '196.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Niobrara National Scenic River', '1991-05-24', '117.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Obed Wild and Scenic River', '1976-10-12', '22.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Rio Grande Wild and Scenic River', '1978-11-10', '53.1', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Saint Croix National Scenic Riverway', '1968-10-02', '273.0', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Upper Delaware Scenic and Recreational River', '1978-11-10', '303.5', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Alagnak Wild River'), 'AK');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bluestone National Scenic River'), 'WV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Egg Harbor Scenic and Recreational River'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Missouri National Recreational River'), 'NE');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Missouri National Recreational River'), 'SD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Niobrara National Scenic River'), 'NE');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Obed Wild and Scenic River'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rio Grande Wild and Scenic River'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint Croix National Scenic Riverway'), 'MN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint Croix National Scenic Riverway'), 'WI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Upper Delaware Scenic and Recreational River'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Upper Delaware Scenic and Recreational River'), 'PA');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Alagnak Wild River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Bluestone National Scenic River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Great Egg Harbor Scenic and Recreational River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Missouri National Recreational River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Niobrara National Scenic River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Obed Wild and Scenic River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rio Grande Wild and Scenic River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Saint Croix National Scenic Riverway'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Upper Delaware Scenic and Recreational River'), (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));


-- Lakeshores
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Apostle Islands National Lakeshore', '1970-09-26', '280.7', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Pictured Rocks National Lakeshore', '1966-10-15', '296.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Sleeping Bear Dunes National Lakeshore', '1970-10-21', '288.1', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Apostle Islands National Lakeshore'), 'WI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pictured Rocks National Lakeshore'), 'MI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sleeping Bear Dunes National Lakeshore'), 'MI');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Apostle Islands National Lakeshore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Lakeshore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Pictured Rocks National Lakeshore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Lakeshore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Sleeping Bear Dunes National Lakeshore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Lakeshore'));


-- Seashores
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Assateague Island National Seashore', '1965-09-21', '160.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Canaveral National Seashore', '1975-01-03', '233.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cape Cod National Seashore', '1966-06-01', '176.5', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cape Hatteras National Seashore', '1953-01-12', '122.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cape Lookout National Seashore', '1966-03-10', '114.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Cumberland Island National Seashore', '1972-10-23', '147.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fire Island National Seashore', '1964-09-11', '79.2', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Gulf Islands National Seashore', '1971-01-08', '558.4', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Padre Island National Seashore', '1968-04-06', '527.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Point Reyes National Seashore', '1972-10-20', '287.6', 'true');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Assateague Island National Seashore'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Assateague Island National Seashore'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Canaveral National Seashore'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Cod National Seashore'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Hatteras National Seashore'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Lookout National Seashore'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cumberland Island National Seashore'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fire Island National Seashore'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gulf Islands National Seashore'), 'FL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gulf Islands National Seashore'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Padre Island National Seashore'), 'TX');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Point Reyes National Seashore'), 'CA');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Assateague Island National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Canaveral National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Cod National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Hatteras National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cape Lookout National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Cumberland Island National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fire Island National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Gulf Islands National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Padre Island National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Point Reyes National Seashore'), (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));


-- Scenic Trails
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Appalachian National Scenic Trail', '1968-10-02', '975.3', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Ice Age National Scenic Trail', '1980-10-03', null, 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Natchez Trace National Scenic Trail', '1983-03-28', '44.5', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('New England National Scenic Trail', '2009-03-30', null, 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('North Country National Scenic Trail', '1980-03-05', null, 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Potomac Heritage National Scenic Trail', '1983-03-28', '0.0', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'CT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'GA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'ME');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'NC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'NH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'NJ');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'VT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), 'WV');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ice Age National Scenic Trail'), 'WI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez Trace National Scenic Trail'), 'AL');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez Trace National Scenic Trail'), 'MS');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez Trace National Scenic Trail'), 'TN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'New England National Scenic Trail'), 'MA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'New England National Scenic Trail'), 'CT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'MI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'MN');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'ND');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'NY');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'OH');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'VT');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), 'WI');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Potomac Heritage National Scenic Trail'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Potomac Heritage National Scenic Trail'), 'PA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Potomac Heritage National Scenic Trail'), 'VA');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Appalachian National Scenic Trail'), (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Ice Age National Scenic Trail'), (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Natchez Trace National Scenic Trail'), (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'New England National Scenic Trail'), (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'North Country National Scenic Trail'), (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Potomac Heritage National Scenic Trail'), (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));


--Other designations
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Catoctin Mountain Park', '1954-07-12', '23.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Constitution Gardens', '1986-09-17', '0.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Fort Washington Park', '1930-05-29', '1.4', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Greenbelt Park', '1950-08-03', '4.8', 'true');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('National Capital Parks - East', '1970-07-16', '35.2', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('National Mall and Memorial Parks', '1965-01-01', '0.6', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Piscataway Park', '1961-10-04', '18.7', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Prince William Forest Park', '1948-06-22', '65.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Rock Creek Park', '1980-09-27', '7.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('The White House and President''s Park', '1961-09-22', '0.1', 'false');
INSERT INTO site (site_name, date_established, area_km2, has_camping) VALUES ('Wolf Trap National Park for the Performing Arts', '2002-08-21', '0.5', 'false');

INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Catoctin Mountain Park'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Constitution Gardens'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Washington Park'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Greenbelt Park'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'National Capital Parks - East'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'National Mall and Memorial Parks'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Piscataway Park'), 'MD');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Prince William Forest Park'), 'VA');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rock Creek Park'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'The White House and President''s Park'), 'DC');
INSERT INTO site_state (site_id, state_abbreviation) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wolf Trap National Park for the Performing Arts'), 'VA');

INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Catoctin Mountain Park'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Constitution Gardens'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Fort Washington Park'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Greenbelt Park'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'National Capital Parks - East'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'National Mall and Memorial Parks'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Piscataway Park'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Prince William Forest Park'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Rock Creek Park'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'The White House and President''s Park'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_site (site_id, designation_id) VALUES ((SELECT site_id FROM site WHERE site_name = 'Wolf Trap National Park for the Performing Arts'), (SELECT designation_id FROM designation WHERE designation_name = 'Other'));

-- Designations by State
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AL', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AL', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AL', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AL', (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AL', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AL', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AK', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AK', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AK', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AK', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AK', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AS', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AZ', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AZ', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AZ', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AZ', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AZ', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AZ', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AR', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AR', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AR', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AR', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('AR', (SELECT designation_id FROM designation WHERE designation_name = 'National River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CA', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CO', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CO', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CO', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CO', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CO', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CT', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('CT', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DE', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DC', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DC', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DC', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DC', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DC', (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DC', (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('DC', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('FL', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('FL', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('FL', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('FL', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('FL', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GA', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('GU', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('HI', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('HI', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('HI', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('HI', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ID', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ID', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ID', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ID', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ID', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ID', (SELECT designation_id FROM designation WHERE designation_name = 'National Reserve'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IL', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IL', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IL', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IN', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IN', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IN', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('IA', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KS', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KS', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KS', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KY', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KY', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KY', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KY', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('KY', (SELECT designation_id FROM designation WHERE designation_name = 'National River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('LA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('LA', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('LA', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ME', (SELECT designation_id FROM designation WHERE designation_name = 'International Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ME', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ME', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ME', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MD', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MA', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MA', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MA', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MI', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MI', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MI', (SELECT designation_id FROM designation WHERE designation_name = 'National Lakeshore'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MI', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MI', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MN', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MN', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MN', (SELECT designation_id FROM designation WHERE designation_name = 'National River'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MN', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MN', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MS', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MO', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MO', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MO', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MO', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MO', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MO', (SELECT designation_id FROM designation WHERE designation_name = 'National River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MT', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MT', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MT', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MT', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MT', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('MT', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NE', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NE', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NE', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NV', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NV', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NV', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NH', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NH', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NJ', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NJ', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NJ', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NJ', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NJ', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NM', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NM', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NM', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NM', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NY', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('NC', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ND', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ND', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('ND', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OH', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OH', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OH', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OH', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OH', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OH', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OK', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OK', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OK', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OR', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OR', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OR', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('OR', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PA', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('PR', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('RI', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('RI', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SC', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SC', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SC', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SC', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SC', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SD', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SD', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SD', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SD', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('SD', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National River'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TN', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Preserve'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('TX', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VI', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VI', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VI', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VI', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('UT', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('UT', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('UT', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('UT', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VT', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VT', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Battlefield Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Memorial'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Military Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'Other'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Parkway'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('VA', (SELECT designation_id FROM designation WHERE designation_name = 'National Seashore'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WA', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WA', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WA', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WA', (SELECT designation_id FROM designation WHERE designation_name = 'National Reserve'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WV', (SELECT designation_id FROM designation WHERE designation_name = 'National Historical Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WV', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WV', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WV', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WV', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WI', (SELECT designation_id FROM designation WHERE designation_name = 'National Lakeshore'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WI', (SELECT designation_id FROM designation WHERE designation_name = 'National Scenic Trail'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WI', (SELECT designation_id FROM designation WHERE designation_name = 'National Wild and Scenic River'));

INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WY', (SELECT designation_id FROM designation WHERE designation_name = 'National Historic Site'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WY', (SELECT designation_id FROM designation WHERE designation_name = 'National Monument'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WY', (SELECT designation_id FROM designation WHERE designation_name = 'National Park'));
INSERT INTO designation_state (state_abbreviation, designation_id) VALUES ('WY', (SELECT designation_id FROM designation WHERE designation_name = 'National Recreation Area'));



ALTER TABLE site_state ADD CONSTRAINT FK_site_state_site FOREIGN KEY(site_id) REFERENCES site(site_id);

ALTER TABLE site_state ADD CONSTRAINT FK_site_state_state FOREIGN KEY(state_abbreviation) REFERENCES state(state_abbreviation);

ALTER TABLE designation_state ADD CONSTRAINT FK_designation_state_state FOREIGN KEY(state_abbreviation) REFERENCES state(state_abbreviation);

ALTER TABLE designation_state ADD CONSTRAINT FK_designation_state_designation FOREIGN KEY(designation_id) REFERENCES designation(designation_id);

COMMIT;

--Other sites affiliated with but not administered by NPS

-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Chimney Rock National Historic Site', 'National Historic Site', '2012-09-21');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Fallen Timbers Battlefield and Fort Miamis National Historic Site', 'National Historic Site', '1999-12-09');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Gloria Dei (Old Swedes'') Church National Historic Site', 'National Historic Site', '1942-11-17');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Grey Towers National Historic Site', 'National Historic Site', '2004-12-08');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Jamestown National Historic Site', 'National Historic Site', '1940-12-18');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Lower East Side Tenement National Historic Site', 'National Historic Site', '1998-11-12');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Thomas Cole National Historic Site', 'National Historic Site', '1999-12-09');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Touro Synagogue National Historic Site', 'National Historic Site', '1946-03-05');


-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Admiralty Island National Monument', 'National Monument', '1978-12-01');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Agua Fria National Monument', 'National Monument', '2000-01-11');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Aleutian Islands World War II National Monument', 'National Monument', '2008-12-05');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Avi Kwa Ame National Monument', 'National Monument', '2023-03-21');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Baaj Nwaavjo I''tah Kukveni – Ancestral Footprints of the Grand Canyon National Monument', 'National Monument', '2023-08-08');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Basin and Range National Monument', 'National Monument', '2015-07-10');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Bears Ears National Monument', 'National Monument', '2016-12-28');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Berryessa Snow Mountain National Monument', 'National Monument', '2015-07-10');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Browns Canyon National Monument', 'National Monument', '2015-02-19');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('California Coastal National Monument', 'National Monument', '2000-01-11');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Camp Hale — Continental Divide National Monument', 'National Monument', '2022-10-12');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Canyons of the Ancients National Monument', 'National Monument', '2000-06-09');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Carrizo Plain National Monument', 'National Monument', '2001-01-12');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Cascade–Siskiyou National Monument', 'National Monument', '2000-06-09');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Castner Range National Monument', 'National Monument', '2023-03-21');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Chimney Rock National Monument', 'National Monument', '2012-09-21');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Fort Ord National Monument', 'National Monument', '2012-04-20');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Giant Sequoia National Monument', 'National Monument', '2000-04-15');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Gold Butte National Monument', 'National Monument', '2016-12-28');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Canyon–Parashant National Monument', 'National Monument', '2000-01-11');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Grand Staircase–Escalante National Monument', 'National Monument', '1996-09-18');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Hanford Reach National Monument', 'National Monument', '2000-06-08');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Harriet Tubman Underground Railroad National Monument', 'National Monument', '2013-03-25');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Ironwood Forest National Monument', 'National Monument', '2000-06-09');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Jurassic National Monument', 'National Monument', '2019-03-12');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Kasha-Katuwe Tent Rocks National Monument', 'National Monument', '2001-01-17');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Marianas Trench Marine National Monument', 'National Monument', '2009-01-06');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Military Working Dog Teams National Monument', 'National Monument', '2013-10-28');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Misty Fjords National Monument', 'National Monument', '1978-12-01');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Mojave Trails National Monument', 'National Monument', '2016-02-12');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Mount St. Helens Volcanic National Monument', 'National Monument', '1982-08-27');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Newberry Volcanic National Monument', 'National Monument', '1990-11-05');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Northeast Canyons and Seamounts Marine National Monument', 'National Monument', '2016-09-15');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Organ Mountains–Desert Peaks National Monument', 'National Monument', '2014-05-21');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Pacific Remote Islands Marine National Monument', 'National Monument', '2009-01-06');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Papahānaumokuākea Marine National Monument', 'National Monument', '2006-06-15');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Pompeys Pillar National Monument', 'National Monument', '2001-01-17');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Prehistoric Trackways National Monument', 'National Monument', '2009-03-30');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('President Lincoln and Soldiers’ Home National Monument', 'National Monument', '2000-07-07');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Río Grande del Norte National Monument', 'National Monument', '2013-03-25');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Rose Atoll Marine National Monument', 'National Monument', '2009-01-06');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Saint Francis Dam Disaster National Monument', 'National Monument', '2019-03-12');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('San Gabriel Mountains National Monument', 'National Monument', '2014-10-10');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('San Juan Islands National Monument', 'National Monument', '2013-03-25');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Sand to Snow', 'National Monument', '2016-02-12');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Santa Rosa and San Jacinto Mountains National Monument', 'National Monument', '2000-10-24');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Sonoran Desert National Monument', 'National Monument', '2001-01-17');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Upper Missouri River Breaks National Monument', 'National Monument', '2001-01-17');
-- INSERT INTO site (site_name, site_type, date_established) VALUES ('Vermilion Cliffs National Monument', 'National Monument', '2000-11-09');


