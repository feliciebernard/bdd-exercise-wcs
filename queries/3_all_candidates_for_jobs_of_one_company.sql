# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom
SELECT candidate.*
FROM candidate
INNER JOIN request ON request.candidate_id = candidate.id
INNER JOIN job_offer ON job_offer.id = request.job_offer_id
INNER JOIN company ON company.id = job_offer.company_id
WHERE company.name = 'WCS';