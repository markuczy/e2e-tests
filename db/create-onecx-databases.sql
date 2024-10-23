/*
Create users and databases for OneCX products

IMPORTANT!
  This script cannot be executed at once!
  Pick up the section you need in a SQL session and execute it manually.
  The DROP/CREATE database statements must be executed separately.
*/

DROP DATABASE IF EXISTS "onecx-announcement";
  DROP ROLE IF EXISTS onecx_announcement;
  CREATE USER onecx_announcement WITH PASSWORD 'onecx_announcement';
CREATE DATABASE "onecx-announcement" WITH OWNER = onecx_announcement;

DROP DATABASE IF EXISTS "onecx-bookmark";
  DROP ROLE IF EXISTS onecx_bookmark;
  CREATE USER onecx_bookmark WITH PASSWORD 'onecx_bookmark';
CREATE DATABASE "onecx-bookmark" WITH OWNER = onecx_bookmark;

DROP DATABASE IF EXISTS "onecx-help";
  DROP ROLE IF EXISTS onecx_help;
  CREATE USER onecx_help WITH PASSWORD 'onecx_help';
CREATE DATABASE "onecx-help" WITH OWNER = onecx_help;

DROP DATABASE IF EXISTS "onecx-parameter";
  DROP ROLE IF EXISTS onecx_parameter;
  CREATE USER onecx_parameter WITH PASSWORD 'onecx_parameter';
CREATE DATABASE "onecx-parameter" WITH OWNER = onecx_parameter;

DROP DATABASE IF EXISTS "onecx-permission";
  DROP ROLE IF EXISTS onecx_permission;
  CREATE USER onecx_permission WITH PASSWORD 'onecx_permission';
CREATE DATABASE "onecx-permission" WITH OWNER = onecx_permission;

DROP DATABASE IF EXISTS "onecx-product-store";
  DROP ROLE IF EXISTS onecx_product_store;
  CREATE USER onecx_product_store WITH PASSWORD 'onecx_product_store';
CREATE DATABASE "onecx-product-store" WITH OWNER = onecx_product_store;

DROP DATABASE IF EXISTS "onecx-tenant";
  DROP ROLE IF EXISTS onecx_tenant;
  CREATE USER onecx_tenant WITH PASSWORD 'onecx_tenant';
CREATE DATABASE "onecx-tenant" WITH OWNER = onecx_tenant;

DROP DATABASE IF EXISTS "onecx-theme";
  DROP ROLE IF EXISTS onecx_theme;
  CREATE USER onecx_theme WITH PASSWORD 'onecx_theme';
CREATE DATABASE "onecx-theme" WITH OWNER = onecx_theme;

DROP DATABASE IF EXISTS "onecx-welcome";
  DROP ROLE IF EXISTS onecx_welcome;
  CREATE USER onecx_welcome WITH PASSWORD 'onecx_welcome';
CREATE DATABASE "onecx-welcome" WITH OWNER = onecx_welcome;

DROP DATABASE IF EXISTS "onecx-workspace";
  DROP ROLE IF EXISTS onecx_workspace;
  CREATE USER onecx_workspace WITH PASSWORD 'onecx_workspace';
CREATE DATABASE "onecx-workspace" WITH OWNER = onecx_workspace;

DROP DATABASE IF EXISTS "onecx-user-profile";
  DROP ROLE IF EXISTS onecx_user_profile;
  CREATE USER onecx_user_profile WITH PASSWORD 'onecx_user_profile';
CREATE DATABASE "onecx-user-profile" WITH OWNER = onecx_user_profile;

DROP DATABASE IF EXISTS "onecx-user-profile-avatar";
  DROP ROLE IF EXISTS onecx_user_profile_avatar;
  CREATE USER onecx_user_profile_avatar WITH PASSWORD 'onecx_user_profile_avatar';
CREATE DATABASE "onecx-user-profile-avatar" WITH OWNER = onecx_user_profile_avatar;

DROP DATABASE IF EXISTS "onecx-search-config";
  DROP ROLE IF EXISTS onecx_search_config;
  CREATE USER onecx_search_config WITH PASSWORD 'onecx_search_config';
CREATE DATABASE "onecx-search-config" WITH OWNER = onecx_search_config;
