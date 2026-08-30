SELECT *
FROM {{ source('azure_files_load','claims') }}
WHERE claim_type NOT IN ('INPATIENT','OUTPATIENT')
