-- CREATE OneCX Core Products
--
-- TODO:   Replace the values in user_id column with real values of your Keycloak User IDs
--         => find it in Keycloak Admin Console for each user

-- cleanup
DELETE FROM user_profile;
INSERT INTO user_profile (optlock, creationdate, modificationdate, guid, tenant_id, identity_provider, identity_provider_id, user_id, display_name, email, first_name, last_name, organization, locale, city, color_scheme, country, menu_mode, phone_number, postal_code, street, street_no, timezone, phone_type, hide_my_profile, creationuser, modificationuser) VALUES
(0, now(), now(), 'default-admin_guid', 'default', 'keycloak', NULL, 'c091663c-ed0a-4d35-bda5-5cf30df8c830', 'Max Admin', 'onecx_admin@1000kit.org', 'Max',         'Admin', NULL,   'de', NULL, 'AUTO', NULL, 'STATIC', NULL, NULL, NULL, NULL, 'Europe/Berlin', NULL, NULL, 'script', 'script'),
(0, now(), now(), 'default-user_guid',  'default', 'keycloak', NULL, '0621c032-31b0-4579-850c-a407a0387956', 'Moritz Read', 'onecx_read@1000kit.org', 'Moritz',     'Read',  NULL,   'de', NULL, 'AUTO', NULL, 'STATIC', NULL, NULL, NULL, NULL, 'Europe/Berlin', NULL, NULL, 'script', 'script'),
(0, now(), now(), 'cap-admin_guid',     '10000',   'keycloak', NULL, 'to-be-replaced_with-user-id-of_cap-admin', 'Monika Admin', 'cap_admin@1000kit.org', 'Monika', 'Admin', 'cap',  'de', NULL, 'AUTO', NULL, 'STATIC', NULL, NULL, NULL, NULL, 'Europe/Berlin', NULL, NULL, 'script', 'script'),
(0, now(), now(), 'cap-user_guid',      '10000',   'keycloak', NULL, 'to-be-replaced_with-user-id-of_cap-user', 'Denis Read', 'cap_read@1000kit.org', 'Denis',      'Read',  'cap',  'de', NULL, 'AUTO', NULL, 'STATIC', NULL, NULL, NULL, NULL, 'Europe/Berlin', NULL, NULL, 'script', 'script'),
(0, now(), now(), 'dtag-admin_guid',    '50001',   'keycloak', NULL, 'afa61dff-44c3-4f3d-b12f-4be6aaae6cc3', 'Peter Admin', 'dtag_admin@1000kit.org', 'Peter',      'Admin', 'dtag', 'de', NULL, 'AUTO', NULL, 'STATIC', NULL, NULL, NULL, NULL, 'Europe/Berlin', NULL, NULL, 'script', 'script'),
(0, now(), now(), 'dtag-user_guid',     '50001',   'keycloak', NULL, 'to-be-replaced_with-user-id-of_dtag-user', 'Paul Read', 'dtag_read@1000kit.org', 'Paul',      'Read',  'dtag', 'en', NULL, 'AUTO', NULL, 'STATIC', NULL, NULL, NULL, NULL, 'Europe/Berlin', NULL, NULL, 'script', 'script')
;
