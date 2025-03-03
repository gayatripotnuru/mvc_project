INSERT INTO users (username, password, email, phone_number, role, is_active, created_at, updated_at, created_by, updated_by) 
VALUES 
('Gayatri', 'password123', 'gayatri@gmail.com', '7989197928', 'user', 'Y', '2025-02-21', NULL, 'admin', NULL),
('aditya', '12345', 'aditya@gmail.com', '9988776655', 'admin', 'Y', '2025-02-20', '2025-02-21', 'admin', 'admin'),
('Priya', 'pass@123', 'priya@gmail.com', '9123456789', 'user', 'Y', '2025-02-19', NULL, 'admin', NULL),
('Karthik', 'karthik@789', 'karthik@gmail.com', '8765432109', 'user', 'N', '2025-02-18', '2025-02-19', 'admin', 'admin'),
('roshini', 'roshini@pass', 'roshini@gmail.com', '9988998899', 'user', 'Y', '2025-02-17', NULL, 'admin', NULL);

INSERT INTO movies (movie_id,movie_image_url, title, description, duration, release_date, genre, language, is_active, created_at, updated_at, created_by, updated_by) 
VALUES 
(1,'https://upload.wikimedia.org/wikipedia/en/1/17/Sarkaru_Vaari_Paata.jpg
', 'Sakaru vari pata', 'Sarkaru Vaari Paata is a Telugu action drama about a money lender taking on financial corruption and injustice', 148, '2010-07-16', 'Action/Drama', 'Telugu', 'Y', '2025-02-21', NULL, 'admin', NULL),
(2,'https://upload.wikimedia.org/wikipedia/en/7/71/Bro_Teaser.png
', 'Bro', 'Bro is a Telugu fantasy drama  about a selfish man who gets a second chance at life after encountering the Time God, helping him realize the true value of relationships and responsibilities. ⏳✨', 169, '2014-11-07', 'Fantasy/Drama/Comedy', 'Telugu', 'Y', '2025-02-20', '2025-02-21', 'admin', 'admin'),
(3,'https://upload.wikimedia.org/wikipedia/en/3/33/M.S._Dhoni_-_The_Untold_Story_poster.jpg
', 'M.S. Dhoni', 'M.S. Dhoni: The Untold Story"* is a Hindi biographical sports drama about the inspiring journey of Indian cricketer Mahendra Singh Dhoni, from a small-town boy to a legendary captain. 🏏🎬', 132, '2019-05-30', 'Sport/Drama/Love', 'Telugu/Hindi', 'Y', '2025-02-19', NULL, 'admin', NULL),
(4,'https://upload.wikimedia.org/wikipedia/en/3/3d/Aarya_Telugu_Movie.jpg
', 'Aarya', 'Aarya is a Telugu romantic action drama about a one-sided lover who fights against all odds to win the heart of his love interest.', 181, '2019-04-26', 'Drama/Action/Romantic', 'Telugu', 'Y', '2025-02-18', '2025-02-19', 'admin', 'admin'),
(5,'https://upload.wikimedia.org/wikipedia/en/3/32/Dil_Bechara_film_poster.jpg
', 'Dil Bechara', 'Dil Bechara" is a heartfelt Hindi romantic drama about two terminally ill youngsters who find love and meaning in their limited time together', 125, '2001-07-20', 'Romantic/Drama', 'Telugu/Hindi', 'Y', '2025-02-17', NULL, 'admin', NULL),
(6,'https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg
','Interstellar ','A space epic about astronauts searching for a new habitable planet.',200,'2020-10-09','Adventure/Drama','English','Y','2025-02-17',NULL, 'admin', NULL),
(7,'https://upload.wikimedia.org/wikipedia/en/5/5b/Anybody-can-dance.jpg
', 'ABCD', 'The movie ABCD (Any Body Can Dance) is a Bollywood dance drama showcasing the journey of underdogs who rise to fame through their passion for dance.', 250, '2001-07-20', 'Dance/Drama', 'Hindi', 'Y', '2025-02-17', NULL, 'admin', NULL),
(8,'https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg
', 'Inception', 'A mind-bending sci-fi thriller where a thief enters dreams to plant an idea', 181, '2019-04-26', 'sci-fi/thriller', 'English', 'Y', '2025-02-18', '2025-02-19','admin', 'admin');

INSERT INTO Theater (name, location, capacity, is_active, created_at, updated_at, created_by, updated_by) 
VALUES 
('PVR Cinemas', 'vizag', 250, 'Yes', NOW(), NOW(), 'Admin', 'Admin'),
('INOX Movies', 'Maddilpalem', 300, 'Yes', NOW(), NOW(), 'Admin', 'Admin'),
('Cinepolis', 'vizag', 200, 'Yes', NOW(), NOW(), 'Admin', 'Admin'),
('IMAX', 'gajuwaka', 400, 'Yes', NOW(), NOW(), 'Admin', 'Admin'),
('AMC Theatres', 'vizag', 350, 'Yes', NOW(), NOW(), 'Admin', 'Admin');

INSERT INTO showtime (
    showtime_id, available_seats, created_at, created_by, end_date, 
    end_time, is_active, start_date, start_time, 
    updated_at, updated_by, movie_id, theater_id
) VALUES 
(1, 80, '45:00.0', 'admin', '2025-03-31', '45:00.0', 'Y', '2025-03-12', '15:00.0', '45:00.0', 'admin', 1, 1),
(2, 100, '45:00.0', 'admin', '2025-03-31', '44:00.0', 'Y', '2025-03-01', '30:00.0', '45:00.0', 'admin', 4, 2),
(3, 120, '27:00.0', 'admin', '2025-03-31', '44:00.0', 'Y', '2025-03-01', '30:00.0', '27:00.0', 'admin', 3, 4),
(4, 120, '26:00.0', 'admin', '2025-02-26', '44:00.0', 'Y', '2025-03-08', '30:00.0', '27:00.0', 'admin', 5, 2),
(5, 79, '26:00.0', 'admin', '2025-04-28', '45:00.0', 'Y', '2025-02-26', '15:00.0', '27:00.0', 'admin', 6, 1),
(6, 88, '26:00.0', 'admin', '2025-05-28', '45:00.0', 'Y', '2025-03-26', '30:00.0', '27:00.0', 'admin', 6, 4),
(7, 90, '00:00.0', 'admin', '2025-04-15', '45:00.0', 'Y', '2025-03-01', '30:00.0', '00:00.0', 'admin', 8, 1),
(8, 100, '00:00.0', 'admin', '2025-04-20', '45:00.0', 'Y', '2025-03-05', '30:00.0', '00:00.0', 'admin', 3, 2),
(9, 150, '00:00.0', 'admin', '2025-04-22', '45:00.0', 'Y', '2025-03-08', '30:00.0', '00:00.0', 'admin', 4, 3),
(10, 120, '00:00.0', 'admin', '2025-04-25', '45:00.0', 'Y', '2025-03-10', '30:00.0', '00:00.0', 'admin', 5, 4),
(11, 120, '00:00.0', 'admin', '2025-04-28', '45:00.0', 'Y', '2025-03-12', '30:00.0', '00:00.0', 'admin', 6, 5),
(12, 120, '00:00.0', 'admin', '2025-03-31', '45:00.0', 'Y', '2025-03-12', '25:00.0', '00:00.0', 'admin', 1, 1);
