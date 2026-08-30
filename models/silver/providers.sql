WITH raw AS (
  SELECT * FROM {{ source('azure_files_load','providers') }}
)
SELECT
  provider_id,
  INITCAP(provider_name) AS provider_name,
  specialty,
  npi,
  phone,
  email,
  address,
  source_system,
  file_name,
  CURRENT_TIMESTAMP() AS ingest_ts,
  load_audit_id
FROM raw
WHERE LENGTH(npi) = 10
