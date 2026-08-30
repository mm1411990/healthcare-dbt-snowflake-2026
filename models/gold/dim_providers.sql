SELECT DISTINCT
  provider_id,
  provider_name,
  specialty,
  npi
FROM {{ ref('providers') }}
