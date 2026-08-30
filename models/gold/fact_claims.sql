SELECT
  c.claim_id,
  c.member_id,
  m.member_name,
  c.provider_id,
  p.provider_name,
  c.service_date,
  c.claim_amount,
  c.claim_type,
  c.claim_status
FROM {{ ref('claims') }} c
LEFT JOIN {{ ref('dim_members') }} m ON c.member_id = m.member_id
LEFT JOIN {{ ref('dim_providers') }} p ON c.provider_id = p.provider_id
