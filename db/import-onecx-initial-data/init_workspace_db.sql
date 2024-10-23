-- CREATE workspace DATA for 3 tenants: default, cap, dtag

-- clean data bottom up (taken into account foreign keys)
DELETE FROM assignment;
DELETE FROM menu_item_i18n;
DELETE FROM menu_item;
DELETE FROM microfrontend;
DELETE FROM product;
DELETE FROM role;
DELETE FROM slot_components;
DELETE FROM slot;


-- create data top down

DELETE FROM workspace;
INSERT INTO workspace (optlock, creationdate, modificationdate, operator, mandatory, base_url, name, display_name, guid, home_page, tenant_id, theme, company_name, description, footer_label, logo_url, phone_number, rss_feed_url, city, country, postalcode, street, streetno, creationuser, modificationuser) VALUES
(0, now(), now(), 't', 't', '/admin', 'ADMIN', 'Admin', 'workspace-default', '/welcome', 'default', 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'script', 'script'),
(0, now(), now(), 't', 't', '/admin', 'ADMIN', 'Admin', 'workspace-cap',     '/welcome', '10000',   'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'script', 'script'),
(0, now(), now(), 't', 't', '/admin', 'ADMIN', 'Admin', 'workspace-dtag',    '/welcome', '50001',   'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'script', 'script')
;


DELETE FROM role;
INSERT INTO role (optlock, creationdate, modificationdate, description, guid, name, tenant_id, workspace_guid, creationuser, modificationuser) VALUES
(0, now(), now(), 'OneCX Admin', 'onecx-admin-dtag_guid',    'onecx-admin', '50001',   'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'OneCX User',  'onecx-user-dtag_guid',     'onecx-user',  '50001',   'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'OneCX Admin', 'onecx-admin-default_guid', 'onecx-admin', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'OneCX User',  'onecx-user-default_guid',  'onecx-user',  'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'OneCX Admin', 'onecx-admin-cap_guid',     'onecx-admin', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), 'OneCX User',  'onecx-user-cap_guid',      'onecx-user',  '10000',   'workspace-cap', 'script', 'script')
;


DELETE FROM product;
INSERT INTO product (optlock, creationdate, modificationdate, base_url, guid, product_name, tenant_id, workspace_guid, creationuser, modificationuser) VALUES
/* Used to test edge case scenarios */
(0, now(), now(), '/unknown', 'onecx-unknown_default', 'onecx-unknown', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/unsable-undeployed-2', 'unusable-product-default', 'unusable-product-2', 'default', 'workspace-default', 'script', 'script'),

/* Core Products */
(0, now(), now(), '/announcement', 'onecx-announcement_default', 'onecx-announcement', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/announcement', 'onecx-announcement_10000',   'onecx-announcement', '10000',   'workspace-cap',     'script', 'script'),
(0, now(), now(), '/announcement', 'onecx-announcement_50001',   'onecx-announcement', '50001',   'workspace-dtag',    'script', 'script'),
(0, now(), now(), '/bookmark', 'onecx-bookmark_default', 'onecx-bookmark', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/bookmark', 'onecx-bookmark_10000',   'onecx-bookmark', '10000',   'workspace-cap',     'script', 'script'),
(0, now(), now(), '/bookmark', 'onecx-bookmark_50001',   'onecx-bookmark', '50001',   'workspace-dtag',    'script', 'script'),

(0, now(), now(), '/help', 'onecx-help_default', 'onecx-help', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/help', 'onecx-help_cap', 'onecx-help', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), '/help', 'onecx-help_dtag', 'onecx-help', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/iam', '2c05848f-6232-42b8-8042-d6b15fb2f623', 'onecx-iam', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/iam', '429b7ed8-ef9e-4a1e-a7e2-5e9c16a22ca1', 'onecx-iam', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/iam', '83dccad8-444c-4b86-875d-49f5c13b17b7', 'onecx-iam', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), '/permission', '792c1974-2e8d-4b32-bff0-733753e01e4d', 'onecx-permission', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), '/permission', '7e5d7783-6cee-4c8e-a97c-6600781e838e', 'onecx-permission', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/permission', 'e4df0fc0-08ff-4b25-be44-a0f0d0e45742', 'onecx-permission', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/application', 'onecx-product-store_default', 'onecx-product-store', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/application', 'onecx-product-store_dtag', 'onecx-product-store', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/application', 'onecx-product-store_default_cap', 'onecx-product-store', '10000', 'workspace-cap', 'script', 'script'),

(0, now(), now(), '/search-config', 'onecx-search-config_default', 'onecx-search-config', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/search-config', 'onecx-search-config_dtag',    'onecx-search-config', '50001',   'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/search-config', 'onecx-search-config_cap',     'onecx-search-config', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), '/shell', 'onecx-shell_default', 'onecx-shell', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/shell', 'onecx-shell_cap',     'onecx-shell', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), '/shell', 'onecx-shell_dtag',    'onecx-shell', '50001',   'workspace-dtag', 'script', 'script'),

(0, now(), now(), '/tenant', 'tenant-cap', 'onecx-tenant', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), '/tenant', 'tenant-default', 'onecx-tenant', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/tenant', 'tenant-dtag', 'onecx-tenant', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/theme', '4283e298-ce36-4deb-b30c-e2e3f60d872c', 'onecx-theme', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/theme', 'b2d81cff-a2b8-4db0-951a-8be246d487c2', 'onecx-theme', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/theme', 'c9ccbcff-ff0b-4675-bd83-a81d76d26625', 'onecx-theme', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), '/user', '22b8ab0e-b399-429d-963c-b76dc5af1a03', 'onecx-user-profile', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/user', 'd6f71dda-1054-4d0f-877a-b7cf73a28989', 'onecx-user-profile', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/user', 'dca918d3-6360-43d8-b1c3-5ff49fcb13cd', 'onecx-user-profile', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), '/welcome', '5e92a393-835b-48f8-9039-e20ecea1cddd', 'onecx-welcome', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/welcome', 'bbd83c73-61c0-452a-9e82-13f7e319e411', 'onecx-welcome', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), '/welcome', 'c7db4be0-bb8c-4845-bb5d-119578548e9d', 'onecx-welcome', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/workspace', '1161cea6-ef30-48cf-9bdd-6c834cb8de6c', 'onecx-workspace', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/workspace', '4f3bb3ad-33d1-4d19-8772-853be9d0e103', 'onecx-workspace', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), '/workspace', '610f7b54-dd45-420b-a99e-287538a5dba7', 'onecx-workspace', '10000', 'workspace-cap', 'script', 'script'),

(0, now(), now(), '/parameter', 'onecx-parameter_default', 'onecx-parameter', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/parameter', 'onecx-parameter_cap',     'onecx-parameter', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), '/parameter', 'onecx-parameter_dtag',    'onecx-parameter', '50001',   'workspace-dtag', 'script', 'script'),

(0, now(), now(), '/processlog', 'process-log-mgmt_default', 'process-log-mgmt', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), '/processlog', 'process-log-mgmt_cap',     'process-log-mgmt', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), '/processlog', 'process-log-mgmt_dtag',    'process-log-mgmt', '50001',   'workspace-dtag', 'script', 'script')
;


DELETE FROM microfrontend;
INSERT INTO microfrontend (base_path, guid, mfe_id, product_guid) VALUES
/* Used to test edge case scenarios */
('/', 'onecx-unknown-ui_default', 'onecx-unknown-ui', 'onecx-unknown_default'),
('/', 'unusable-mfe-2-ui', 'unusable-mfe-2-ui', 'unusable-product-default'),

/* Core Mfes */
('/', 'onecx-announcement-ui_default', 'onecx-announcement-ui', 'onecx-announcement_default'),
('/', 'onecx-announcement-ui_cap',     'onecx-announcement-ui', 'onecx-announcement_10000'),
('/', 'onecx-announcement-ui_dtag',    'onecx-announcement-ui', 'onecx-announcement_50001'),

('/', 'onecx-bookmark-ui_default', 'onecx-bookmark-ui', 'onecx-bookmark_default'),
('/', 'onecx-bookmark-ui_cap',     'onecx-bookmark-ui', 'onecx-bookmark_10000'),
('/', 'onecx-bookmark-ui_dtag',    'onecx-bookmark-ui', 'onecx-bookmark_50001'),

('/', 'onecx-help-ui_default', 'onecx-help-ui', 'onecx-help_default'),
('/', 'onecx-help-ui_cap',     'onecx-help-ui', 'onecx-help_cap'),
('/', 'onecx-help-ui_dtag',    'onecx-help-ui', 'onecx-help_dtag'),

('/', '03b36e24-1391-420e-816c-b6dc4e1edcbc', 'onecx-iam-ui', '429b7ed8-ef9e-4a1e-a7e2-5e9c16a22ca1'),
('/', '3301cac9-4bfc-4a60-bb6e-d070ae77d060', 'onecx-iam-ui', '83dccad8-444c-4b86-875d-49f5c13b17b7'),
('/', 'f33817f5-fdf0-414d-b8c1-ab22e5e18fe3', 'onecx-iam-ui', '2c05848f-6232-42b8-8042-d6b15fb2f623'),

('/', '089eb76f-c488-4e50-bd86-fa6251268aec', 'onecx-permission-ui', 'e4df0fc0-08ff-4b25-be44-a0f0d0e45742'),
('/', '168584bf-0696-4f2c-893a-07e0891c6bf8', 'onecx-permission-ui', '7e5d7783-6cee-4c8e-a97c-6600781e838e'),
('/', '63276767-d751-4c09-a44e-85f455d84bc9', 'onecx-permission-ui', '792c1974-2e8d-4b32-bff0-733753e01e4d'),

('/', 'onecx-product-store-ui_default', 'onecx-product-store-ui', 'onecx-product-store_default'),
('/', 'onecx-product-store-ui_cap',     'onecx-product-store-ui', 'onecx-product-store_default_cap'),
('/', 'onecx-product-store-ui_dtag',    'onecx-product-store-ui', 'onecx-product-store_dtag'),

('/', 'onecx-search-config-ui_default', 'onecx-search-config-ui', 'onecx-search-config_default'),
('/', 'onecx-search-config-ui_cap',     'onecx-search-config-ui', 'onecx-search-config_cap'),
('/', 'onecx-search-config-ui_dtag',    'onecx-search-config-ui', 'onecx-search-config_dtag'),

('/', 'onecx-tenant-ui_default', 'onecx-tenant-ui', 'tenant-default'),
('/', 'onecx-tenant-ui_cap', 'onecx-tenant-ui', 'tenant-cap'),
('/', 'onecx-tenant-ui_dtag', 'onecx-tenant-ui', 'tenant-dtag'),

('/', '512df106-c910-4b61-8238-a75c3422dfa8', 'onecx-theme-ui', 'c9ccbcff-ff0b-4675-bd83-a81d76d26625'),
('/', '9cc3ee05-c5ec-4f6e-8797-c60df1db0b5f', 'onecx-theme-ui', '4283e298-ce36-4deb-b30c-e2e3f60d872c'),
('/', 'd3db070d-14d1-4772-962a-b02916d1d197', 'onecx-theme-ui', 'b2d81cff-a2b8-4db0-951a-8be246d487c2'),

('/', 'user-profile-mfe_default', 'onecx-user-profile-ui', '22b8ab0e-b399-429d-963c-b76dc5af1a03'),
('/', 'user-profile-mfe_cap',     'onecx-user-profile-ui', 'dca918d3-6360-43d8-b1c3-5ff49fcb13cd'),
('/', 'user-profile-mfe_dtag',    'onecx-user-profile-ui', 'd6f71dda-1054-4d0f-877a-b7cf73a28989'),

('/', '114969e5-da7f-4e8c-afd0-c407686b9d4d', 'onecx-welcome-ui', 'bbd83c73-61c0-452a-9e82-13f7e319e411'),
('/', '5a4af879-5bb0-422a-839f-b5c4be6a8ee4', 'onecx-welcome-ui', '5e92a393-835b-48f8-9039-e20ecea1cddd'),
('/', '87b4f6ca-2fad-420a-ad0c-17af4de3aaa4', 'onecx-welcome-ui', 'c7db4be0-bb8c-4845-bb5d-119578548e9d'),

('/', '04fd4e89-e216-4533-b62e-84a74e26ae0c', 'onecx-workspace-ui', '610f7b54-dd45-420b-a99e-287538a5dba7'),
('/', '360e25bf-130e-4365-b77b-5020503ff0cb', 'onecx-workspace-ui', '1161cea6-ef30-48cf-9bdd-6c834cb8de6c'),
('/', '9c1ca780-2b18-4d15-9244-a55ba4564b72', 'onecx-workspace-ui', '4f3bb3ad-33d1-4d19-8772-853be9d0e103'),

('/', 'onecx-parameter-ui_default', 'onecx-parameter-ui', 'onecx-parameter_default'),
('/', 'onecx-parameter-ui_cap',     'onecx-parameter-ui', 'onecx-parameter_cap'),
('/', 'onecx-parameter-ui_dtag',    'onecx-parameter-ui', 'onecx-parameter_dtag'),

('/', 'process-log-mgmt-ui_default', 'process-log-mgmt-ui', 'process-log-mgmt_default'),
('/', 'process-log-mgmt-ui_cap',     'process-log-mgmt-ui', 'process-log-mgmt_cap'),
('/', 'process-log-mgmt-ui_dtag',    'process-log-mgmt-ui', 'process-log-mgmt_dtag')
;


DELETE FROM slot;
INSERT INTO slot (optlock, creationdate, modificationdate, guid, name, tenant_id, workspace_guid, creationuser, modificationuser) VALUES
/* Used to test edge case scenarios */
(0, now(), now(), 'guid_slot-unknown_default', 'onecx-unknown-slot', 'default', 'workspace-default', 'script', 'script'),

/* Core Product Slots */
(0, now(), now(), 'guid_slot-header-right_default', 'onecx-shell-header-right', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-header-right_cap',     'onecx-shell-header-right', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-header-right_dtag',    'onecx-shell-header-right', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-sub-header_default',   'onecx-shell-sub-header', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-sub-header_cap',       'onecx-shell-sub-header', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-sub-header_dtag',      'onecx-shell-sub-header', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-horizontal-menu_default', 'onecx-shell-horizontal-menu', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-horizontal-menu_cap',  'onecx-shell-horizontal-menu', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-horizontal-menu_dtag', 'onecx-shell-horizontal-menu', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-vertical-menu_default', 'onecx-shell-vertical-menu', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-vertical-menu_cap',     'onecx-shell-vertical-menu', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-vertical-menu_dtag',    'onecx-shell-vertical-menu', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-footer_default',       'onecx-shell-footer', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-footer_cap',           'onecx-shell-footer', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-footer_dtag',          'onecx-shell-footer', '50001', 'workspace-dtag', 'script', 'script'),

(0, now(), now(), 'guid_slot-search-config_default', 'onecx-search-config', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-search-config_cap',     'onecx-search-config', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-search-config_dtag',    'onecx-search-config', '50001',   'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-column-group-selection_default', 'onecx-column-group-selection', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-column-group-selection_cap',     'onecx-column-group-selection', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-column-group-selection_dtag',    'onecx-column-group-selection', '50001',   'workspace-dtag', 'script', 'script'),

(0, now(), now(), 'guid_slot-change-password_default',  'onecx-user-profile-change-password', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-change-password_cap',      'onecx-user-profile-change-password', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-change-password_dtag',     'onecx-user-profile-change-password', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-user-permissions_default', 'onecx-user-profile-permissions', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-user-permissions_cap',     'onecx-user-profile-permissions', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-user-permissions_dtag',    'onecx-user-profile-permissions', '50001', 'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-manage-password_default',  'onecx-manage-password', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-manage-password_cap',      'onecx-manage-password', '10000', 'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-manage-password_dtag',     'onecx-manage-password', '50001', 'workspace-dtag', 'script', 'script'),

(0, now(), now(), 'guid_slot-theme-list-workspaces-using-theme_default', 'onecx-theme-list-workspaces-using-theme', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-theme-list-workspaces-using-theme_cap',     'onecx-theme-list-workspaces-using-theme', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-theme-list-workspaces-using-theme_dtag',    'onecx-theme-list-workspaces-using-theme', '50001',   'workspace-dtag', 'script', 'script'),

(0, now(), now(), 'guid_slot-welcome-list-active_default', 'onecx-welcome-list-active', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-welcome-list-active_cap',     'onecx-welcome-list-active', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-welcome-list-active_dtag',    'onecx-welcome-list-active', '50001',   'workspace-dtag', 'script', 'script'),
(0, now(), now(), 'guid_slot-welcome-bookmarks_default',   'onecx-welcome-list-bookmarks', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-welcome-bookmarks_cap',       'onecx-welcome-list-bookmarks', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-welcome-bookmarks_dtag',      'onecx-welcome-list-bookmarks', '50001',   'workspace-dtag', 'script', 'script'),

(0, now(), now(), 'guid_slot-onecx-avatar-image_default', 'onecx-avatar-image', 'default', 'workspace-default', 'script', 'script'),
(0, now(), now(), 'guid_slot-onecx-avatar-image_cap',     'onecx-avatar-image', '10000',   'workspace-cap', 'script', 'script'),
(0, now(), now(), 'guid_slot-onecx-avatar-image_dtag',    'onecx-avatar-image', '50001',   'workspace-dtag', 'script', 'script')
;


DELETE FROM slot_components;
INSERT INTO slot_components (index, app_id, name, product_name, slot_guid) VALUES
(0, 'onecx-announcement-ui', './OneCXAnnouncementBannerComponent', 'onecx-announcement', 'guid_slot-sub-header_default'),
(0, 'onecx-announcement-ui', './OneCXAnnouncementBannerComponent', 'onecx-announcement', 'guid_slot-sub-header_cap'),
(0, 'onecx-announcement-ui', './OneCXAnnouncementBannerComponent', 'onecx-announcement', 'guid_slot-sub-header_dtag'),
(0, 'onecx-announcement-ui', './OneCXAnnouncementListActiveComponent', 'onecx-announcement', 'guid_slot-welcome-list-active_default'),
(0, 'onecx-announcement-ui', './OneCXAnnouncementListActiveComponent', 'onecx-announcement', 'guid_slot-welcome-list-active_cap'),
(0, 'onecx-announcement-ui', './OneCXAnnouncementListActiveComponent', 'onecx-announcement', 'guid_slot-welcome-list-active_dtag'),

(0, 'onecx-bookmark-ui', './OneCXBookmarkListComponent', 'onecx-bookmark', 'guid_slot-welcome-bookmarks_default'),
(0, 'onecx-bookmark-ui', './OneCXBookmarkListComponent', 'onecx-bookmark', 'guid_slot-welcome-bookmarks_cap'),
(0, 'onecx-bookmark-ui', './OneCXBookmarkListComponent', 'onecx-bookmark', 'guid_slot-welcome-bookmarks_dtag'),

(0, 'onecx-iam-ui', './OneCXChangePasswordComponent', 'onecx-iam', 'guid_slot-change-password_default'),
(0, 'onecx-iam-ui', './OneCXChangePasswordComponent', 'onecx-iam', 'guid_slot-change-password_cap'),
(0, 'onecx-iam-ui', './OneCXChangePasswordComponent', 'onecx-iam', 'guid_slot-change-password_dtag'),

(0, 'onecx-help-ui', './OneCXShowHelpComponent', 'onecx-help', 'guid_slot-header-right_default'),
(0, 'onecx-help-ui', './OneCXShowHelpComponent', 'onecx-help', 'guid_slot-header-right_cap'),
(0, 'onecx-help-ui', './OneCXShowHelpComponent', 'onecx-help', 'guid_slot-header-right_dtag'),
(1, 'onecx-help-ui', './OneCXHelpItemEditorComponent', 'onecx-help', 'guid_slot-header-right_default'),
(1, 'onecx-help-ui', './OneCXHelpItemEditorComponent', 'onecx-help', 'guid_slot-header-right_cap'),
(1, 'onecx-help-ui', './OneCXHelpItemEditorComponent', 'onecx-help', 'guid_slot-header-right_dtag'),
(2, 'onecx-bookmark-ui', './OneCXManageBookmarkComponent', 'onecx-bookmark', 'guid_slot-header-right_default'),
(2, 'onecx-bookmark-ui', './OneCXManageBookmarkComponent', 'onecx-bookmark', 'guid_slot-header-right_cap'),
(2, 'onecx-bookmark-ui', './OneCXManageBookmarkComponent', 'onecx-bookmark', 'guid_slot-header-right_dtag'),
(3, 'onecx-workspace-ui', './OneCXUserAvatarMenuComponent', 'onecx-workspace', 'guid_slot-header-right_default'),
(3, 'onecx-workspace-ui', './OneCXUserAvatarMenuComponent', 'onecx-workspace', 'guid_slot-header-right_cap'),
(3, 'onecx-workspace-ui', './OneCXUserAvatarMenuComponent', 'onecx-workspace', 'guid_slot-header-right_dtag'),

(0, 'onecx-workspace-ui', './OneCXHorizontalMainMenuComponent', 'onecx-workspace', 'guid_slot-horizontal-menu_default'),
(0, 'onecx-workspace-ui', './OneCXHorizontalMainMenuComponent', 'onecx-workspace', 'guid_slot-horizontal-menu_cap'),
(0, 'onecx-workspace-ui', './OneCXHorizontalMainMenuComponent', 'onecx-workspace', 'guid_slot-horizontal-menu_dtag'),
(0, 'onecx-workspace-ui', './OneCXUserSidebarMenuComponent',  'onecx-workspace', 'guid_slot-vertical-menu_default'),
(0, 'onecx-workspace-ui', './OneCXUserSidebarMenuComponent',  'onecx-workspace', 'guid_slot-vertical-menu_cap'),
(0, 'onecx-workspace-ui', './OneCXUserSidebarMenuComponent',  'onecx-workspace', 'guid_slot-vertical-menu_dtag'),
(1, 'onecx-workspace-ui', './OneCXVerticalMainMenuComponent', 'onecx-workspace', 'guid_slot-vertical-menu_default'),
(1, 'onecx-workspace-ui', './OneCXVerticalMainMenuComponent', 'onecx-workspace', 'guid_slot-vertical-menu_cap'),
(1, 'onecx-workspace-ui', './OneCXVerticalMainMenuComponent', 'onecx-workspace', 'guid_slot-vertical-menu_dtag'),
(0, 'onecx-workspace-ui', './OneCXListWorkspacesUsingThemeComponent', 'onecx-workspace', 'guid_slot-theme-list-workspaces-using-theme_default'),
(0, 'onecx-workspace-ui', './OneCXListWorkspacesUsingThemeComponent', 'onecx-workspace', 'guid_slot-theme-list-workspaces-using-theme_cap'),
(0, 'onecx-workspace-ui', './OneCXListWorkspacesUsingThemeComponent', 'onecx-workspace', 'guid_slot-theme-list-workspaces-using-theme_dtag'),

(0, 'onecx-workspace-ui', './OneCXFooterMenuComponent', 'onecx-workspace', 'guid_slot-footer_default'),
(0, 'onecx-workspace-ui', './OneCXFooterMenuComponent', 'onecx-workspace', 'guid_slot-footer_cap'),
(0, 'onecx-workspace-ui', './OneCXFooterMenuComponent', 'onecx-workspace', 'guid_slot-footer_dtag'),

(0, 'onecx-permission-ui', './OneCXUserRolesPermissionsComponent', 'onecx-permission', 'guid_slot-user-permissions_default'),
(0, 'onecx-permission-ui', './OneCXUserRolesPermissionsComponent', 'onecx-permission', 'guid_slot-user-permissions_cap'),
(0, 'onecx-permission-ui', './OneCXUserRolesPermissionsComponent', 'onecx-permission', 'guid_slot-user-permissions_dtag'),

(0, 'onecx-user-profile-ui', './OneCXAvatarImageComponent', 'onecx-user-profile', 'guid_slot-onecx-avatar-image_default'),
(0, 'onecx-user-profile-ui', './OneCXAvatarImageComponent', 'onecx-user-profile', 'guid_slot-onecx-avatar-image_cap'),
(0, 'onecx-user-profile-ui', './OneCXAvatarImageComponent', 'onecx-user-profile', 'guid_slot-onecx-avatar-image_dtag'),

(0, 'onecx-search-config-ui', './OneCXSearchConfigComponent', 'onecx-search-config', 'guid_slot-search-config_default'),
(0, 'onecx-search-config-ui', './OneCXSearchConfigComponent', 'onecx-search-config', 'guid_slot-search-config_cap'),
(0, 'onecx-search-config-ui', './OneCXSearchConfigComponent', 'onecx-search-config', 'guid_slot-search-config_dtag'),
(0, 'onecx-search-config-ui', './OneCXColumnGroupSelectionComponent', 'onecx-search-config', 'guid_slot-column-group-selection_default'),
(0, 'onecx-search-config-ui', './OneCXColumnGroupSelectionComponent', 'onecx-search-config', 'guid_slot-column-group-selection_cap'),
(0, 'onecx-search-config-ui', './OneCXColumnGroupSelectionComponent', 'onecx-search-config', 'guid_slot-column-group-selection_dtag'),

/* Used to test edge case scenarios */
(1, 'unusable-mfe-1-ui', './UndeployedComponent', 'unusable-product-1', 'guid_slot-footer_default')
;


DELETE FROM menu_item;
INSERT INTO menu_item (disabled, external, optlock, pos, creationdate, modificationdate, application_id, badge, description, guid, key, name, parent, scope, tenant_id, url, workspace, creationuser, modificationuser) VALUES
('f', 'f', 0, 0, now(), now(), NULL, 'folder', NULL, 'dc8e0d50-096f-42b1-b429-c9e093625e37', 'PORTAL_MAIN_MENU', 'Main Menu', NULL, NULL, 'default', '', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'folder', NULL, 'f7de87e1-7a54-41df-82c5-8e760f01292e', 'PORTAL_MAIN_MENU', 'Main Menu', NULL, NULL, '10000', '', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'folder', NULL, 'd6afb641-199f-4da6-a52f-7a9186b2b323', 'PORTAL_MAIN_MENU', 'Main Menu', NULL, NULL, '50001', '', 'workspace-dtag', 'script', 'script'),

('f', 'f', 0, 0, now(), now(), NULL, 'cog', NULL, '876638cb-08af-40ca-a97a-0d6bc84b1495', 'CORE_PRODUCT_STORE', 'Application Store', 'dc8e0d50-096f-42b1-b429-c9e093625e37', NULL, 'default', '/application', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'cog', NULL, 'c075f2b6-fc93-4e2a-b47e-011caf53c046', 'CORE_PRODUCT_STORE', 'Application Store', 'f7de87e1-7a54-41df-82c5-8e760f01292e', NULL, '10000', '/application', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'cog', NULL, '23805bcf-4bfe-469c-bd9d-81f046583b2d', 'CORE_PRODUCT_STORE', 'Application Store', 'd6afb641-199f-4da6-a52f-7a9186b2b323', NULL, '50001', '/application', 'workspace-dtag', 'script', 'script'),

('f', 'f', 0, 1, now(), now(), NULL, 'home', NULL, 'f21ced64-5502-4c85-95f2-29d9a4f03d8c', 'CORE_WELCOME', 'Welcome Page', 'dc8e0d50-096f-42b1-b429-c9e093625e37', NULL, 'default', '/welcome', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'home', NULL, 'c18ab9a9-1b45-47f6-a72e-1fa08eb621b1', 'CORE_WELCOME', 'Welcome Page', 'f7de87e1-7a54-41df-82c5-8e760f01292e', NULL, '10000', '/welcome', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'home', NULL, '7b122637-6111-4701-b478-7b8d21d21d42', 'CORE_WELCOME', 'Welcome Page', 'd6afb641-199f-4da6-a52f-7a9186b2b323', NULL, '50001', '/welcome', 'workspace-dtag', 'script', 'script'),

('f', 'f', 0, 2, now(), now(), NULL, 'folder', NULL, 'ee4393c6-8098-4faf-9b68-a2c6e12ea153', 'CORE_WORKSPACE_PARENT', 'Workspace', 'dc8e0d50-096f-42b1-b429-c9e093625e37', NULL, 'default', '', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'folder', NULL, '32f62a5a-f740-42c6-94ed-2037d3b500c5', 'CORE_WORKSPACE_PARENT', 'Workspace', 'f7de87e1-7a54-41df-82c5-8e760f01292e', NULL, '10000', '', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'folder', NULL, 'e52c461c-f9d4-4627-baf0-c555da1b5647', 'CORE_WORKSPACE_PARENT', 'Workspace', 'd6afb641-199f-4da6-a52f-7a9186b2b323', NULL, '50001', '', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'ellipsis-h', NULL, '3fc3786c-2db2-49ed-8b93-5a1143046aed', 'CORE_WORKSPACE_MGMT', 'Workspaces', 'ee4393c6-8098-4faf-9b68-a2c6e12ea153', NULL, 'default', '/workspace', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'ellipsis-h', NULL, '1fc2a4ad-e873-41c2-b29e-7159b6d0eb3e', 'CORE_WORKSPACE_MGMT', 'Workspaces', '32f62a5a-f740-42c6-94ed-2037d3b500c5', NULL, '10000', '/workspace', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'ellipsis-h', NULL, '41155728-4b42-4df2-901e-67de8168ec8a', 'CORE_WORKSPACE_MGMT', 'Workspaces', 'e52c461c-f9d4-4627-baf0-c555da1b5647', NULL, '50001', '/workspace', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'palette', NULL, '801dae43-e66e-462a-bb7d-050f3ae73893', 'CORE_THEME_MGMT', 'Themes', 'ee4393c6-8098-4faf-9b68-a2c6e12ea153', NULL, 'default', '/theme', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'palette', NULL, '801dae43-e66e-462a-bb7d-050f3ae73892', 'CORE_THEME_MGMT', 'Themes', '32f62a5a-f740-42c6-94ed-2037d3b500c5', NULL, '10000', '/theme', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'palette', NULL, '41a7ee0b-f3a0-4c84-8ae9-a0daec0f4c1c', 'CORE_THEME_MGMT', 'Themes', 'e52c461c-f9d4-4627-baf0-c555da1b5647', NULL, '50001', '/theme', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'android', NULL, 'onecx-tenant_default_guid', 'CORE_TENANT_MGMT', 'Tenants', 'ee4393c6-8098-4faf-9b68-a2c6e12ea153', NULL, 'default', '/tenant', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'android', NULL, 'onecx-tenant_cap_guid', 'CORE_TENANT_MGMT', 'Tenants', '32f62a5a-f740-42c6-94ed-2037d3b500c5', NULL, '10000', '/tenant', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'android', NULL, 'onecx-tenant_dtag_guid', 'CORE_TENANT_MGMT', 'Tenants', 'e52c461c-f9d4-4627-baf0-c555da1b5647', NULL, '50001', '/tenant', 'workspace-dtag', 'script', 'script'),

('f', 'f', 0, 3, now(), now(), NULL, 'map', NULL, 'onecx-misc_default_guid', 'ONECX_MISC', 'Miscellanea', 'dc8e0d50-096f-42b1-b429-c9e093625e37', NULL, 'default', '', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'map', NULL, 'onecx-misc_cap_guid', 'ONECX_MISC', 'Miscellanea', 'f7de87e1-7a54-41df-82c5-8e760f01292e', NULL, '10000', '', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'map', NULL, 'onecx-misc_dtag_guid', 'ONECX_MISC', 'Miscellanea', 'd6afb641-199f-4da6-a52f-7a9186b2b323', NULL, '50001', '', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'calendar-plus', NULL, 'onecx-misc_ann_default_guid', 'CORE_AH_MGMT_A', 'Announcements', 'onecx-misc_default_guid', NULL, 'default', '/announcement', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'calendar-plus', NULL, 'onecx-misc_ann_cap_guid', 'CORE_AH_MGMT_A', 'Announcements', 'onecx-misc_cap_guid', NULL, '10000', '/announcement', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'calendar-plus', NULL, 'onecx-misc_ann_dtag_guid', 'CORE_AH_MGMT_A', 'Announcements', 'onecx-misc_dtag_guid', NULL, '50001', '/announcement', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'question-circle', NULL, 'onecx-misc_help_default_guid', 'CORE_AH_MGMT_HI', 'Help Items', 'onecx-misc_default_guid', NULL, 'default', '/help', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'question-circle', NULL, 'onecx-misc_help_cap_guid', 'CORE_AH_MGMT_HI', 'Help Items', 'onecx-misc_cap_guid', NULL, '10000', '/help', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'question-circle', NULL, 'onecx-misc_help_dtag_guid', 'CORE_AH_MGMT_HI', 'Help Items', 'onecx-misc_dtag_guid', NULL, '50001', '/help', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'database', NULL, 'onecx-misc_parameter_default_guid', 'CORE_PARAMETER_MGMT', 'Parameter', 'onecx-misc_default_guid', NULL, 'default', '/parameter', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'database', NULL, 'onecx-misc_parameter_cap_guid', 'CORE_PARAMETER_MGMT', 'Parameter', 'onecx-misc_cap_guid', NULL, '10000', '/parameter', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'database', NULL, 'onecx-misc_parameter_dtag_guid', 'CORE_PARAMETER_MGMT', 'Parameter', 'onecx-misc_dtag_guid', NULL, '50001', '/parameter', 'workspace-dtag', 'script', 'script'),

('f', 'f', 0, 4, now(), now(), NULL, 'users', NULL, 'onecx-users_default_guid', 'USERS_AND_ROLES', 'User & Permissions', 'dc8e0d50-096f-42b1-b429-c9e093625e37', NULL, 'default', '', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 4, now(), now(), NULL, 'users', NULL, 'onecx-users_cap_guid',     'USERS_AND_ROLES', 'User & Permissions', 'f7de87e1-7a54-41df-82c5-8e760f01292e', NULL, '10000', '', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 4, now(), now(), NULL, 'users', NULL, 'onecx-users_dtag_guid',    'USERS_AND_ROLES', 'User & Permissions', 'd6afb641-199f-4da6-a52f-7a9186b2b323', NULL, '50001', '', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'lock', NULL,  'onecx-permissions_default_guid', 'ONECX_PERMISSIONS', 'Roles & Permissions', 'onecx-users_default_guid', NULL, 'default', '/permission', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'lock', NULL,  'onecx-permissions_cap_guid',     'ONECX_PERMISSIONS', 'Roles & Permissions', 'onecx-users_cap_guid', NULL, '10000', '/permission', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'lock', NULL,  'onecx-permissions_dtag_guid',    'ONECX_PERMISSIONS', 'Roles & Permissions', 'onecx-users_dtag_guid', NULL, '50001', '/permission', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'users', NULL, 'iam-permissions_default_guid', 'IAM_USERS_ROLES', 'IAM Users & Roles', 'onecx-users_default_guid', NULL, 'default', '/iam', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'users', NULL, 'iam-permissions_cap_guid',     'IAM_USERS_ROLES', 'IAM Users & Roles', 'onecx-users_cap_guid', NULL, '10000', '/iam', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'users', NULL, 'iam-permissions_dtag_guid',    'IAM_USERS_ROLES', 'IAM Users & Roles', 'onecx-users_dtag_guid', NULL, '50001', '/iam', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'users', NULL,  'onecx-user-profiles_default_guid', 'ONECX_USER_PROFILES', 'OneCX User & Roles', 'onecx-users_default_guid', NULL, 'default', '/user/search', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'users', NULL,  'onecx-user-profiles_cap_guid',     'ONECX_USER_PROFILES', 'OneCX User & Roles', 'onecx-users_cap_guid', NULL, '10000', '/user/search', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'users', NULL,  'onecx-user-profiles_dtag_guid',    'ONECX_USER_PROFILES', 'OneCX User & Roles', 'onecx-users_dtag_guid', NULL, '50001', '/user/search', 'workspace-dtag', 'script', 'script'),

('f', 'f', 0, 5, now(), now(), NULL, 'ellipsis-h', NULL, 'onecx-apps_default_guid', 'ONECX_APPS', 'Other Apps', 'dc8e0d50-096f-42b1-b429-c9e093625e37', NULL, 'default',  '',            'workspace-default', 'script', 'script'),
('f', 'f', 0, 5, now(), now(), NULL, 'ellipsis-h', NULL, 'onecx-apps_dtag_guid', 'ONECX_APPS', 'Other Apps', 'd6afb641-199f-4da6-a52f-7a9186b2b323',    NULL, '50001',    '',            'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'cog', NULL, 'onecx-apps_processlog_default_guid', 'PROCESS_LOG', 'Process Log', 'onecx-apps_default_guid',        NULL, 'default',  '/processlog/processlog', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'cog', NULL, 'onecx-apps_processlog_dtag_guid', 'PROCESS_LOG', 'Process Log', 'onecx-apps_dtag_guid',              NULL, '50001',    '/processlog/processlog', 'workspace-dtag', 'script', 'script'),


('f', 'f', 0, 1, now(), now(), NULL, 'folder', NULL, '2435a677-fcc7-4186-9013-7626b1ae634f', 'USER_PROFILE_MENU', 'User Profile Menu', NULL, NULL, 'default', '', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'folder', NULL, '19927310-6666-4f8f-8c88-0eef21048c6d', 'USER_PROFILE_MENU', 'User Profile Menu', NULL, NULL, '10000', '', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'folder', NULL, '04be95d8-5b83-4ae4-817b-7b923ff17203', 'USER_PROFILE_MENU', 'User Profile Menu', NULL, NULL, '50001', '', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'user', NULL, '243ecff8-d12b-4f7a-87e0-dd91e70ee00d', 'PERSONAL_INFO', 'Personal Info', '2435a677-fcc7-4186-9013-7626b1ae634f', NULL, 'default', '/user', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'user', NULL, '78225b87-9750-4ca5-a70d-876afdbab389', 'PERSONAL_INFO', 'Personal Info', '19927310-6666-4f8f-8c88-0eef21048c6d', NULL, '10000', '/user', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, 'user', NULL, '341352bc-7858-4be4-b623-3ad10b0ab5d9', 'PERSONAL_INFO', 'Personal Info', '04be95d8-5b83-4ae4-817b-7b923ff17203', NULL, '50001', '/user', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'cog', NULL, 'onecx-my-settings_default_guid', 'ACCOUNT_SETTINGS', 'Account Settings', '2435a677-fcc7-4186-9013-7626b1ae634f', NULL, 'default', '/user/account', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'cog', NULL, 'onecx-my-settings_cap_guid',     'ACCOUNT_SETTINGS', 'Account Settings', '19927310-6666-4f8f-8c88-0eef21048c6d', NULL, '10000',   '/user/account', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, 'cog', NULL, 'onecx-my-settings_dtag_guid',    'ACCOUNT_SETTINGS', 'Account Settings', '04be95d8-5b83-4ae4-817b-7b923ff17203', NULL, '50001',   '/user/account', 'workspace-dtag', 'script', 'script'),

('f', 'f', 0, 2, now(), now(), NULL, 'lock', NULL, 'onecx-my-permissions_default_guid', 'MY_PERMISSIONS', 'My Permissions', '2435a677-fcc7-4186-9013-7626b1ae634f', NULL, 'default', '/user/roles', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'lock', NULL, 'onecx-my-permissions_cap_guid',     'MY_PERMISSIONS', 'My Permissions', '19927310-6666-4f8f-8c88-0eef21048c6d', NULL, '10000',   '/user/roles', 'workspace-cap',     'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'lock', NULL, 'onecx-my-permissions_dtag_guid',    'MY_PERMISSIONS', 'My Permissions', '04be95d8-5b83-4ae4-817b-7b923ff17203', NULL, '50001',   '/user/roles', 'workspace-dtag',    'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'bookmark', NULL, 'onecx-bookmarks_default_guid', 'MY_BOOKMARKS', 'My Bookmarks', '2435a677-fcc7-4186-9013-7626b1ae634f', NULL, 'default', '/bookmark', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'bookmark', NULL, 'onecx-bookmarks_cap_guid',     'MY_BOOKMARKS', 'My Bookmarks', '19927310-6666-4f8f-8c88-0eef21048c6d', NULL, '10000',   '/bookmark', 'workspace-cap',     'script', 'script'),
('f', 'f', 0, 2, now(), now(), NULL, 'bookmark', NULL, 'onecx-bookmarks_dtag_guid',    'MY_BOOKMARKS', 'My Bookmarks', '04be95d8-5b83-4ae4-817b-7b923ff17203', NULL, '50001',   '/bookmark', 'workspace-dtag',    'script', 'script'),

('f', 'f', 0, 3, now(), now(), NULL, 'key', NULL, 'e0bb82ce-d8b1-4ff3-b4bc-60aaa4ae9c27', 'CHANGE_PASSWORD', 'Change Password', '2435a677-fcc7-4186-9013-7626b1ae634f', NULL, 'default', '/user/account/change-password', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'key', NULL, 'f3fbdd48-3d93-46d2-8c7a-8f4f7dfc6601', 'CHANGE_PASSWORD', 'Change Password', '19927310-6666-4f8f-8c88-0eef21048c6d', NULL, '10000', '/user/account/change-password', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, 'key', NULL, '474d1fb8-a0be-443c-85e0-a72e14696b4b', 'CHANGE_PASSWORD', 'Change Password', '04be95d8-5b83-4ae4-817b-7b923ff17203', NULL, '50001', '/user/account/change-password', 'workspace-dtag', 'script', 'script'),


('f', 'f', 0, 3, now(), now(), NULL, NULL, NULL, 'd30c8d98-e9e7-4bdc-9bb4-1c06df8793f1', 'PORTAL_FOOTER_MENU', 'Footer Menu', NULL, NULL, 'default', NULL, 'workspace-default', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, NULL, NULL, 'a93db11f-8414-4a4d-98a5-9d46c1043568', 'PORTAL_FOOTER_MENU', 'Footer Menu', NULL, NULL, '10000', NULL, 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 3, now(), now(), NULL, NULL, NULL, '919c4a1c-70ce-43da-bc34-e984a6c6beb3', 'PORTAL_FOOTER_MENU', 'Footer Menu', NULL, NULL, '50001', NULL, 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, NULL, NULL, 'cc1bdd5a-3aa0-4fbb-88cf-0bd7ea298a27', 'FOOTER_CONTACT', 'Contact', 'd30c8d98-e9e7-4bdc-9bb4-1c06df8793f1', NULL, 'default', '/contact', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, NULL, NULL, '9186f35f-cbda-408a-8d45-68b1803300a5', 'FOOTER_CONTACT', 'Contact', 'a93db11f-8414-4a4d-98a5-9d46c1043568', NULL, '10000', '/contact', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 0, now(), now(), NULL, NULL, NULL, 'f9b402c9-91f6-4339-8744-1cae138d7df8', 'FOOTER_CONTACT', 'Contact', '919c4a1c-70ce-43da-bc34-e984a6c6beb3', NULL, '50001', '/contact', 'workspace-dtag', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, NULL, NULL, '79c06288-43b1-4b66-8ce9-9c7a818482b9', 'FOOTER_IMPRINT', 'Impressum', 'd30c8d98-e9e7-4bdc-9bb4-1c06df8793f1', NULL, 'default', '/imprint', 'workspace-default', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, NULL, NULL, '0ed64b45-94f3-4305-9c63-fffd57e11ad7', 'FOOTER_IMPRINT', 'Impressum', 'a93db11f-8414-4a4d-98a5-9d46c1043568', NULL, '10000', '/imprint', 'workspace-cap', 'script', 'script'),
('f', 'f', 0, 1, now(), now(), NULL, NULL, NULL, '4ac10537-1d80-4c95-a945-0f49e52db50c', 'FOOTER_IMPRINT', 'Impressum', '919c4a1c-70ce-43da-bc34-e984a6c6beb3', NULL, '50001', '/imprint', 'workspace-dtag', 'script', 'script'),

('f', 't', 0, 6, now(), now(), NULL, 'book', NULL, 'cf6af6c2-4d0c-4557-ab96-d43f8a2db798', 'CORE_STORYBOOK', 'Storybook', 'dc8e0d50-096f-42b1-b429-c9e093625e37', NULL, 'default', 'https://master--62dfd0cfe549629f83343eb1.chromatic.com/', 'workspace-default', 'script', 'script'),
('f', 't', 0, 6, now(), now(), NULL, 'book', NULL, '7d13df96-49d7-4574-be1c-94bab3a84e72', 'CORE_STORYBOOK', 'Storybook', 'f7de87e1-7a54-41df-82c5-8e760f01292e', NULL, '10000', 'https://master--62dfd0cfe549629f83343eb1.chromatic.com/', 'workspace-cap', 'script', 'script'),
('f', 't', 0, 6, now(), now(), NULL, 'book', NULL, 'e82c325e-cd19-46b6-9b9d-89f18639baba', 'CORE_STORYBOOK', 'Storybook', 'd6afb641-199f-4da6-a52f-7a9186b2b323', NULL, '50001', 'https://master--62dfd0cfe549629f83343eb1.chromatic.com/', 'workspace-dtag', 'script', 'script')
;

DELETE FROM menu_item_i18n;
INSERT INTO menu_item_i18n (menuitem_guid, language, i18n) VALUES
('onecx-misc_ann_default_guid', 'de', 'Ankündigungen'),
('onecx-misc_ann_cap_guid',     'de', 'Ankündigungen'),
('onecx-misc_ann_dtag_guid',    'de', 'Ankündigungen'),
('onecx-misc_ann_default_guid', 'en', 'Announcements'),
('onecx-misc_ann_cap_guid',     'en', 'Announcements'),
('onecx-misc_ann_dtag_guid',    'en', 'Announcements'),

('onecx-misc_help_default_guid', 'de', 'Hilfeartikel'),
('onecx-misc_help_cap_guid',     'de', 'Hilfeartikel'),
('onecx-misc_help_dtag_guid',    'de', 'Hilfeartikel'),
('onecx-misc_help_default_guid', 'en', 'Help Items'),
('onecx-misc_help_cap_guid',     'en', 'Help Items'),
('onecx-misc_help_dtag_guid',    'en', 'Help Items'),

('onecx-bookmarks_default_guid', 'de', 'Lesezeichen'),
('onecx-bookmarks_cap_guid',     'de', 'Lesezeichen'),
('onecx-bookmarks_dtag_guid',    'de', 'Lesezeichen'),
('onecx-bookmarks_default_guid', 'en', 'Bookmarks'),
('onecx-bookmarks_cap_guid',     'en', 'Bookmarks'),
('onecx-bookmarks_dtag_guid',    'en', 'Bookmarks'),

('onecx-my-settings_default_guid', 'de', 'Einstellungen'),
('onecx-my-settings_cap_guid',     'de', 'Einstellungen'),
('onecx-my-settings_dtag_guid',    'de', 'Einstellungen'),
('onecx-my-settings_default_guid', 'en', 'Settings'),
('onecx-my-settings_cap_guid',     'en', 'Settings'),
('onecx-my-settings_dtag_guid',    'en', 'Settings'),

('onecx-my-permissions_default_guid', 'de', 'Berechtigungen'),
('onecx-my-permissions_cap_guid',     'de', 'Berechtigungen'),
('onecx-my-permissions_dtag_guid',    'de', 'Berechtigungen'),
('onecx-my-permissions_default_guid', 'en', 'Permissions'),
('onecx-my-permissions_cap_guid',     'en', 'Permissions'),
('onecx-my-permissions_dtag_guid',    'en', 'Permissions'),

('onecx-tenant_default_guid', 'de', 'Mandanten'),
('onecx-tenant_cap_guid',     'de', 'Mandanten'),
('onecx-tenant_dtag_guid',    'de', 'Mandanten'),
('onecx-tenant_default_guid', 'en', 'Tenants'),
('onecx-tenant_cap_guid',     'en', 'Tenants'),
('onecx-tenant_dtag_guid',    'en', 'Tenants')
;


-- assign the TOP level menu items for ALL roles of ALL tenants
DELETE FROM assignment;
INSERT INTO assignment (optlock, creationdate, modificationdate, guid, menu_item_id, role_id, tenant_id, creationuser, modificationuser)
SELECT 0, now(), now(), 'r-' || r.guid || '_mi-' || m.guid, m.guid, r.guid, m.tenant_id, 'script', 'script'
FROM   menu_item AS m, role AS r
WHERE  1 = 1
AND    m.tenant_id = r.tenant_id
--WHERE  m.key IN ('PORTAL_MAIN_MENU', 'PORTAL_FOOTER_MENU', 'USER_PROFILE_MENU')
;
