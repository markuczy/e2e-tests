-- CREATE OneCX Core Products
--
-- TODO:    Adjust the microfrontend locations suitable to your local settings:
--          => see the INSERT statement of table "microfrontend"
--          Preconfigured used is the port range of 5000-5029

-- clean - order bottom up (taken into account foreign keys)
DELETE FROM slot;
DELETE FROM ui_endpoint;
DELETE FROM microservice;
DELETE FROM microfrontend;
DELETE FROM product;

-- create data top down

DELETE FROM product;
INSERT INTO product (optlock, creationdate, modificationdate, operator, undeployed, base_path, description, display_name, guid, icon_name, image_url, name, version, classification, creationuser, modificationuser) VALUES
/* Used to test edge case scenarios */
(0, now(), now(), 't', 't', '/undeployed',   'Undeployed Product Example', 'Undeployed Product', 'undeployed-product', 'comment', NULL, 'undeployed-product', '0.0.0-rc.99', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/unusable-1',   'Unusable Product Example 1 with undeployed UI', 'Unusable Product 1', 'unusable-product-1', 'comment', NULL, 'unusable-product-1', '0.0.0-rc.99', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/unusable-2',   'Unusable Product Example 2 with deprecated UI', 'Unusable Product 2', 'unusable-product-2', 'comment', NULL, 'unusable-product-2', '0.0.0-rc.99', NULL, 'script', 'script'),

/* Core Products */
(0, now(), now(), 't', 'f', '/announcement', 'OneCX Announcement', 'OneCX Announcement', 'onecx-announcement_guid', 'comment', NULL,    'onecx-announcement', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/bookmark',     'OneCX Bookmark', 'OneCX Bookmark',         'onecx-bookmark_guid', 'comment', NULL,        'onecx-bookmark', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/help',         'OneCX Help', 'OneCX Help',                 'onecx-help_guid', 'question-circle', NULL,    'onecx-help', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/iam',          'OneCX IAM', 'OneCX IAM',                   'onecx-iam_guid', 'id-card', NULL,             'onecx-iam', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/parameter',    'OneCX Parameter', 'OneCX Parameter',       'onecx-parameter_guid', 'pi-database', NULL,   'onecx-parameter', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/permission',   'OneCX Permission', 'OneCX Permission',     'onecx-permission_guid', 'gear', NULL,         'onecx-permission', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/application',  'OneCX Product Store', 'OneCX Product Store', 'onecx-product-store_guid', 'palette', NULL, 'onecx-product-store', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/shell',        'OneCX Shell', 'OneCX Shell',                 'onecx-shell_guid', 'palette', NULL,         'onecx-shell', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/search-config','OneCX Search Config', 'OneCX Search Config', 'onecx-search-config_guid', 'pi-ellipsis-h', NULL, 'onecx-search-config', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/tenant',       'OneCX Tenant', 'OneCX Tenant',             'onecx-tenant_guid', 'lock', NULL,             'onecx-tenant', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/theme',        'OneCX Theme', 'OneCX Theme',               'onecx-theme_guid', 'palette', NULL,           'onecx-theme', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/welcome',      'OneCX Welcome', 'OneCX Welcome',           'onecx-welcome_guid', 'home', NULL,            'onecx-welcome', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/workspace',    'OneCX Workspace', 'OneCX Workspace',       'onecx-workspace_guid', 'pi-ellipsis-h', NULL, 'onecx-workspace', '0.0.0-rc.xx', NULL, 'script', 'script'),
(0, now(), now(), 't', 'f', '/user',         'OneCX User Profile', 'OneCX User Profile', 'onecx-user-profile_guid', 'lock', NULL,       'onecx-user-profile', '0.0.0-rc.xx', NULL, 'script', 'script'),

/* Extras */
(0, now(), now(), 't', 'f', '/processlog',   'OneCX Processlog', 'OneCX Processlog',     'onecx-process-log_guid', 'pi-cog', NULL,      'process-log-mgmt', '0.0.0-rc.xx', NULL, 'script', 'script')
;

DELETE FROM microfrontend;
INSERT INTO microfrontend (optlock, creationdate, modificationdate, operator, deprecated, undeployed, technology, type, app_id, app_name, app_version, contact,   description, exposed_module, guid, icon_name, note,                                                                                    product_name, remote_base_url, remote_entry, classification, remote_name, tag_name, creationuser, modificationuser) VALUES
/* Used to test edge case scenarios */
(0, now(), now(), 't', NULL, 't',  'ANGULAR', 'MODULE',               'undeployed-product-ui', 'UI of undeployed product', '0.0.0-rc.99', 'onecx@1000kit.org',   'Undeployed Product UI', './UndeployedModule', 'undeployed-product-mfe', NULL, 'undeployed module', 'undeployed-product', 'http://localhost:9999/', 'http://localhost:9999/remoteEntry.js', NULL, NULL, NULL, 'script', 'script'),
(0, now(), now(), 't', NULL, 't',  'ANGULAR', 'MODULE',               'unusable-mfe-1-ui', 'Undeployed Module UI', '0.0.0-rc.99', 'onecx@1000kit.org',           'Unusable Product UI',   './UndeployedModule', 'unusable-product-undeployed-mfe_module', NULL, 'undeployed module', 'unusable-product-1', 'http://localhost:9999/', 'http://localhost:9999/remoteEntry.js', NULL, NULL, NULL, 'script', 'script'),
(0, now(), now(), 't', NULL, 't',  'ANGULAR', 'MODULE',               'unusable-mfe-1-ui', 'Undeployed Component', '0.0.0-rc.99', 'onecx@1000kit.org',           'Unusable Product UI',   './UndeployedComponent', 'unusable-product-undeployed-mfe_component', NULL, 'undeployed module', 'unusable-product-1', 'http://localhost:9999/', 'http://localhost:9999/remoteEntry.js', NULL, NULL, NULL, 'script', 'script'),
(0, now(), now(), 't', 't',  NULL, 'ANGULAR', 'MODULE',               'unusable-mfe-2-ui', 'Deprecated Module UI', '0.0.0-rc.99', 'onecx@1000kit.org',           'Deprecated Product UI', './DeprecatedModule', 'product-deprecated-mfe', NULL, 'import via database script', 'deprecated module', 'http://localhost:9999/', 'http://localhost:9999/remoteEntry.js', NULL, NULL, NULL, 'script', 'script'),

/* Valid Core MFEs */
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'MODULE',      'onecx-announcement-ui', 'OneCX Announcement UI', '0.0.0-rc.25', 'onecx@1000kit.org',      'Announcement UI',       './OneCXAnnouncementModule',            'onecx-announcement-ui_guid', 'comment', 'Announcement UI',       'onecx-announcement', 'http://localhost:5024/', 'http://localhost:5024/remoteEntry.js', NULL, 'onecx-announcement', 'ocx-announcement-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'COMPONENT',   'onecx-announcement-ui', 'OneCX Announcement UI', '0.0.0-rc.25', 'onecx@1000kit.org',      'Announcement Banner',   './OneCXAnnouncementBannerComponent',   'onecx-announcement-b_guid', 'comment',  'Announcement B',        'onecx-announcement', 'http://localhost:5024/', 'http://localhost:5024/remoteEntry.js', NULL, 'onecx-announcement', 'ocx-announcement-banner-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'COMPONENT',   'onecx-announcement-ui', 'OneCX Announcement UI', '0.0.0-rc.25', 'onecx@1000kit.org',      'Active Announcements',  './OneCXAnnouncementListActiveComponent', 'onecx-announcement-la_guid', 'comment', 'Announcement LA',     'onecx-announcement', 'http://localhost:5024/', 'http://localhost:5024/remoteEntry.js', NULL, 'onecx-announcement', 'ocx-announcement-list-active-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'MODULE',      'onecx-bookmark-ui',     'OneCX Bookmark UI', '0.0.0-rc.25', 'onecx@1000kit.org',          'Bookmark UI',           './OneCXBookmarkModule',                'onecx-bookmark-ui_guid', 'bookmark',    'Bookmark UI',           'onecx-bookmark', 'http://localhost:5031/', 'http://localhost:5031/remoteEntry.js', NULL, 'onecx-bookmark', 'ocx-bookmark-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'COMPONENT',   'onecx-bookmark-ui',     'OneCX Bookmark UI', '0.0.0-rc.25', 'onecx@1000kit.org',          'Bookmark Manage',       './OneCXManageBookmarkComponent',       'onecx-bookmark-mgmt_guid', 'bookmark',  'Bookmark Mange',        'onecx-bookmark', 'http://localhost:5031/', 'http://localhost:5031/remoteEntry.js', NULL, 'onecx-bookmark', 'ocx-bookmark-manage-component',    'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'COMPONENT',   'onecx-bookmark-ui',     'OneCX Bookmark UI', '0.0.0-rc.25', 'onecx@1000kit.org',          'Display Bookmarks',       './OneCXBookmarkListComponent',       'onecx-bookmark-list_guid', 'bookmark',  'List Bookmarks',        'onecx-bookmark', 'http://localhost:5031/', 'http://localhost:5031/remoteEntry.js', NULL, 'onecx-bookmark', 'ocx-bookmark-list-component',      'script', 'script'),

(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'MODULE',      'onecx-help-ui',         'OneCX Help UI', '0.0.0-rc.21', 'onecx@1000kit.org',              'Help UI',               './OneCXHelpModule',                    'onecx-help-ui_guid', 'question-circle', 'Help UI',               'onecx-help', 'http://localhost:5023/', 'http://localhost:5023/remoteEntry.js', NULL, 'onecx-help', 'ocx-help-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'COMPONENT',   'onecx-help-ui',         'OneCX Help UI', '0.0.0-rc.21', 'onecx@1000kit.org',              'Edit help item',        './OneCXHelpItemEditorComponent',       'onecx-help-item-edit_guid', 'pencil',   'Edit help item',        'onecx-help', 'http://localhost:5023/', 'http://localhost:5023/remoteEntry.js', NULL, 'onecx-help', 'ocx-help-item-editor-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'COMPONENT',   'onecx-help-ui',         'OneCX Help UI', '0.0.0-rc.21', 'onecx@1000kit.org',              'Show help item',        './OneCXShowHelpComponent',             'onecx-help-show-help_guid', 'question-circle', 'Show help item', 'onecx-help', 'http://localhost:5023/', 'http://localhost:5023/remoteEntry.js', NULL, 'onecx-help', 'ocx-show-help-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'MODULE',      'onecx-iam-ui',          'OneCX IAM UI', '0.0.0-rc.27', 'onecx@1000kit.org',               'IAM UI',                './OneCXIamModule',                     'onecx-iam-ui_guid', 'users',            'IAM UI',                'onecx-iam', 'http://localhost:5029/', 'http://localhost:5029/remoteEntry.js', NULL, 'onecx-iam', 'ocx-iam-component', 'script', 'script'),
(0, now(), now(), 't', 'f', 'f', 'WEBCOMPONENTMODULE', 'COMPONENT',   'onecx-iam-ui',          'OneCX IAM UI', '0.0.0-rc.20', 'onecx@1000kit.org',               'IAM Change password',   './OneCXChangePasswordComponent',       'onecx-iam-change-pwd_guid', 'lock',     'IAM Change password',   'onecx-iam', 'http://localhost:5029/', 'http://localhost:5029/remoteEntry.js', NULL, 'onecx-iam', 'ocx-change-password-component', 'script', 'script'),

(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-parameter-ui',    'OneCX Parameter Mgmt UI', '0.0.0-rc.zz', 'onecx@1000kit.org',    'Parameter Mgmt UI',     './OneCXParameterModule',               'onecx-parameter-ui_guid', 'database',   'Parameter Mgmt UI',     'onecx-parameter', 'http://localhost:5030/', 'http://localhost:5030/remoteEntry.js', NULL, 'onecx-parameter', 'ocx-parameter-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-permission-ui',   'OneCX Permission UI', '0.0.0-rc.27', 'onecx@1000kit.org',        'Permission UI',         './OneCXPermissionModule',              'onecx-permission-ui_guid', 'lock',      'Permission UI',         'onecx-permission', 'http://localhost:5026/', 'http://localhost:5026/remoteEntry.js', NULL, 'onecx-permission', 'ocx-permission-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-permission-ui',   'OneCX Permission UI', '0.0.0-rc.27', 'onecx@1000kit.org',        'Roles & Permission',    './OneCXUserRolesPermissionsComponent', 'onecx-permission-rp_guid', 'users',     'My Roles & Permissions','onecx-permission', 'http://localhost:5026/', 'http://localhost:5026/remoteEntry.js', NULL, 'onecx-permission', 'ocx-user-roles-permissions-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-product-store-ui','OneCX Product Store UI', '0.0.0-rc.33', 'onecx@1000kit.org',     'Product Store UI',      './OneCXProductStoreModule',            'onecx-product-store-ui_guid', 'cog',    'Product Store UI',      'onecx-product-store', 'http://localhost:5021/', 'http://localhost:5021/remoteEntry.js', NULL, 'onecx-product-store', 'ocx-product-store-component', 'script', 'script'),

(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-search-config-ui','OneCX Search Config UI', '0.0.0-rc.25', 'onecx@1000kit.org',     'Search Config',         './OneCXSearchConfigComponent',         'onecx-search-config-sc_guid', 'comment', 'Search Config ', 'onecx-search-config', 'http://localhost:5030/', 'http://localhost:5030/remoteEntry.js', NULL, 'onecx-search-config', 'ocx-search-config-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-search-config-ui','OneCX Search Config UI', '0.0.0-rc.25', 'onecx@1000kit.org',     'Column Group Selection','./OneCXColumnGroupSelectionComponent', 'onecx-search-config-cg_guid', 'comment', 'Column Group Selection ', 'onecx-search-config', 'http://localhost:5030/', 'http://localhost:5030/remoteEntry.js', NULL, 'onecx-search-config', 'ocx-column-group-selection-component', 'script', 'script'),

(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-tenant-ui',       'OneCX Tenant UI', '0.0.0-rc.xx', 'onecx@1000kit.org',            'Tenant UI',             './OneCXTenantModule',                  'onecx-tenant-ui_guid', 'android',       'Tenant UI',             'onecx-tenant', 'http://localhost:5022/', 'http://localhost:5022/remoteEntry.js', NULL, 'onecx-tenant', 'ocx-tenant-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-theme-ui',        'OneCX Theme UI', '0.0.0-rc.52', 'onecx@1000kit.org',             'Theme UI',              './OneCXThemeModule',                   'onecx-theme-ui_guid', 'palette',        'Theme UI',              'onecx-theme', 'http://localhost:5020/', 'http://localhost:5020/remoteEntry.js', NULL, 'onecx-theme', 'ocx-theme-component', 'script', 'script'),

(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-user-profile-ui', 'OneCX User Profile UI', '0.0.0-rc.5',  'onecx@1000kit.org',      'User Profile UI',       './OneCXUserProfileModule',             'onecx-user-profile-ui_guid', 'users',   'User Profile UI',       'onecx-user-profile', 'http://localhost:5027/', 'http://localhost:5027/remoteEntry.js', NULL, 'onecx-user-profile', 'ocx-user-profile-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-user-profile-ui', 'OneCX User Profile UI', '0.0.0-rc.5',  'onecx@1000kit.org',      'Avatar Image',          './OneCXAvatarImageComponent',          'onecx-user-profile-ai_guid', 'users',   'User Profile UI',       'onecx-user-profile', 'http://localhost:5027/', 'http://localhost:5027/remoteEntry.js', NULL, 'onecx-user-profile', 'ocx-avatar-image-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-welcome-ui',      'OneCX Welcome UI',      '0.0.0-rc.12', 'onecx@1000kit.org',      'Welcome UI',            './OneCXWelcomeModule',                 'onecx-welcome-ui_guid', 'home',         'Welcome UI',            'onecx-welcome',      'http://localhost:5028/', 'http://localhost:5028/remoteEntry.js', NULL, 'onecx-welcome',      'ocx-welcome-component', 'script', 'script'),

(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'onecx-workspace-ui',    'OneCX Workspace UI', '0.0.0-rc.76', 'onecx@1000kit.org',         'Workspace UI',          './OneCXWorkspaceModule',               'onecx-workspace-ui_guid', 'ellipsis-h', 'Workspace UI',          'onecx-workspace', 'http://localhost:5025/', 'http://localhost:5025/remoteEntry.js', NULL, 'onecx-workspace', 'ocx-workspace-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-workspace-ui',    'OneCX Workspace UI', '0.0.0-rc.76', 'onecx@1000kit.org',         'Horizontal main menu',  './OneCXHorizontalMainMenuComponent',   'onecx-workspace-hm_guid', 'sitemap',    'Main Menu H',           'onecx-workspace', 'http://localhost:5025/', 'http://localhost:5025/remoteEntry.js', NULL, 'onecx-workspace', 'ocx-horizontal-main-menu-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-workspace-ui',    'OneCX Workspace UI', '0.0.0-rc.76', 'onecx@1000kit.org',         'User Avatar menu',      './OneCXUserAvatarMenuComponent',       'onecx-workspace-am_guid', 'sitemap',    'Avatar Menu',           'onecx-workspace', 'http://localhost:5025/', 'http://localhost:5025/remoteEntry.js', NULL, 'onecx-workspace', 'ocx-user-avatar-menu-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-workspace-ui',    'OneCX Workspace UI', '0.0.0-rc.76', 'onecx@1000kit.org',         'User siderbar menu',    './OneCXUserSidebarMenuComponent',      'onecx-workspace-sm_guid', 'user',       'Profile Menu',          'onecx-workspace', 'http://localhost:5025/', 'http://localhost:5025/remoteEntry.js', NULL, 'onecx-workspace', 'ocx-user-siderbar-menu-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-workspace-ui',    'OneCX Workspace UI', '0.0.0-rc.76', 'onecx@1000kit.org',         'Vertical main menu',    './OneCXVerticalMainMenuComponent',     'onecx-workspace-mm_guid', 'sitemap',    'Main Menu V',           'onecx-workspace', 'http://localhost:5025/', 'http://localhost:5025/remoteEntry.js', NULL, 'onecx-workspace', 'ocx-vertical-main-menu-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-workspace-ui',    'OneCX Workspace UI', '0.0.0-rc.76', 'onecx@1000kit.org',         'Footer menu',           './OneCXFooterMenuComponent',           'onecx-workspace-fm_guid', 'sitemap',    'Footer Menu',           'onecx-workspace', 'http://localhost:5025/', 'http://localhost:5025/remoteEntry.js', NULL, 'onecx-workspace', 'ocx-footer-menu-component', 'script', 'script'),
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'COMPONENT', 'onecx-workspace-ui',    'OneCX Workspace UI', '0.0.0-rc.76', 'onecx@1000kit.org',         'List Workspaces using Theme',  './OneCXListWorkspacesUsingThemeComponent',  'onecx-workspace-lws_guid', 'palette',  'List Workspaces using Theme',       'onecx-workspace', 'http://localhost:5025/', 'http://localhost:5025/remoteEntry.js', NULL, 'onecx-workspace', 'ocx-list-workspaces-using-theme-component', 'script', 'script'),

/* Extras */
(0, now(), now(), 't', NULL, NULL, 'WEBCOMPONENTMODULE', 'MODULE',    'process-log-mgmt-ui',   'OneCX Processlog UI', '0.0.0-rc.xx', 'onecx@1000kit.org',        'Process Log UI',        './OneCXProcessLogModule',              'onecx-process-log-ui_guid', 'cog', 'Process Log UI',             'process-log-mgmt', 'http://localhost:6060/', 'http://localhost:6060/remoteEntry.js', NULL, 'process-log-mgmt', 'ocx-process-log-component', 'script', 'script')
;


DELETE FROM microservice;
INSERT INTO microservice (optlock, creationdate, modificationdate, operator, undeployed, app_id, name, version, description, type, guid, product_name, creationuser, modificationuser) VALUES
(0, now(), now(), 't', NULL, 'onecx-announcement-bff', 'onecx-announcement-bff', '0.0.0-rc.yy', 'onecx-announcement-bff', 'bff', 'onecx-announcement-bff_guid', 'onecx-announcement', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-announcement-svc', 'onecx-announcement-svc', '0.0.0-rc.yy', 'onecx-announcement-svc', 'svc', 'onecx-announcement-svc_guid', 'onecx-announcement', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-announcement-ui', 'onecx-announcement-ui', '0.0.0-rc.yy',   'onecx-announcement-ui',  'ui',  'onecx-announcement-ui_guid',  'onecx-announcement', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-bookmark-bff', 'onecx-bookmark-bff', '0.0.0-rc.yy',   'onecx-bookmark-bff', 'bff', 'onecx-bookmark-svc_guid', 'onecx-bookmark', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-bookmark-svc', 'onecx-bookmark-svc', '0.0.0-rc.yy',   'onecx-bookmark-svc', 'svc', 'onecx-bookmark-bff_guid', 'onecx-bookmark', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-bookmark-ui',  'onecx-bookmark-ui',  '0.0.0-rc.yy',   'onecx-bookmark-ui',  'ui',  'onecx-bookmark-ui_guid',  'onecx-bookmark', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-help-bff', 'onecx-help-bff', '0.0.0-rc.yy', 'onecx-help-bff', 'bff', 'onecx-help-bff_guid', 'onecx-help', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-help-svc', 'onecx-help-svc', '0.0.0-rc.yy', 'onecx-help-svc', 'svc', 'onecx-help-svc_guid', 'onecx-help', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-help-ui',  'onecx-help-ui',  '0.0.0-rc.yy', 'onecx-help-ui',  'ui',  'onecx-help-ui_guid',  'onecx-help', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-iam-bff',                'onecx-iam-bff',    '0.0.0-rc.yy', 'onecx-iam-bff',    'bff', 'onecx-iam-bff_guid',       'onecx-iam', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-iam-ui',                 'onecx-iam-ui',     '0.0.0-rc.yy', 'onecx-iam-ui',     'ui', 'onecx-iam-ui_guid',         'onecx-iam', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-iam-kc-svc',             'onecx-iam-kc-svc', '0.0.0-rc.yy', 'onecx-iam-kc-svc', 'kc-svc', 'onecx-iam-kc-svc_guid', 'onecx-iam', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-iam-kc-client-operator', 'onecx-iam-kc-client-operator', '0.0.0-rc.11', 'onecx-iam-kc-client-operator', 'kc-client-operator', '17fb283e-c9d4-4353-9b9c-0ddfece7f580', 'onecx-iam', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-k8s-db-postgresql-operator', 'onecx-k8s-db-postgresql-operator', '0.0.0-rc.13', 'onecx-k8s-db-postgresql-operator', 'db-postgresql-operator', '68d83dca-dd67-46d0-9b3d-5d92a34a9bd7', 'onecx-k8s', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-parameter-svc', 'onecx-parameter-svc', '0.0.0-rc.yy', 'onecx-parameter-svc', 'svc', 'onecx-parameter-svc_guid', 'onecx-parameter', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-parameter-bff', 'onecx-parameter-bff', '0.0.0-rc.yy', 'onecx-parameter-bff', 'bff', 'onecx-parameter-bff_guid', 'onecx-parameter', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-parameter-ui',  'onecx-parameter-ui',  '0.0.0-rc.yy', 'onecx-parameter-ui',  'ui',  'onecx-parameter-ui_guid',  'onecx-parameter', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-permission-bff',      'onecx-permission-bff',      '0.0.0-rc.27', 'onecx-permission-bff',      'bff',      'f5732898-c203-4a05-8658-1e783ef4eabe', 'onecx-permission', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-permission-operator', 'onecx-permission-operator', '0.0.0-rc.14', 'onecx-permission-operator', 'operator', '7dba491c-cf37-4b57-b1f7-e36e70604d78', 'onecx-permission', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-permission-svc',      'onecx-permission-svc',      '0.0.0-rc.39', 'onecx-permission-svc',      'svc',      '891413aa-f1ca-44c4-a48f-a672abd722c4', 'onecx-permission', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-permission-ui',       'onecx-permission-ui',       '0.0.0-rc.18', 'onecx-permission-ui',       'ui',       'dbb5bfd3-5876-441b-bc3f-7fc3ad02c7c3', 'onecx-permission', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-product-store-bff',            'onecx-product-store-bff',           '0.0.0-rc.31',   'onecx-product-store-bff', 'bff', 'c93fea15-f4eb-45c0-a2e6-8247a4cded3c', 'onecx-product-store', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-product-store-svc',            'onecx-product-store-svc',           '0.0.0-rc.49',   'onecx-product-store-svc', 'svc', 'd105a1a4-3d78-4bf9-8060-273dc89d9dfb', 'onecx-product-store', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-product-store-ui',             'onecx-product-store-ui',            '0.0.0-rc.34',   'onecx-product-store-ui',  'ui', 'f1eabb18-902f-41f6-823f-dd05e1037d7e', 'onecx-product-store', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-product-store-mfe-operator',   'onecx-product-store-mfe-operator',  '0.0.0-rc.23',   'onecx-product-store-mfe-operator',        'mfe-operator',     '10cbf679-b5a3-4cf1-8aec-1e7b45ac36cc', 'onecx-product-store', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-product-store-ms-operator',    'onecx-product-store-ms-operator',   '0.0.0-rc.9',    'onecx-product-store-ms-operator',         'ms-operator',      'ed5f80cb-db4a-4dd7-b2e6-ebb9ad34b218', 'onecx-product-store', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-product-store-product-operator', 'onecx-product-store-product-operator', '0.0.0-rc.19', 'onecx-product-store-product-operator', 'product-operator', 'e817afc8-c789-40aa-9b96-e19f1a67d8b1', 'onecx-product-store', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-product-store-slot-operator',  'onecx-product-store-slot-operator', '0.0.0-rc.3',    'onecx-product-store-slot-operator',       'slot-operator',    'aab8043a-0c19-4d43-a2a8-1bc6eac37466', 'onecx-product-store', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-shell-bff', 'onecx-shell-bff', '0.0.0-rc.16', 'onecx-shell-bff', 'bff', 'f99beb96-7c4b-4405-a8ee-7c6548a8d3a9', 'onecx-shell', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-shell-ui',  'onecx-shell-ui',  '0.0.0-rc.29', 'onecx-shell-ui',  'ui',  'cbe2477a-118c-4aa6-9441-aedd6f933fc0', 'onecx-shell', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-search-config-bff', 'onecx-search-config-bff', '0.0.0-rc.20', 'onecx-search-config-bff', 'bff', '793c88e7-3222-4d9a-ba01-91a888aa64cf', 'onecx-search-config', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-search-config-svc', 'onecx-search-config-svc', '0.0.0-rc.22', 'onecx-search-config-svc', 'svc', '3205723c-5293-4f2e-afe6-6a77b0b926f7', 'onecx-search-config', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-search-config-ui',  'onecx-search-config-ui',  '0.0.0-rc.26', 'onecx-search-config-ui',  'ui',  '90f8c4c1-ddb7-4141-9a88-e69f91560125', 'onecx-search-config', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-tenant-bff', 'onecx-tenant-bff', '0.0.0-rc.xx', 'onecx-tenant-bff', 'bff', 'abca7e8b-0069-4834-a923-9dddfe75-bff', 'onecx-tenant', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-tenant-svc', 'onecx-tenant-svc', '0.0.0-rc.37', 'onecx-tenant-svc', 'svc', 'abca7e8b-0069-4834-a923-9dddfe757291', 'onecx-tenant', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-theme-bff',  'onecx-theme-bff',  '0.0.0-rc.31', 'onecx-theme-bff',  'bff', '6a6a4fde-69d5-47a6-b2e7-0f0118b5a37e', 'onecx-theme', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-theme-svc',  'onecx-theme-svc',  '0.0.0-rc.36', 'onecx-theme-svc',  'svc', 'af241d92-d0a2-4073-b80b-c0c594167ac3', 'onecx-theme', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-theme-ui',   'onecx-theme-ui',   '0.1.0-rc.42', 'onecx-theme-ui',   'ui',  '1a92224f-bd38-465f-8ad6-3b9b878e4759', 'onecx-theme', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-welcome-bff', 'onecx-welcome-bff', '0.0.0-rc.12', 'onecx-welcome-bff', 'bff', 'b693a46f-cd50-40a1-a7e7-f878958a8ff0', 'onecx-welcome', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-welcome-svc', 'onecx-welcome-svc', '0.0.0-rc.12', 'onecx-welcome-svc', 'svc', 'f7602067-5e72-483a-8a48-cb4965c94f7b', 'onecx-welcome', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-welcome-ui',  'onecx-welcome-ui',  '0.0.0-rc.3',  'onecx-welcome-ui',  'ui',  'b69ffb5a-7780-47b5-9ea6-0129f7fe0c32', 'onecx-welcome', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-workspace-bff', 'onecx-workspace-bff', '0.0.0-rc.51', 'onecx-workspace-bff', 'bff', '70ea8184-29ab-4602-9f09-0c9efcb3f78f', 'onecx-workspace', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-workspace-svc', 'onecx-workspace-svc', '0.0.0-rc.47', 'onecx-workspace-svc', 'svc', 'e9765a98-d6ca-4a29-bc42-f4bc5f923da9', 'onecx-workspace', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-workspace-ui', 'onecx-workspace-ui', '0.0.0-rc.46', 'onecx-workspace-ui', 'ui', 'c13f5a09-bd97-41c5-8898-baf041a711d7', 'onecx-workspace', 'script', 'script'),

(0, now(), now(), 't', NULL, 'onecx-user-profile-bff', 'onecx-user-profile-bff', '0.0.0-rc.14', 'onecx-user-profile-bff', 'bff', '97311171-df64-418f-9531-997d584508c3', 'onecx-user-profile', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-user-profile-svc', 'onecx-user-profile-svc', '0.0.0-rc.18', 'onecx-user-profile-svc', 'svc', '0e242597-be67-4281-b5eb-3e812aecc21f', 'onecx-user-profile', 'script', 'script'),
(0, now(), now(), 't', NULL, 'onecx-user-profile-ui', 'onecx-user-profile-ui', '0.0.0-rc.5', 'onecx-user-profile-ui', 'ui', '8ec0e04b-bd86-4114-a19f-6240af62e421', 'onecx-user-profile', 'script', 'script'),

/* Extras */
(0, now(), now(), 't', NULL, 'process-log-mgmt-app', 'Process Log BFF', '0.0.0-rc.xx', 'process-log-mgmt-app', 'bff', 'process-log-mgmt-app_guid', 'process-log-mgmt', 'script', 'script'),
(0, now(), now(), 't', NULL, 'process-log-mgmt-ui',  'Process Log UI',  '0.0.0-rc.xx', 'process-log-mgmt-ui',  'ui',  'process-log-mgmt-ui_guid', 'process-log-mgmt', 'script', 'script')
;


DELETE FROM slot;
INSERT INTO slot (operator, undeployed, deprecated, optlock, creationdate, modificationdate, app_id, description, guid, name, product_name, creationuser, modificationuser) VALUES
/* Used to test edge case scenarios */
('t', 't',  'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell footer - outdated',       'footer_guid', 'footer', 'onecx-shell', 'script', 'script'),
('t', 'f',  'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell new things',              'onecx-shell-new-slot_guid', 'onecx-shell-new-slot', 'onecx-shell', 'script', 'script'),
('t', 't',  'f', 0, now(), now(), 'onecx-user-profile-ui', 'Manage password - undeployed', 'onecx-manage-password_undeployed', 'onecx-manage-password', 'onecx-user-profile', 'script', 'script'),
('t', 'f',  't', 0, now(), now(), 'onecx-user-profile-ui', 'Manage password - outdated',   'onecx-manage-password_deprecated', 'onecx-manage-pwd-2', 'onecx-user-profile', 'script', 'script'),

/* Valid Core Slots */
('t', 'f', 'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell horizontal menu', 'onecx-shell-horizontal-menu_guid', 'onecx-shell-horizontal-menu', 'onecx-shell', 'script', 'script'),
('t', 'f', 'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell main menu',       'onecx-shell-vertical-menu_guid',   'onecx-shell-vertical-menu', 'onecx-shell', 'script', 'script'),
('t', 'f', 'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell sub header menu', 'onecx-shell-sub-header_guid',      'onecx-shell-sub-header', 'onecx-shell', 'script', 'script'),
('t', 'f', 'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell header right',    'onecx-shell-header-right_guid',    'onecx-shell-header-right', 'onecx-shell', 'script', 'script'),
('t', 'f', 'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell footer',          'onecx-shell-footer_guid',          'onecx-shell-footer', 'onecx-shell', 'script', 'script'),
('t', 'f', 'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell search config',          'onecx-search-config_guid',          'onecx-search-config', 'onecx-shell', 'script', 'script'),
('t', 'f', 'f', 0, now(), now(), 'onecx-shell-ui', 'OneCX Shell column group selection', 'onecx-column-group-selection_guid', 'onecx-column-group-selection', 'onecx-shell', 'script', 'script'),

('t', NULL, 'f', 0, now(), now(), 'onecx-welcome-ui',   'List active announcements', 'onecx-welcome-list-active_guid', 'onecx-welcome-list-active',    'onecx-welcome', 'script', 'script'),
('t', NULL, 'f', 0, now(), now(), 'onecx-welcome-ui',   'List bookmarks',            'onecx-welcome-list-book_guid',   'onecx-welcome-list-bookmarks', 'onecx-welcome', 'script', 'script'),
('t', 'f',  'f', 0, now(), now(), 'onecx-workspace-ui', 'Avatar image',              'onecx-avatar-image_guid',        'onecx-avatar-image',           'onecx-workspace', 'script', 'script'),

('t', NULL, 'f', 0, now(), now(), 'onecx-user-profile-ui', 'Change password',       'onecx-user-profile-change-password_guid', 'onecx-user-profile-change-password', 'onecx-user-profile', 'script', 'script'),
('t', NULL, 'f', 0, now(), now(), 'onecx-user-profile-ui', 'Roles and permissions', 'onecx-user-profile-permissions_guid',     'onecx-user-profile-permissions',     'onecx-user-profile', 'script', 'script')
;

DELETE FROM ui_endpoint;
INSERT INTO ui_endpoint (guid, microfrontend_id, name, path) VALUES
('onecx-permission-ui_product_guid',   'onecx-permission-ui_guid',    'product',          '/product/{product-name}'),
('onecx-permission-ui_workspace_guid', 'onecx-permission-ui_guid',    'workspace',        '/workspace/{workspace-name}'),
('onecx-product-store-ui_apps_guid',   'onecx-product-store-ui_guid', 'apps',             '/apps'),
('onecx-product-store-ui_slots_guid',  'onecx-product-store-ui_guid', 'slots',            '/slots'),
('onecx-product-store-ui_detail_guid', 'onecx-product-store-ui_guid', 'product-detail',   '/{product-name}'),
('onecx-theme-ui_detail_guid',         'onecx-theme-ui_guid',         'theme-detail',     '/{theme-name}'),
('onecx-workspace-ui_detail_guid',     'onecx-workspace-ui_guid',     'workspace-detail',   '/{workspace-name}'),
('onecx-workspace-ui_roles_guid',      'onecx-workspace-ui_guid',     'workspace-roles',    '/{workspace-name}#roles'),
('onecx-workspace-ui_slots_guid',      'onecx-workspace-ui_guid',     'workspace-slots',    '/{workspace-name}#slots'),
('onecx-workspace-ui_products_guid',   'onecx-workspace-ui_guid',     'workspace-products', '/{workspace-name}#products')
;