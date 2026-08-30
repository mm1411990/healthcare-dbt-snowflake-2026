WITH RAW AS
(
    SELECT * FROM {{ source('azure_files_load', 'members') }}
)
SELECT
MEMBER_ID,
INITCAP(member_name) AS member_name,
  TRY_TO_DATE(dob) AS dob,
  gender,
  address,
  city,
  state,
  zip,
  source_system,
  file_name,
  CURRENT_TIMESTAMP AS ingest_ts,
  load_audit_id
FROM
RAW
WHERE dob is not null  