# Écris une requêtes SQL qui retourne toutes les offres d'emploi proposées à Paris (ville)
SELECT job_offer.*
FROM job_offer
WHERE job_offer.place = 'Paris';