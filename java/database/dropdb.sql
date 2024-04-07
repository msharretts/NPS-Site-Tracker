-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'national_park_service_sites';

DROP DATABASE national_park_service_sites;

DROP USER national_park_service_sites_owner;
DROP USER national_park_service_sites_appuser;
