-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER national_park_service_sites_owner
WITH PASSWORD 'nationalpark';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO national_park_service_sites_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO national_park_service_sites_owner;

CREATE USER national_park_service_sites_appuser
WITH PASSWORD 'nationalpark';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO national_park_service_sites_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO national_park_service_sites_appuser;
