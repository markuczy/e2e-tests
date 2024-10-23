#!/bin/bash

# initialize the databases of OneCX Core products (remove all existing data)
psql -q postgresql://onecx_tenant:onecx_tenant@postgresdb:5432/onecx-tenant -f ../db/import-onecx-initial-data/init_tenant_db.sql
psql -q postgresql://onecx_theme:onecx_theme@postgresdb:5432/onecx-theme -f ../db/import-onecx-initial-data/init_theme_db.sql
psql -q postgresql://onecx_workspace:onecx_workspace@postgresdb:5432/onecx-workspace -f ../db/import-onecx-initial-data/init_workspace_db.sql

psql -q postgresql://onecx_permission:onecx_permission@postgresdb:5432/onecx-permission -f ../db/import-onecx-initial-data/init_permission_db.sql
psql -q postgresql://onecx_product_store:onecx_product_store@postgresdb:5432/onecx-product-store -f ../db/import-onecx-initial-data/init_product-store_db.sql
psql -q postgresql://onecx_user_profile:onecx_user_profile@postgresdb:5432/onecx-user-profile -f ../db/import-onecx-initial-data/init_user-profile_db.sql
