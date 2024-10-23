-- CREATE 3 tenants: default, cap, dtag

DELETE FROM tenant;
INSERT INTO tenant (optlock, operator, guid, creationdate, modificationdate, org_id, tenant_id, description, creationuser, modificationuser) VALUES
(0, 't', 'cap_guid',     now(), now(), 'cap',  '10000',   'Capgemini tenant', 'script', 'script'),
(0, 't', 'dtag_guid',    now(), now(), 'dtag', '50001',   'DTAG tenant', 'script', 'script')
;
