SELECT 
	display_name,
	organization_name,
	COUNT(c.id) AS Count 
FROM  civicrm.civicrm_contact c
INNER JOIN civicrm.civicrm_membership u 
ON 
	contact_type='Individual' 
	AND status_id='1'
	AND c.id = u.id;