# National Park Service Database

## Overview
**What started out as practice creating a database quickly got away from me.**
This repository contains a PostgreSQL database script that includes information on over 400 National Park Service sites. The database is normalized to best capture comprehensive data on each park's name, site type, state location, date established, size, and other relevant information. Eventually, the repository will include files for frontend using Vue.js, HTML, and CSS, as well as a Java program for searching and querying the database.

## Features
- **Database Schema**: The PostgreSQL database script defines a well-structured schema to store information about National Park Service sites, ensuring efficient data storage and retrieval.
- **Comprehensive Data**: The database includes detailed information on each site, such as its name, site type (e.g., National Park, National Monument, National Historic Site), state location, date established, size (in square kilometers), and whether camping is offered there. This information was gathered using Wikipedia, cross-referenced with the National Park Service website as well as the National Park Service archives website.
- **Search Functionality**: The accompanying Java program will provide users with the ability to search for parks based on various criteria, such as name, site type, state location, date established, size, etc.
- **Frontend Interface - Under Development**: The Vue.js frontend, offers search functionality for the database, allowing users to search by site designation ('National Park', 'National Monument', etc.) by state or by a combination of both and view information about National Park Service sites.

## Technology Used
- **Backend Development**:
   - PostgreSQL, IntelliJ Idea, SQL, and Java
- **Frontend Development**:
   - Visual Studio Code, Vue.js, HTML, and CSS

## Credit
Data collected throughout March & April 2024

Wikipedia (Site Name, Date Established*, Area**):
- https://en.wikipedia.org/wiki/List_of_national_parks_of_the_United_States
- https://en.wikipedia.org/wiki/List_of_national_monuments_of_the_United_States
- https://en.wikipedia.org/wiki/National_preserve
- https://en.wikipedia.org/wiki/National_Historic_Site_(United_States)
- https://en.wikipedia.org/wiki/National_military_park
- https://en.wikipedia.org/wiki/List_of_national_memorials_of_the_United_States
- https://en.wikipedia.org/wiki/National_recreation_area
- https://en.wikipedia.org/wiki/List_of_national_lakeshores_and_seashores_of_the_United_States
- https://en.wikipedia.org/wiki/National_Wild_and_Scenic_Rivers_System
- https://en.wikipedia.org/wiki/National_Parkway
  
*Date Established not listed on Wikipedia found through individual National Park Service History eLibrary archive pages indexed at:
- http://npshistory.com/park_histories.htm#i

*Area not listed on Wikipedia found through:
- https://web.archive.org/web/20210113132417/https://www.nps.gov/subjects/lwcf/upload/NPS-Acreage-12-31-2020.pdf

Camping Information:
- https://www.nps.gov/subjects/camping/campground.htm
  
Designation Information & State Location:
- https://www.nps.gov/aboutus/national-park-system.htm

Junior Ranger Program Locations: 
- https://www.nps.gov/kids/parks-with-junior-ranger-programs.htm
