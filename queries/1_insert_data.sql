# Écris dans ce fichier quelques instructions SQL pour insérer de données dans ta BDD
# N'oublie pas, les requêtes SQL doivent se terminer avec un ";"
# Pense à céer au moins une entreprise nommée "WCS", à créer des offre d'emploi à "Paris" dont une qui s'intitule "Dev"
INSERT INTO recruitor (pseudo, password, created_at, updated_at) VALUES('recruitor1', 'mdp', '2023-05-23 10:30:00', '2023-05-23 10:30:00');

INSERT INTO company (name, description, created_at, updated_at, recruitor_id) VALUES
    ( 'WCS', 'Superbe école', '2023-05-23 10:30:00', '2023-05-23 10:30:00', (SELECT id from recruitor WHERE pseudo='recruitor1') ),
    ( 'THP', 'Autre école', '2023-05-23 10:30:00', '2023-05-23 10:30:00', (SELECT id from recruitor WHERE pseudo='recruitor1') );

INSERT INTO job_offer (title, description, place, created_at, updated_at, company_id) VALUES
    ( 'Dev', 'Vive le dev', 'Paris', '2023-05-23 10:30:00', '2023-05-23 10:30:00', (SELECT id from company WHERE name='WCS') ),
    ( 'Piscine', 'Vive la piscine', 'Montpellier', '2023-05-23 10:30:00', '2023-05-23 10:30:00', (SELECT id from company WHERE name='WCS') );

INSERT INTO candidate (pseudo, password, name, firstname, email, phone_number, resume, created_at, updated_at) VALUES
    ('candidate1', 'mdp', 'namecandidate1', 'firstnamecandidate1', 'candidate1@yopmail.com', '0600000000', 'this is my bio', '2023-05-23 10:30:00', '2023-05-23 10:30:00');

INSERT INTO request (created_at, updated_at, candidate_id, job_offer_id) VALUES
    ( '2023-05-23 10:30:00', '2023-05-23 10:30:00', (SELECT id from candidate WHERE name='candidate1'), (SELECT id from job_offer WHERE title='Dev') );