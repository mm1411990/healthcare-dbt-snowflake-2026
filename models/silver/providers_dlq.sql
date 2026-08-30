SELECT *
FROM {{ source('azure_files_load','providers') }}
WHERE LENGTH(npi) != 10
