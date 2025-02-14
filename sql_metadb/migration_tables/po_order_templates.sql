DROP TABLE IF EXISTS po_order_templates;

CREATE TABLE po_order_templates AS
SELECT
    id::varchar(36),
    jsonb_extract_path_text(jsonb, 'acquisitionMethod')::varchar(36) AS acquisition_method,
    jsonb_extract_path_text(jsonb, 'approved')::boolean AS approved,
    jsonb_extract_path_text(jsonb, 'billTo')::varchar(36) AS bill_to,
    jsonb_extract_path_text(jsonb, 'cancellationRestriction')::boolean AS cancellation_restriction,
    jsonb_extract_path_text(jsonb, 'collection')::boolean AS collection,
    jsonb_extract_path_text(jsonb, 'instanceId')::varchar(36) AS instance_id,
    jsonb_extract_path_text(jsonb, 'manualPo')::boolean AS manual_po,
    jsonb_extract_path_text(jsonb, 'orderFormat')::varchar(65535) AS order_format,
    jsonb_extract_path_text(jsonb, 'orderType')::varchar(65535) AS order_type,
    jsonb_extract_path_text(jsonb, 'paymentStatus')::varchar(65535) AS payment_status,
    jsonb_extract_path_text(jsonb, 'publicationDate')::varchar(65535) AS publication_date,
    jsonb_extract_path_text(jsonb, 'publisher')::varchar(65535) AS publisher,
    jsonb_extract_path_text(jsonb, 'reEncumber')::boolean AS re_encumber,
    jsonb_extract_path_text(jsonb, 'receiptStatus')::varchar(65535) AS receipt_status,
    jsonb_extract_path_text(jsonb, 'selector')::varchar(65535) AS selector,
    jsonb_extract_path_text(jsonb, 'shipTo')::varchar(36) AS ship_to,
    jsonb_extract_path_text(jsonb, 'templateCode')::varchar(65535) AS template_code,
    jsonb_extract_path_text(jsonb, 'templateDescription')::varchar(65535) AS template_description,
    jsonb_extract_path_text(jsonb, 'templateName')::varchar(65535) AS template_name,
    jsonb_extract_path_text(jsonb, 'vendor')::varchar(36) AS vendor,
    jsonb_pretty(jsonb)::json AS data
FROM
    folio_orders.order_templates;

ALTER TABLE po_order_templates ADD PRIMARY KEY (id);

CREATE INDEX ON po_order_templates (acquisition_method);

CREATE INDEX ON po_order_templates (approved);

CREATE INDEX ON po_order_templates (bill_to);

CREATE INDEX ON po_order_templates (cancellation_restriction);

CREATE INDEX ON po_order_templates (collection);

CREATE INDEX ON po_order_templates (instance_id);

CREATE INDEX ON po_order_templates (manual_po);

CREATE INDEX ON po_order_templates (order_format);

CREATE INDEX ON po_order_templates (order_type);

CREATE INDEX ON po_order_templates (payment_status);

CREATE INDEX ON po_order_templates (publication_date);

CREATE INDEX ON po_order_templates (publisher);

CREATE INDEX ON po_order_templates (re_encumber);

CREATE INDEX ON po_order_templates (receipt_status);

CREATE INDEX ON po_order_templates (selector);

CREATE INDEX ON po_order_templates (ship_to);

CREATE INDEX ON po_order_templates (template_code);

CREATE INDEX ON po_order_templates (template_description);

CREATE INDEX ON po_order_templates (template_name);

CREATE INDEX ON po_order_templates (vendor);

VACUUM ANALYZE po_order_templates;
