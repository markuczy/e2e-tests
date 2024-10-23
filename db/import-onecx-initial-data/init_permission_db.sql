-- CREATE permission DATA for 3 tenants: default, cap, dtag

-- clean data bottom up (taken into account foreign keys)
DELETE FROM assignment;
DELETE FROM permission;
DELETE FROM role;
DELETE FROM application;


-- create data top down

INSERT INTO application (optlock, creationdate, modificationdate, app_id, description, guid, name, product_name, creationuser, modificationuser) VALUES
(0, now(), now(), 'onecx-announcement-bff', 'onecx-announcement-bff', '240da852-2156-4573-87d4-9fbe623c7729', 'onecx-announcement-bff', 'onecx-announcement', 'script', 'script'),
(0, now(), now(), 'onecx-announcement-ui',  'onecx-announcement-ui', '91346e02-0122-4f67-bf3c-ce4494f8bdbe', 'onecx-announcement-ui', 'onecx-announcement', 'script', 'script'),
(0, now(), now(), 'onecx-bookmark-bff', 'onecx-bookmark-bff', 'onecx-bookmark-bff_guid', 'onecx-bookmark-bff', 'onecx-bookmark', 'script', 'script'),
(0, now(), now(), 'onecx-bookmark-ui',  'onecx-bookmark-ui',  'onecx-bookmark-ui_guid',  'onecx-bookmark-ui',  'onecx-bookmark', 'script', 'script'),

(0, now(), now(), 'onecx-help-bff', 'onecx-help-bff', 'e6c1af9d-17df-42c8-bbc0-74b5c39894d4', 'onecx-help-bff', 'onecx-help', 'script', 'script'),
(0, now(), now(), 'onecx-help-ui', 'onecx-help-ui', 'f42d6385-2f98-48c5-ba3d-00727ee13136', 'onecx-help-ui', 'onecx-help', 'script', 'script'),
(0, now(), now(), 'onecx-iam-bff', 'onecx-iam-bff', '90ae379b-5e37-4347-8c6d-852d94217e6e', 'onecx-iam-bff', 'onecx-iam', 'script', 'script'),
(0, now(), now(), 'onecx-iam-ui', 'onecx-iam-ui', '22812c61-40a4-432b-a062-6a5edf84164c', 'onecx-iam-ui', 'onecx-iam', 'script', 'script'),

(0, now(), now(), 'onecx-parameter-bff', 'onecx-parameter-bff', 'onecx-parameter-bff_guid', 'onecx-parameter-bff', 'onecx-parameter', 'script', 'script'),
(0, now(), now(), 'onecx-parameter-ui', 'onecx-parameter-ui', 'onecx-parameter-ui_guid', 'onecx-parameter-ui', 'onecx-parameter', 'script', 'script'),
(0, now(), now(), 'onecx-permission-bff', 'onecx-permission-bff', '060d0355-ae79-4af7-9e3b-52f841fed648', 'onecx-permission-bff', 'onecx-permission', 'script', 'script'),
(0, now(), now(), 'onecx-permission-ui', 'onecx-permission-ui', 'a9f9ea90-1f32-4b68-ab59-4964249470a4', 'onecx-permission-ui', 'onecx-permission', 'script', 'script'),
(0, now(), now(), 'onecx-product-store-bff', 'onecx-product-store-bff', '032546dc-ced5-46bc-8dff-fe492ec893d8', 'onecx-product-store-bff', 'onecx-product-store', 'script', 'script'),
(0, now(), now(), 'onecx-product-store-ui', 'onecx-product-store-ui', '1e2b9e71-5dfa-4662-85c6-803712783b0e', 'onecx-product-store-ui', 'onecx-product-store', 'script', 'script'),

(0, now(), now(), 'onecx-shell-bff',         'onecx-shell-bff',         'ec40b92f-bcd7-4000-9a61-c4e3033ccb99', 'onecx-shell-bff',         'onecx-shell', 'script', 'script'),
(0, now(), now(), 'onecx-search-config-bff', 'onecx-search-config-bff', '49c8adbf-e88e-4720-ba22-b7756d8289fa', 'onecx-search-config-bff', 'onecx-search-config', 'script', 'script'),
(0, now(), now(), 'onecx-search-config-ui',  'onecx-search-config-ui',  'a5aa0a3f-973d-4d3c-90c4-487975394e81', 'onecx-search-config-ui',  'onecx-search-config', 'script', 'script'),

(0, now(), now(), 'onecx-tenant-bff', 'onecx-tenant-bff', 'onecx-tenant-bff', 'onecx-tenant-bff', 'onecx-tenant', 'script', 'script'),
(0, now(), now(), 'onecx-tenant-ui', 'onecx-tenant-ui', 'onecx-tenant-ui', 'onecx-tenant-ui', 'onecx-tenant', 'script', 'script'),
(0, now(), now(), 'onecx-theme-bff', 'onecx-theme-bff', '07f68ef6-11f1-4827-96c2-6503a47d9c0d', 'onecx-theme-bff', 'onecx-theme', 'script', 'script'),
(0, now(), now(), 'onecx-theme-ui', 'onecx-theme-ui', '796fa269-50b9-409f-bf0b-9bd46d1ff462', 'onecx-theme-ui', 'onecx-theme', 'script', 'script'),

(0, now(), now(), 'onecx-user-profile-bff', 'onecx-user-profile-bff', '7f30cc6d-d742-4c39-b2f9-6ed05b1991f1', 'onecx-user-profile-bff', 'onecx-user-profile', 'script', 'script'),
(0, now(), now(), 'onecx-user-profile-ui', 'onecx-user-profile-ui', 'd24cf6e2-e0d0-4e59-8b73-4c031c21b981', 'onecx-user-profile-ui', 'onecx-user-profile', NULL, NULL),
(0, now(), now(), 'onecx-welcome-bff', 'onecx-welcome-bff', '4524df2d-0d61-4bb0-a6fb-a0fa3e3aed97', 'onecx-welcome-bff', 'onecx-welcome', 'script', 'script'),
(0, now(), now(), 'onecx-welcome-ui', 'onecx-welcome-ui', '4430943d-2ff9-472f-92e1-5a645d412d25', 'onecx-welcome-ui', 'onecx-welcome', 'script', 'script'),
(0, now(), now(), 'onecx-workspace-bff', 'onecx-workspace-bff', '84643742-6c74-4fc4-8696-aa62c5f3be4a', 'onecx-workspace-bff', 'onecx-workspace', 'script', 'script'),
(0, now(), now(), 'onecx-workspace-ui', 'onecx-workspace-ui', '985d0ef1-96c1-4e98-aecf-efd422a15594', 'onecx-workspace-ui', 'onecx-workspace', 'script', 'script'),

(0, now(), now(), 'process-log-mgmt-app', 'process-log-mgmt-app', 'process-log-mgmt-app_guid', 'process-log-mgmt-app', 'process-log-mgmt', 'script', 'script'),
(0, now(), now(), 'process-log-mgmt-ui', 'process-log-mgmt-ui', 'process-log-mgmt-ui_guid',    'process-log-mgmt-ui',  'process-log-mgmt', 'script', 'script')
;


DELETE FROM permission;
INSERT INTO permission (optlock, creationdate, modificationdate, mandatory, operator, action, app_id, description, guid, product_name, resource, creationuser, modificationuser) VALUES
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-help-ui', 'Create help', 'a3243596-79cf-406d-be61-dafb2dc9a7d3', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 't', 'f', 'CREATE', 'onecx-permission-ui', 'Create permission', '1e44837e-272f-40af-a921-4f01bbed8c80', 'onecx-permission', 'PERMISSION', 'script', 'script'),
(0, now(), now(), 't', 'f', 'CREATE', 'onecx-permission-ui', 'Create role', '0c051bf8-d565-4e9a-bef7-060aa78d6490', 'onecx-permission', 'ROLE', 'script', 'script'),

/* Product Store UI */
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-product-store-ui', 'Create app', 'onecx-product-store-ui_create_app_guid', 'onecx-product-store', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-product-store-ui', 'Create product', 'onecx-product-store-ui_create_product_guid', 'onecx-product-store', 'PRODUCT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-product-store-ui', 'Create slot', 'onecx-product-store-ui_create_slot_guid', 'onecx-product-store', 'SLOT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-product-store-ui', 'Delete app', 'onecx-product-store-ui_delete_app_guid', 'onecx-product-store', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-product-store-ui', 'Delete product', 'onecx-product-store-ui_delete_product_guid', 'onecx-product-store', 'PRODUCT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-product-store-ui', 'Delete slot', 'onecx-product-store-ui_delete_slot_guid', 'onecx-product-store', 'SLOT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-product-store-ui', 'Edit app', 'onecx-product-store-ui_edit_app_guid', 'onecx-product-store', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-product-store-ui', 'Edit product', 'onecx-product-store-ui_edit_product_guid', 'onecx-product-store', 'PRODUCT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-product-store-ui', 'Edit slot', 'onecx-product-store-ui_edit_slot_guid', 'onecx-product-store', 'SLOT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE', 'onecx-product-store-ui', 'Update and save app', 'onecx-product-store-ui_save_app_guid', 'onecx-product-store', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE', 'onecx-product-store-ui', 'Update and save product', 'onecx-product-store-ui_save_product_guid', 'onecx-product-store', 'PRODUCT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE', 'onecx-product-store-ui', 'Update and save slot', 'onecx-product-store-ui_save_slot_guid', 'onecx-product-store', 'SLOT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-product-store-ui', 'Search apps', 'onecx-product-store_search_apps_guid', 'onecx-product-store', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-product-store-ui', 'Search products', 'onecx-product-store_search_product_guid', 'onecx-product-store', 'PRODUCT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-product-store-ui', 'Search slots', 'onecx-product-store_search_slot_guid', 'onecx-product-store', 'SLOT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-product-store-ui', 'View app details', 'onecx-product-store_view_app_guid', 'onecx-product-store', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-product-store-ui', 'View product details', 'onecx-product-store_view_product_guid', 'onecx-product-store', 'PRODUCT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-product-store-ui', 'View slot details', 'onecx-product-store_view_slot_guid', 'onecx-product-store', 'SLOT', 'script', 'script'),
/* Product Store BFF */
(0, now(), now(), 'f', 't', 'delete', 'onecx-product-store-bff', 'permission on all DELETE requests', 'onecx-product-store-bff_delete_image_guid', 'onecx-product-store', 'image', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-product-store-bff', 'permission on all DELETE requests', 'onecx-product-store-bff_delete_mfe_guid', 'onecx-product-store', 'microfrontend', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-product-store-bff', 'permission on all DELETE requests', 'onecx-product-store-bff_delete_ms_guid', 'onecx-product-store', 'microservice', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-product-store-bff', 'permission on all DELETE requests', 'onecx-product-store-bff_delete_product_guid', 'onecx-product-store', 'product', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-product-store-bff', 'permission on all DELETE requests', 'onecx-product-store-bff_delete_slot_guid', 'onecx-product-store', 'slot', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-product-store-bff', 'permission on all GET requests and POST search', 'onecx-product-store-bff_read_image_guid', 'onecx-product-store', 'image', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-product-store-bff', 'permission on all GET requests and POST search', 'onecx-product-store-bff_read_mfe_guid', 'onecx-product-store', 'microfrontend', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-product-store-bff', 'permission on all GET requests and POST search', 'onecx-product-store-bff_read_ms_guid', 'onecx-product-store', 'microservice', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-product-store-bff', 'permission on all GET requests and POST search', 'onecx-product-store-bff_read_product_guid', 'onecx-product-store', 'product', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-product-store-bff', 'permission on all GET requests and POST search', 'onecx-product-store-bff_read_slot_guid', 'onecx-product-store', 'slot', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-product-store-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'onecx-product-store-bff_write_image_guid', 'onecx-product-store', 'image', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-product-store-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'onecx-product-store-bff_write_ms_guid', 'onecx-product-store', 'microservice', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-product-store-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'onecx-product-store-bff_write_mfe_guid', 'onecx-product-store', 'microfrontend', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-product-store-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'onecx-product-store-bff_write_product_guid', 'onecx-product-store', 'product', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-product-store-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'onecx-product-store-bff_write_slot_guid', 'onecx-product-store', 'slot', 'script', 'script'),

(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-theme-ui', 'Create theme', '42587a65-6156-4337-a0c3-4259cd5fbdb5', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-tenant-ui', 'Create tenant', 'tenant#CREATE_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-help-ui', 'Delete help', '82683bc8-8820-4beb-9a21-ef7df5c9213c', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-permission-ui', 'Delete permission', '00e08eb5-7ee9-4a28-88fe-21a58e6437b1', 'onecx-permission', 'PERMISSION', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-permission-ui', 'Delete role', 'a3df218f-942b-40db-aec1-0184867913ac', 'onecx-permission', 'ROLE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-theme-ui', 'Delete theme', 'e51047de-73b2-45f3-a57e-889c0970f28d', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-welcome-ui', 'Delete image', 'd4500471-e06c-45d0-b23e-cf6737d891e5', 'onecx-welcome', 'IMAGE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-tenant-ui', 'Delete tenant', 'tenant#DELETE_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-iam-ui', 'Edit users', '678b4142-ca14-40e0-a8eb-c8dc08252d55', 'onecx-iam', 'USER', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-help-ui', 'Edit help', '20064af9-910e-4b0e-80c3-56d52b8b5874', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 't', 'f', 'EDIT', 'onecx-permission-ui', 'Edit permission app details', '5d22279e-8c33-4b7a-aba6-4244c141c2ab', 'onecx-permission', 'APP', 'script', 'script'),
(0, now(), now(), 't', 'f', 'EDIT', 'onecx-permission-ui', 'Edit permission', 'bc5159b2-6a52-4748-bb72-1af2381429bb', 'onecx-permission', 'PERMISSION', 'script', 'script'),
(0, now(), now(), 't', 'f', 'EDIT', 'onecx-permission-ui', 'Edit role', '48749a5a-249a-4fdf-9c6d-1f643ac58b74', 'onecx-permission', 'ROLE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-theme-ui', 'Edit theme', 'cff5307c-4eae-47fa-8fd5-a3b833509047', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-welcome-ui', 'Edit image', 'fd2adc4a-49f2-43c8-a47e-bb48f46891a2', 'onecx-welcome', 'IMAGE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-tenant-ui', 'Edit tenant', 'tenant#EDIT_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EXPORT', 'onecx-help-ui', 'Export help', '081e4550-f7b2-4661-8d41-17255b1c795d', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EXPORT', 'onecx-theme-ui', 'Export theme', '147392ff-bbc0-404a-a1b0-14bdd4bf4f24', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EXPORT', 'onecx-tenant-ui', 'Export tenant', 'tenant#EXPORT_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 't', 'f', 'GRANT', 'onecx-permission-ui', 'Assign or remove a permission to a role', '5a40497e-f6b7-4445-b200-854c28a0d38b', 'onecx-permission', 'PERMISSION', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'IMPORT', 'onecx-help-ui', 'Import help', 'b6eb6eca-f825-4306-be06-d03a4092a7a6', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'IMPORT', 'onecx-theme-ui', 'Import theme', '1cae96d4-7e23-4412-9a88-2a550697376d', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'IMPORT', 'onecx-tenant-ui', 'Import tenant', 'tenant#IMPORT_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE', 'onecx-help-ui', 'Update and save help', 'c2537604-e216-433a-baa9-c638af263005', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 't', 'f', 'SAVE', 'onecx-permission-ui', 'Update and save permission app details', 'bbaacdc6-eade-4683-b92f-33e8a33b8644', 'onecx-permission', 'APP', 'script', 'script'),
(0, now(), now(), 't', 'f', 'SAVE', 'onecx-permission-ui', 'Update and save permission', '5fbc267d-fa68-41ce-916b-ff5755953d04', 'onecx-permission', 'PERMISSION', 'script', 'script'),
(0, now(), now(), 't', 'f', 'SAVE', 'onecx-permission-ui', 'Update and save role', 'cb50a914-5f17-4c87-9be8-6f47db055f29', 'onecx-permission', 'ROLE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE', 'onecx-theme-ui', 'Update and save theme', '2fe5ce61-3185-4dd5-9521-0a7fca1ad118', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE', 'onecx-tenant-ui', 'Update and save tenant', 'tenant#SAVE_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-help-ui', 'Search help', 'ca8a4bc2-e416-4ea5-990d-3a670818436f', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-iam-ui', 'Search roles', 'a730b6ae-dd04-4d05-b9fc-f8df59ed97ae', 'onecx-iam', 'ROLE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-iam-ui', 'Search users', '4fac1df2-e697-4199-90df-f753e7200bea', 'onecx-iam', 'USER', 'script', 'script'),
(0, now(), now(), 't', 'f', 'SEARCH', 'onecx-permission-ui', 'Search permission apps', '96d05a46-6357-4a40-8c56-f91b252faec3', 'onecx-permission', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-theme-ui', 'Search theme', 'f49888aa-fd7e-4fc9-b69e-bbb66f8ea4eb', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-tenant-ui', 'Search tenant', 'tenant#SEARCH_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-help-ui', 'View mode for help', '829f394d-da82-4071-8d9a-7de18bb064c1', 'onecx-help', 'HELP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-permission-ui', 'View app details', '8848b90e-0b9b-40ef-8b37-ba3dc7422f97', 'onecx-permission', 'APP', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-theme-ui', 'View mode for theme', '9f8fe0ff-5732-41c2-8b22-537f6bfcf05b', 'onecx-theme', 'THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-welcome-ui', 'View image', 'bbc626a0-d247-4ba1-bd01-a4085fc9f5bc', 'onecx-welcome', 'IMAGE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-tenant-ui', 'View mode for tenant', 'tenant#VIEW_onecx-tenant-ui', 'onecx-tenant', 'TENANT', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-help-bff', 'permission on all DELETE requests', '9aa5a693-79c5-4198-8e6a-f36179bb7b3c', 'onecx-help', 'help', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-iam-bff', 'permission on all DELETE requests', '1e39d0ea-ea1d-41e7-8cc3-570df54cf6e5', 'onecx-iam', 'iam', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-permission-bff', 'permission on all DELETE requests', '24177ae6-ec3f-45a3-9cb2-825a81d21cf2', 'onecx-permission', 'permission', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-permission-bff', 'permission on all DELETE requests', '8e6d71f0-f116-49de-9d0a-d5d63d9a95d0', 'onecx-permission', 'workspace', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-permission-bff', 'permission on all DELETE requests', '929bcd10-44fd-4654-be38-969c91c0ca39', 'onecx-permission', 'assignment', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-permission-bff', 'permission on all DELETE requests', 'cf88e72b-f732-4f65-968c-d68e005ddab0', 'onecx-permission', 'role', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-permission-bff', 'permission on all DELETE requests', 'f72ef8a4-0bad-4288-9604-7b90237ca175', 'onecx-permission', 'application', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-theme-bff', 'permission on all DELETE requests', '139594b8-6e15-4610-858b-506200310274', 'onecx-theme', 'themes', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-welcome-bff', 'permission on all DELETE requests', 'dd4bc43b-16fe-4bab-bad0-4b1588099f39', 'onecx-welcome', 'image', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-tenant-bff', 'permission on all DELETE requests', 'guid_delete_onecx-tenant-bff_tenant_delete', 'onecx-tenant', 'tenant', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-help-bff', 'permission on all GET requests and POST search', 'guid_onecx-help-bff_help_read', 'onecx-help', 'help', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-help-bff', 'permission on all GET requests and POST search', 'guid_onecx-help-bff_product_read', 'onecx-help', 'product', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-iam-bff', 'permission on all GET requests and POST search', 'guid_onecx-iam-bff_role_read', 'onecx-iam', 'role', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-iam-bff', 'permission on all GET requests and POST search', 'guid_onecx-iam-bff_user_read', 'onecx-iam', 'user', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-iam-bff', 'permission on all GET requests and POST search', 'guid_onecx-iam-bff_iam_read', 'onecx-iam', 'iam', 'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-permission-bff', 'permission on all GET requests and POST search', 'guid_onecx-permission-bff_role_read', 'onecx-permission', 'role', 'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-permission-bff', 'permission on all GET requests and POST search', 'guid_onecx-permission-bff_permission_read', 'onecx-permission', 'permission', 'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-permission-bff', 'permission on all GET requests and POST search', 'guid_onecx-permission-bff_application_read', 'onecx-permission', 'application', 'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-permission-bff', 'permission on all GET requests and POST search', 'guid_onecx-permission-bff_workspace_read', 'onecx-permission', 'workspace', 'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-permission-bff', 'permission on all GET requests and POST search', 'guid_onecx-permission-bff_assignment_read', 'onecx-permission', 'assignment', 'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-theme-bff', 'permission on all GET requests and POST search', 'c79f9287-b4f2-4383-a5f6-c0151a556428', 'onecx-theme', 'themes', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-welcome-bff', 'permission on all GET requests and POST search', '02281c26-e06f-409a-85a9-3708b6fd779d', 'onecx-welcome', 'image', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read', 'onecx-tenant-bff', 'permission on all GET requests and POST search', 'tenant#read_onecx-tenant-bff', 'onecx-tenant', 'tenant', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-help-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'fa3761f1-81b1-45f3-a0dc-0b21d222f0d1', 'onecx-help', 'help', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-iam-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', '57df9a8e-fc83-45f7-a9ae-d95801ba0dca', 'onecx-iam', 'iam', 'script', 'script'),
(0, now(), now(), 't', 't', 'write', 'onecx-permission-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', '0b985cdf-1f7f-4cf8-b99f-19f3d28e8928', 'onecx-permission', 'workspace', 'script', 'script'),
(0, now(), now(), 't', 't', 'write', 'onecx-permission-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', '56699c7d-be09-4338-a2d4-13566f013139', 'onecx-permission', 'permission', 'script', 'script'),
(0, now(), now(), 't', 't', 'write', 'onecx-permission-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', '6f1668bd-22dd-473e-adeb-057e6a2d27cd', 'onecx-permission', 'application', 'script', 'script'),
(0, now(), now(), 't', 't', 'write', 'onecx-permission-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'af60ff4d-9915-4458-bb88-4a131d2334f7', 'onecx-permission', 'role', 'script', 'script'),
(0, now(), now(), 't', 't', 'write', 'onecx-permission-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'ec816aba-e3b2-47d9-a200-4f287ac10f02', 'onecx-permission', 'assignment', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-theme-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-theme-bff_assignment_write', 'onecx-theme', 'themes', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-welcome-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-welcome-bff_image_write', 'onecx-welcome', 'image', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-tenant-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-tenant-bff_write', 'onecx-tenant', 'tenant', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write', 'onecx-iam-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-iam-bff_user_write', 'onecx-iam', 'user', 'script', 'script'),

/* Announcement */
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-announcement-ui', 'Create announcement', 'aed750f4-228d-4637-81b0-3634d32fefee', 'onecx-announcement', 'ANNOUNCEMENT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-announcement-ui', 'Delete announcement', '6a959a77-fad3-49ed-86d4-99ad3dae6561', 'onecx-announcement', 'ANNOUNCEMENT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT',   'onecx-announcement-ui', 'Edit announcement', 'e6e423c7-33a0-43de-9601-f7bbdbcb0619', 'onecx-announcement', 'ANNOUNCEMENT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EXPORT', 'onecx-announcement-ui', 'Export announcement', '392dacce-9940-4a6c-b167-679b41626fd2', 'onecx-announcement', 'ANNOUNCEMENT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'IMPORT', 'onecx-announcement-ui', 'Import announcement', 'd2ccf18e-22b5-4812-9d02-03b2151f7564', 'onecx-announcement', 'ANNOUNCEMENT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-announcement-ui', 'Search announcement', '11d85149-09c2-49d5-aaab-125afaf44445', 'onecx-announcement', 'ANNOUNCEMENT', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW',   'onecx-announcement-ui', 'View announcement',   '40a821f2-0e87-4500-8079-600f50479fb4', 'onecx-announcement', 'ANNOUNCEMENT', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-announcement-bff', 'permission on all DELETE requests',              'guid_onecx-announcement-bff_announcement_delete', 'onecx-announcement', 'announcement', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-announcement-bff', 'permission on all GET requests and POST search', 'guid_onecx-announcement-bff_announcement_read',   'onecx-announcement', 'announcement', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write',  'onecx-announcement-bff', 'permission on PUT, POST, PATCH requests, ...',   'guid_onecx-announcement-bff_announcement_write',  'onecx-announcement', 'announcement', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-announcement-bff', 'permission on all GET requests and POST search', 'guid_onecx-announcement-bff_product_read',        'onecx-announcement', 'product', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-announcement-bff', 'permission on all GET requests and POST search', 'guid_onecx-announcement-bff_workspace_read',      'onecx-announcement', 'workspace', 'script', 'script'),

/* Bookmark */
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-bookmark-ui', 'Create bookmark', 'guid_onecx-bookmark-ui_bookmark_create', 'onecx-bookmark', 'BOOKMARK', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-bookmark-ui', 'Delete bookmark', 'guid_onecx-bookmark-ui_bookmark_delete', 'onecx-bookmark', 'BOOKMARK', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT',   'onecx-bookmark-ui', 'Edit bookmark',   'guid_onecx-bookmark-ui_bookmark_edit',   'onecx-bookmark', 'BOOKMARK', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EXPORT', 'onecx-bookmark-ui', 'Export bookmark', 'guid_onecx-bookmark-ui_bookmark_export', 'onecx-bookmark', 'BOOKMARK', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'IMPORT', 'onecx-bookmark-ui', 'Import bookmark', 'guid_onecx-bookmark-ui_bookmark_import', 'onecx-bookmark', 'BOOKMARK', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-bookmark-ui', 'Search bookmark', 'guid_onecx-bookmark-ui_bookmark_search', 'onecx-bookmark', 'BOOKMARK', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW',   'onecx-bookmark-ui', 'View bookmark',   'guid_onecx-bookmark-ui_bookmark_view',   'onecx-bookmark', 'BOOKMARK', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-bookmark-bff', 'permission on all DELETE requests',              'guid_onecx-bookmark-bff_bookmark_delete', 'onecx-bookmark', 'bookmark', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-bookmark-bff', 'permission on all GET requests and POST search', 'guid_onecx-bookmark-bff_bookmark_read',   'onecx-bookmark', 'bookmark', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-bookmark-bff', 'permission on all GET requests and POST search', 'guid_onecx-bookmark-bff_product_read',    'onecx-bookmark', 'product',  'script', 'script'),
(0, now(), now(), 'f', 't', 'write',  'onecx-bookmark-bff', 'permission on PUT, POST, PATCH requests, ...',   'guid_onecx-bookmark-bff_bookmark_write',  'onecx-bookmark', 'bookmark', 'script', 'script'),

/* Shell */
(0, now(), now(), 't', 't', 'read', 'onecx-shell-bff', 'permission on all GET requests and POST search', '251b46c6-61ac-4ab3-96f3-cd80268beb6a', 'onecx-shell', 'permission',      'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-shell-bff', 'permission on all GET requests and POST search', '9f271e77-8a1d-4ad2-b865-9ac2458979c6', 'onecx-shell', 'workspaceConfig', 'script', 'script'),
(0, now(), now(), 't', 't', 'read', 'onecx-shell-bff', 'permission on all GET requests and POST search', 'ed0cdec5-cd86-4324-bee9-33f27a0c0045', 'onecx-shell', 'userProfile',     'script', 'script'),

/* Search Config */
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-search-config-ui', 'Create search config', 'guid_onecx-search-config-ui_create', 'onecx-search-config', 'SEARCHCONFIG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-search-config-ui', 'Delete search config', 'guid_onecx-search-config-ui_delete', 'onecx-search-config', 'SEARCHCONFIG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT',   'onecx-search-config-ui', 'Edit search config',   'guid_onecx-search-config-ui_edit',   'onecx-search-config', 'SEARCHCONFIG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW',   'onecx-search-config-ui', 'View search configs',  'guid_onecx-search-config-ui_view',   'onecx-search-config', 'SEARCHCONFIG', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-search-config-bff', 'permission on on all GET requests and POST search', 'guid_onecx-search-config-bff_read',   'onecx-search-config', 'searchConfig', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write',  'onecx-search-config-bff', 'permission on PUT, POST, PATCH requests',           'guid_onecx-search-config-bff_write',  'onecx-search-config', 'searchConfig', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-search-config-bff', 'permission on all DELETE requests',                 'guid_onecx-search-config-bff_delete', 'onecx-search-config', 'searchConfig', 'script', 'script'),

(0, now(), now(), 'f', 'f', 'USE',    'onecx-tenant-ui',         'Use search configs in tenant', 'guid_onecx-tenant-ui_use', 'onecx-tenant', 'SEARCHCONFIG', 'script', 'script'),

/* User Profile BFF */
(0, now(), now(), 'f', 'f', 'CREATE', 'onecx-user-profile-ui', 'Create user profile', 'guid_onecx-user-profile-ui_user-profile_create', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-user-profile-ui', 'Delete user profile', 'guid_onecx-user-profile-ui_user-profile_delete', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT',   'onecx-user-profile-ui', 'Edit user profile',   'guid_onecx-user-profile-ui_user-profile_edit',   'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'ADMIN_EDIT',   'onecx-user-profile-ui', 'Edit other user profile for admin',   'guid_onecx-user-profile-ui_user-profile_admin_edit',   'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_avatar_edit',  'onecx-user-profile', 'PROFILE_AVATAR', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_address_edit', 'onecx-user-profile', 'PROFILE_ADDRESS', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_phone_edit',   'onecx-user-profile', 'PROFILE_PHONE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_bread_edit',   'onecx-user-profile', 'ACCOUNT_SETTINGS_BREADCRUMBS', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_color_edit',   'onecx-user-profile', 'ACCOUNT_SETTINGS_COLOR_SCHEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_lang_edit',    'onecx-user-profile', 'ACCOUNT_SETTINGS_LANGUAGE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_menu_edit',    'onecx-user-profile', 'ACCOUNT_SETTINGS_LAYOUT_MENU', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_privacy_edit', 'onecx-user-profile', 'ACCOUNT_SETTINGS_PRIVACY', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT', 'onecx-user-profile-ui', NULL, 'guid_onecx-user-profile-ui_time_edit',    'onecx-user-profile', 'ACCOUNT_SETTINGS_TIMEZONE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EXPORT', 'onecx-user-profile-ui', 'Export user profile', '54d42027-d77d-4f24-97ff-929651f29e72', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'IMPORT', 'onecx-user-profile-ui', 'Import user profile', '80da89de-429f-456d-87f0-a44d5b5a3f28', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE',   'onecx-user-profile-ui', 'Update and save user profile', '60c32d3b-6203-4f41-aab0-1715e8982eea', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-user-profile-ui', 'Search user profile', 'f2b1aec1-56ca-40f4-98ec-018a4b76d9e0', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', 'View mode for user profile', '4e6aac07-fbc5-412d-b8ca-d52b3bc82742', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'ADMIN_VIEW', 'onecx-user-profile-ui', 'View other user profile for admin', '4e6aac07-fbc5-412d-b8ca-d52b3bc82743', 'onecx-user-profile', 'USERPROFILE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, 'b44aaa47-009c-4e64-b7d6-70496c6886d4', 'onecx-user-profile', 'PROFILE_PERSONAL_INFO', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '9a0e9e0c-c9a1-40d0-9556-7924f9fa0dcc', 'onecx-user-profile', 'PROFILE_PHONE', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '795ef583-df15-4832-903f-5ddef356d7d5', 'onecx-user-profile', 'PROFILE_ADDRESS', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '7c498bf3-b487-4d54-8264-386798b8d32c', 'onecx-user-profile', 'PROFILE_AVATAR', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '7c498bf3-b487-4d54-8264-386798b8d32d', 'onecx-user-profile', 'ROLES_PERMISSIONS', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '7c498bf3-b487-4d54-8264-386798b8d32f', 'onecx-user-profile', 'CHANGE_PASSWORD', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '05f4627b-d5f9-47aa-87c2-fab9682e2cff', 'onecx-user-profile', 'ACCOUNT_SETTINGS', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '0600f76b-a7ed-4968-8c57-b1d65a121a2d', 'onecx-user-profile', 'ACCOUNT_SETTINGS_LAYOUT_THEME', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, '37c0b4c5-5433-4684-b77f-fae879b73b2d', 'onecx-user-profile', 'ACCOUNT_SETTINGS_PREFERENCES', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, 'a558b78d-d8f3-4308-8226-9d770406e547', 'onecx-user-profile', 'ACCOUNT_SETTINGS_PRIVACY', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW', 'onecx-user-profile-ui', NULL, 'c2856165-5f05-40ed-9879-5b1c2342d7d9', 'onecx-user-profile', 'ACCOUNT_SETTINGS_LANGUAGE_TIMEZONE', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-user-profile-bff', 'permission on all DELETE requests',              'guid_onecx-user-profile-bff_userProfile_delete', 'onecx-user-profile', 'userProfile', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-user-profile-bff', 'permission on all GET requests and POST search', 'guid_onecx-user-profile-bff_userProfile_read',   'onecx-user-profile', 'userProfile', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write',  'onecx-user-profile-bff', 'permission on PUT, POST, PATCH requests, ...',   'guid_onecx-user-profile-bff_userProfile_write',  'onecx-user-profile', 'userProfile', 'script', 'script'),

/* Workspace BFF */
(0, now(), now(), 't', 't', 'delete', 'onecx-workspace-bff', 'permission on all DELETE requests', 'guid_onecx-workspace-bff_menu_delete', 'onecx-workspace', 'menu', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-workspace-bff', 'permission on all DELETE requests', 'guid_onecx-workspace-bff_role_delete', 'onecx-workspace', 'role', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-workspace-bff', 'permission on all DELETE requests', 'guid_onecx-workspace-bff_slot_delete', 'onecx-workspace', 'slot', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-workspace-bff', 'permission on all DELETE requests', 'guid_onecx-workspace-bff_workspace_delete', 'onecx-workspace', 'workspace', 'script', 'script'),
(0, now(), now(), 't', 't', 'delete', 'onecx-workspace-bff', 'permission on all DELETE requests', 'guid_onecx-workspace-bff_assignment_delete', 'onecx-workspace', 'assignment', 'script', 'script'),
(0, now(), now(), 't', 't', 'read',   'onecx-workspace-bff', 'permission on all GET requests and POST search', 'guid_onecx-workspace-bff_workspace_read', 'onecx-workspace', 'workspace', 'script', 'script'),
(0, now(), now(), 't', 't', 'read',   'onecx-workspace-bff', 'permission on all GET requests and POST search', 'guid_onecx-workspace-bff_assignment_read', 'onecx-workspace', 'assignment', 'script', 'script'),
(0, now(), now(), 't', 't', 'read',   'onecx-workspace-bff', 'permission on all GET requests and POST search', 'guid_onecx-workspace-bff_menu_read', 'onecx-workspace', 'menu', 'script', 'script'),
(0, now(), now(), 't', 't', 'read',   'onecx-workspace-bff', 'permission on all GET requests and POST search', 'guid_onecx-workspace-bff_role_read', 'onecx-workspace', 'role', 'script', 'script'),
(0, now(), now(), 't', 't', 'read',   'onecx-workspace-bff', 'permission on all GET requests and POST search', 'guid_onecx-workspace-bff_slot_read', 'onecx-workspace', 'slot', 'script', 'script'),
(0, now(), now(), 't', 't', 'write',  'onecx-workspace-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-workspace-bff_assignment_write', 'onecx-workspace', 'assignment', 'script', 'script'),
(0, now(), now(), 't', 't', 'write',  'onecx-workspace-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-workspace-bff_workspace_write', 'onecx-workspace', 'workspace', 'script', 'script'),
(0, now(), now(), 't', 't', 'write',  'onecx-workspace-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-workspace-bff_menu_write', 'onecx-workspace', 'menu', 'script', 'script'),
(0, now(), now(), 't', 't', 'write',  'onecx-workspace-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-workspace-bff_role_write', 'onecx-workspace', 'role', 'script', 'script'),
(0, now(), now(), 't', 't', 'write',  'onecx-workspace-bff', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-workspace-bff_slot_write', 'onecx-workspace', 'slot', 'script', 'script'),
/* Workspace UI */
(0, now(), now(), 't', 't', 'CREATE', 'onecx-workspace-ui', 'Create a workspace role', '5aff2770-d73f-41d6-89ac-ed347ca3bdab', 'onecx-workspace', 'WORKSPACE_ROLE', 'script', 'script'),
(0, now(), now(), 't', 't', 'CREATE', 'onecx-workspace-ui', 'Create a workspace slot', '5aff2770-d73f-41d6-89ac-ed347ca3bdac', 'onecx-workspace', 'WORKSPACE_SLOT', 'script', 'script'),
(0, now(), now(), 't', 't', 'CREATE', 'onecx-workspace-ui', 'Create menu', 'f90925a8-d69a-4abd-b0d5-fc1132032c51', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 't', 't', 'CREATE', 'onecx-workspace-ui', 'Create workspace', '1d9bab89-cd20-4f2c-a401-7c6a60738a9c', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 't', 't', 'DELETE', 'onecx-workspace-ui', 'Delete a workspace role', '9a99dbb0-d8bb-4472-b6a6-137297fc743b', 'onecx-workspace', 'WORKSPACE_ROLE', 'script', 'script'),
(0, now(), now(), 't', 't', 'DELETE', 'onecx-workspace-ui', 'Delete a workspace slot', '9a99dbb0-d8bb-4472-b6a6-137297fc743c', 'onecx-workspace', 'WORKSPACE_SLOT', 'script', 'script'),
(0, now(), now(), 't', 't', 'DELETE', 'onecx-workspace-ui', 'Delete menu', '75624122-eb6c-43bf-88a9-d2f22873c927', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 't', 't', 'DELETE', 'onecx-workspace-ui', 'Delete workspace', '30001665-8833-489f-bb1a-0d800d049bbd', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 't', 't', 'DRAG_DROP',       'onecx-workspace-ui', 'Drag & drop menu items', 'b4aa4171-b399-4956-bef3-e5542f5d7530', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 't', 't', 'GRANT',           'onecx-workspace-ui', 'Assign roles to menu item', '63258a4b-260a-4831-9165-d8adc47c4519', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 'f', 't', 'GOTO_APP_STORE',  'onecx-workspace-ui', 'Go to Product within Application Store', 'guid_onecx-workspace-ui_goto_ws', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 'f', 't', 'GOTO_PERMISSION', 'onecx-workspace-ui', 'Go to Workspace permission settings',    'guid_onecx-workspace-ui_goto_pm', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 't', 't', 'EDIT', 'onecx-workspace-ui', 'Change workspace role', '5ca35636-488a-44d2-979d-e3b4f62d51f0', 'onecx-workspace', 'WORKSPACE_ROLE', 'script', 'script'),
(0, now(), now(), 't', 't', 'EDIT', 'onecx-workspace-ui', 'Change workspace role', '5ca35636-488a-44d2-979d-e3b4f62d51f1', 'onecx-workspace', 'WORKSPACE_SLOT', 'script', 'script'),
(0, now(), now(), 't', 't', 'EDIT', 'onecx-workspace-ui', 'Edit menu', '55b1bd9f-1f4e-424b-a04e-ddbf4a796f95', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 't', 't', 'EDIT', 'onecx-workspace-ui', 'Edit workspace', '2b93c599-44fa-4ff6-acff-43ea24cbcafa', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 'f', 't', 'EXPORT', 'onecx-workspace-ui', 'Export menu', '7b377fdb-83b1-4377-b19d-42d353abcf3d', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 'f', 't', 'EXPORT', 'onecx-workspace-ui', 'Export workspace', '82e605c6-9b25-47c4-a9d5-6eb7e7668306', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 'f', 't', 'IMPORT', 'onecx-workspace-ui', 'Import menu', '8538e90e-11be-4b6a-ad82-ee928e0bcf6b', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 'f', 't', 'IMPORT', 'onecx-workspace-ui', 'Import workspace', 'c3f010db-4af7-441a-80f3-5722698b109f', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 't', 't', 'REGISTER', 'onecx-workspace-ui', 'Register/Deregister products', '7f6271be-a1db-4d6b-8ab1-1494cc18d1c0', 'onecx-workspace', 'WORKSPACE_PRODUCTS', 'script', 'script'),
(0, now(), now(), 't', 't', 'SEARCH', 'onecx-workspace-ui', 'Search workspace', '7833e306-1d6a-4e51-8e8c-418d96aa71a5', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 't', 't', 'VIEW', 'onecx-workspace-ui', 'View menu', 'a8bca607-5d2b-4060-a49e-2c8e044d9f72', 'onecx-workspace', 'MENU', 'script', 'script'),
(0, now(), now(), 't', 't', 'VIEW', 'onecx-workspace-ui', 'View mode for workspace', 'd817dcee-3c2d-4356-a7a5-572eeda51511', 'onecx-workspace', 'WORKSPACE', 'script', 'script'),
(0, now(), now(), 't', 't', 'VIEW', 'onecx-workspace-ui', 'View workspace contact', '3907fbbd-1115-4811-bf3e-a5bfc47c6b9d', 'onecx-workspace', 'WORKSPACE_CONTACT', 'script', 'script'),
(0, now(), now(), 't', 't', 'VIEW', 'onecx-workspace-ui', 'View workspace internal', '49d80e0d-dafe-4cea-b834-b1aa58f82a80', 'onecx-workspace', 'WORKSPACE_INTERNAL', 'script', 'script'),
(0, now(), now(), 't', 't', 'VIEW', 'onecx-workspace-ui', 'View workspace products', 'be1a7bff-a2b6-466f-85b6-d7b6006eeef4', 'onecx-workspace', 'WORKSPACE_PRODUCTS', 'script', 'script'),
(0, now(), now(), 't', 't', 'VIEW', 'onecx-workspace-ui', 'View workspace roles', '681e5380-23a0-446b-95ff-808ecd8e6a6d', 'onecx-workspace', 'WORKSPACE_ROLE', 'script', 'script'),
(0, now(), now(), 't', 't', 'VIEW', 'onecx-workspace-ui', 'View workspace slots', '681e5380-23a0-446b-95ff-808ecd8e6a6e', 'onecx-workspace', 'WORKSPACE_SLOT', 'script', 'script'),

/* Parameter */
(0, now(), now(), 'f', 't', 'read',   'onecx-parameter-bff', 'product on all GET requests and POST search',                                'guid_onecx-parameter-bff_read-product', 'onecx-parameter', 'product', 'script', 'script'),
(0, now(), now(), 'f', 't', 'read',   'onecx-parameter-bff', 'parameter on all GET requests and POST search',                              'guid_onecx-parameter-bff_read',   'onecx-parameter', 'parameter', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write',  'onecx-parameter-bff', 'parameter on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_onecx-parameter-bff_write',  'onecx-parameter', 'parameter', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'onecx-parameter-bff', 'parameter on all DELETE requests',                                           'guid_onecx-parameter-bff_delete', 'onecx-parameter', 'parameter', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT',   'onecx-parameter-ui',  'Edit parameter',   'guid_onecx-parameter-ui_parameter_edit',   'onecx-parameter', 'PARAMETER', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'onecx-parameter-ui',  'Delete parameter', 'guid_onecx-parameter-ui_parameter_delete', 'onecx-parameter', 'PARAMETER', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW',   'onecx-parameter-ui',  'View parameter',   'guid_onecx-parameter-ui_parameter_view',   'onecx-parameter', 'PARAMETER', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'onecx-parameter-ui',  'Search parameter', 'guid_onecx-parameter-ui_parameter_search', 'onecx-parameter', 'PARAMETER', 'script', 'script'),

/* Prozesslog */
(0, now(), now(), 'f', 't', 'read',   'process-log-mgmt-app', 'permission on all GET requests and POST search',                              'guid_process-log-mgmt-app_processlog_read',   'process-log-mgmt', 'processlog', 'script', 'script'),
(0, now(), now(), 'f', 't', 'write',  'process-log-mgmt-app', 'permission on PUT, POST, PATCH requests, where objects are saved or updated', 'guid_process-log-mgmt-app_processlog_write',  'process-log-mgmt', 'processlog', 'script', 'script'),
(0, now(), now(), 'f', 't', 'delete', 'process-log-mgmt-app', 'permission on all DELETE requests',                                           'guid_process-log-mgmt-app_processlog_delete', 'process-log-mgmt', 'processlog', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'CREATE', 'process-log-mgmt-ui',  'Create processlog',  'guid_process-log-mgmt-ui_processlog_create', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EDIT',   'process-log-mgmt-ui',  'Edit processlog',    'guid_process-log-mgmt-ui_processlog_edit', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'DELETE', 'process-log-mgmt-ui',  'Deleteprocesslog',   'guid_process-log-mgmt-ui_processlog_delete', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'KILL',   'process-log-mgmt-ui',  'Kill process',       'guid_process-log-mgmt-ui_processlog_kill', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SAVE',   'process-log-mgmt-ui',  'Update and save processlog', 'guid_process-log-mgmt-ui_processlog_save', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'IMPORT', 'process-log-mgmt-ui',  'Import processlog',  'guid_process-log-mgmt-ui_processlog_import', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'EXPORT', 'process-log-mgmt-ui',  'Export processlog',  'guid_process-log-mgmt-ui_processlog_export', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'VIEW',   'process-log-mgmt-ui',  'View processlog',    'guid_process-log-mgmt-ui_processlog_view', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'SEARCH', 'process-log-mgmt-ui',  'Search processlog',  'guid_process-log-mgmt-ui_processlog_search', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script'),
(0, now(), now(), 'f', 'f', 'RESOLVE_ISSUE', 'process-log-mgmt-ui', 'Create processlog', 'guid_process-log-mgmt-ui_processlog_resolve', 'process-log-mgmt', 'PROCESSLOG', 'script', 'script')
;


DELETE FROM role;
INSERT INTO role (optlock, creationdate, modificationdate, mandatory, description, guid, name, tenant_id, creationuser, modificationuser) VALUES
(0, now(), now(), 't', 'Admin role of tenant dtag', 'onecx-admin-default', 'onecx-admin', 'default', 'script', 'script'),
(0, now(), now(), 't', 'Admin role of tenant cap', 'onecx-admin-cap', 'onecx-admin', '10000', 'script', 'script'),
(0, now(), now(), 't', 'Admin role of tenant dtag', 'onecx-admin-dtag', 'onecx-admin', '50001', 'script', 'script'),
(0, now(), now(), 'f', 'Read role of tenant dtag', 'onecx-user-default', 'onecx-user', 'default', 'script', 'script'),
(0, now(), now(), 'f', 'Read role of tenant cap', 'onecx-user-cap', 'onecx-user', '10000', 'script', 'script'),
(0, now(), now(), 'f', 'Read role of tenant dtag', 'onecx-user-dtag', 'onecx-user', '50001', 'script', 'script')
;


-- Recreate assignments for all permissions to roles onecx-admin-* and onecx-user-*

DELETE FROM assignment
WHERE  role_id LIKE 'onecx-admin-%'
  OR   role_id LIKE 'onecx-user-%'
;

INSERT INTO assignment (optlock, creationdate, modificationdate, mandatory, guid, permission_id, role_id, tenant_id, creationuser, modificationuser)
SELECT 0, now(), now(), p.mandatory, p.guid || '_admin-default', p.guid, 'onecx-admin-default', 'default', 'script', 'script'
FROM  permission p
UNION
SELECT 0, now(), now(), p.mandatory, p.guid || '_admin-cap', p.guid, 'onecx-admin-cap', '10000', 'script', 'script'
FROM  permission p
UNION
SELECT 0, now(), now(), p.mandatory, p.guid || '_admin-dtag', p.guid, 'onecx-admin-dtag', '50001', 'script', 'script'
FROM  permission p
;

INSERT INTO assignment (optlock, creationdate, modificationdate, mandatory, guid, permission_id, role_id, tenant_id, creationuser, modificationuser)
SELECT 0, now(), now(), p.mandatory, p.guid || '_read-default', p.guid, 'onecx-user-default', 'default', 'script', 'script'
FROM  permission p
WHERE p.action IN ('read', 'VIEW', 'SEARCH')
UNION
SELECT 0, now(), now(), p.mandatory, p.guid || '_read-cap', p.guid, 'onecx-user-cap', '10000', 'script', 'script'
FROM  permission p
WHERE p.action IN ('read', 'VIEW', 'SEARCH')
UNION
SELECT 0, now(), now(), p.mandatory, p.guid || '_read-dtag', p.guid, 'onecx-user-dtag', '50001', 'script', 'script'
FROM  permission p
WHERE p.action IN ('read', 'VIEW', 'SEARCH')
;
