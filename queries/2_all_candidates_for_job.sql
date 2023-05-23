# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"
SELECT candidate.*
FROM candidate
INNER JOIN request ON request.candidate_id = candidate.id
INNER JOIN job_offer ON job_offer.id = request.job_offer_id
WHERE job_offer.title = 'Dev';