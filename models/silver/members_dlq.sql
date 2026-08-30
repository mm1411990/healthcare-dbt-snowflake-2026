SELECT *
FROM {{ source('azure_files_load','members') }}
WHERE dob IS NULL
