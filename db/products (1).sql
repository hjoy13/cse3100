-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 12:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `authors`, `price`, `description`, `image_url`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Padda Noder Majhi', ' Manik Bandopadhyay', 10.00, '', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9-H0wc5o1-nVYhHF2bZA027AeBr44W72K3A&s', 67, '2024-12-02 03:31:01', '2024-12-21 19:02:33'),
(2, 'Akattorer Chithi', 'Freedom fighters', 30.00, 'The freedom of Bangladesh comes from lives of bangali people known as freedom fighters. The freedom fighters shared their feelings and conditions to parents and dears through the letters during war. Some of the collection of the letters is written in this book.', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgH8YVTdwTOMmC20hHLWsoPtqeamATp3JA4ikVu4MTerXylk732ha5a9SaqKe3olZ-EMHazBzMzfvfTnAg83-0226VPmE6intq3Oa0XdvOivQRTPsf9lNv3NFz7UHTl3hc5YZm9xW-s6ShZ/s800-rw/71a.png', 117, '2024-12-02 04:47:43', '2024-12-06 15:04:52'),
(3, 'Nondito Noroke\r\n \r\n\r\n', 'Humayun Ahmed', 50.00, 'A brief description of the book', 'https://m.media-amazon.com/images/I/51YWM6R0DzS._AC_UF1000,1000_QL80_.jpg', 144, '2024-12-02 05:00:00', '2024-12-06 15:04:52'),
(5, 'To Kill a Mockingbird', 'Harper Lee', 10.99, 'A classic novel about racism and injustice in the Deep South.', 'https://upload.wikimedia.org/wikipedia/commons/4/4f/To_Kill_a_Mockingbird_%28first_edition_cover%29.jpg', 300, '2024-12-02 07:06:04', '2024-12-04 14:11:26'),
(6, '1984', 'George Orwell', 12.50, 'https://anylang.net/sites/default/files/covers/1984.jpg', 'https://www.univ.ox.ac.uk/wp-content/uploads/2018/11/1984.jpg', 38, '2024-12-02 07:06:04', '2024-12-06 15:04:52'),
(7, 'Pride and Prejudice', 'Jane Austen', 8.99, 'A romantic novel that critiques societal norms.', 'https://m.media-amazon.com/images/I/812wzoJvRLL._AC_UF1000,1000_QL80_.jpg', 16, '2024-12-02 07:06:04', '2024-12-06 21:30:29'),
(8, 'The Great Gatsby', 'F. Scott Fitzgerald', 14.00, 'A critique of the American Dream set in the 1920s.', 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg', 22, '2024-12-02 07:06:04', '2024-12-02 09:12:00'),
(9, 'Moby Dick', 'Herman Melville', 18.99, 'A thrilling story about the pursuit of a great white whale.', 'https://images-na.ssl-images-amazon.com/images/I/51b5YG6Y1rL.jpg', 13, '2024-12-02 07:06:04', '2024-12-06 21:30:29'),
(10, 'War and Peace', 'Leo Tolstoy', 22.50, 'A historical novel set during the Napoleonic Wars.', 'https://m.media-amazon.com/images/I/71wXZB-VtBL._AC_UF1000,1000_QL80_.jpg', 10, '2024-12-02 07:06:04', '2024-12-02 09:09:42'),
(11, 'Crime and Punishment', 'Fyodor Dostoevsky', 16.75, 'A psychological exploration of guilt and redemption.', 'https://upload.wikimedia.org/wikipedia/en/4/4b/Crimeandpunishmentcover.png', 7, '2024-12-02 07:06:04', '2024-12-09 10:03:58'),
(12, 'Brave New World', 'Aldous Huxley', 13.50, 'A dystopian story about a controlled and engineered society.', 'https://upload.wikimedia.org/wikipedia/en/thumb/6/62/BraveNewWorld_FirstEdition.jpg/220px-BraveNewWorld_FirstEdition.jpg', 18, '2024-12-02 07:06:04', '2024-12-09 10:03:58'),
(13, 'The Catcher in the Rye', 'J.D. Salinger', 9.99, 'A story about teenage alienation and rebellion.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg/640px-The_Catcher_in_the_Rye_%281951%2C_first_edition_cover%29.jpg', 35, '2024-12-02 07:06:04', '2024-12-02 08:25:03'),
(14, 'Himu', 'Humayun Ahmed', 20.00, 'Himu is a beloved fictional character created by Humayun Ahmed, one of the most celebrated writers in Bengali literature. Himu is the protagonist in a series of novels where he leads a unique, eccentric lifestyle, rejecting materialism and embracing simplicity and mysticism', 'https://m.media-amazon.com/images/I/417pLFQFXUL._SL500_.jpg', 120, '2024-12-02 12:05:56', '2024-12-07 09:41:58'),
(15, 'Misir Ali O Himu', 'Humayun Ahmed', 25.00, 'A crossover story featuring Himu and Misir Ali, combining mysticism with logical reasoning.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuJNYv3cYiMFv_hZ7tcfKoiVkYkfzRCG1qKg&s', 89, '2024-12-02 12:13:06', '2024-12-06 21:30:29'),
(16, 'Aaj Himur Biye', 'Humayun Ahmed', 22.00, 'A humorous and insightful tale where Himu faces societal expectations around marriage.', 'https://ds.rokomari.store/rokomari110/ProductNew20190903/260X372/0bb896f838d4_1133.gif', 9, '2024-12-02 12:13:06', '2024-12-06 20:42:59'),
(17, 'IELTS', 'Cambridge University Press', 12.20, 'The IELTS practice book was created by leading English language specialists and is ideal for home study or to use in class. You’ll find copies in many British Council test centres.\n\nThis practice book includes additional IELTS study material in the form of a CD-ROM, with a recording transcript, plus practical preparation exercises to help you study for all four parts of the test: listening, speaking, reading and writing.\n', 'https://static1.eboighar.com/thumbimages/Books/book_99902021-09-30_1633006569.jpg', 63, '2024-12-02 12:22:55', '2024-12-07 11:24:29'),
(18, 'C Programming', 'Dennis Ritchie', 29.99, 'C is a general-purpose programming language created by Dennis Ritchie at the Bell Laboratories in 1972. It is a very popular language, despite being old. The main reason for its popularity is because it is a fundamental language in the field of computer science. C is strongly associated with UNIX, as it was developed to write the UNIX operating system.', 'https://www.gatevidyalay.com/wp-content/uploads/2019/09/The-C-Programming-Language-by-Dennis-Ritchie.jpg', 52, '2024-12-02 12:31:31', '2024-12-10 15:44:58'),
(19, 'The Mythical Man-Month', 'Frederick P. Brooks', 35.99, 'This book is a classic in software engineering literature, exploring the challenges of project management and software development, emphasizing the idea that adding more manpower to a late project makes it later.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1348430512i/13629.jpg', 22, '2024-12-02 12:37:13', '2024-12-10 15:44:58'),
(20, 'The Alchemist', 'Paulo Coelho', 15.99, 'A philosophical novel about following your dreams.', 'https://images-na.ssl-images-amazon.com/images/I/51Z0nLAfLmL._SX331_BO1,204,203,200_.jpg', 250, '2024-12-02 07:06:04', '2024-12-06 15:04:52'),
(22, 'The Hobbit', 'J.R.R. Tolkien', 18.99, 'A fantasy novel that follows the journey of Bilbo Baggins.', 'https://upload.wikimedia.org/wikipedia/en/4/4a/TheHobbit_FirstEdition.jpg', 50, '2024-12-02 13:45:52', '2024-12-10 02:42:39'),
(23, 'The Odyssey', 'Homer', 16.00, 'An ancient Greek epic poem about Odysseus’s journey home.', 'https://m.media-amazon.com/images/I/81g0AATkO9L.jpg', 80, '2024-12-02 13:45:52', '2024-12-10 02:42:39'),
(24, 'The Little Prince', 'Antoine de Saint-Exupéry', 12.99, 'A story about a young prince who explores different worlds.', 'https://m.media-amazon.com/images/I/71OZY035QKL._SL1500_.jpg', 120, '2024-12-02 13:45:52', '2024-12-10 02:42:39'),
(29, 'The Divine Comedy', 'Dante Alighieri', 21.00, 'An epic poem describing Dante\'s journey through Hell, Purgatory, and Paradise.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Dante_Domenico_di_Michelino.jpg/1200px-Dante_Domenico_di_Michelino.jpg', 40, '2024-12-02 13:45:52', '2024-12-10 02:42:39'),
(41, 'Games Untold: An Inheritance Games Collection', 'Jennifer Lynn Barnes', 10.00, 'Romance, luxury, and secrets abound in this thrilling new collection that take readers deeper into the world of the #1 bestselling Inheritance Games series', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1708765656i/208209832.jpg', 99, '2024-12-21 18:29:44', '2024-12-21 18:29:44'),
(42, 'Servant of Earth', 'Sarah Hawley', 12.00, 'In the underground Fae realm, only the strongest and most ruthless have power—but a young human woman forced into a life of servitude is about to change everything.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1710349064i/208930983.jpg', 102, '2024-12-21 18:30:56', '2024-12-21 18:30:56'),
(43, 'The Teller of Small Fortunes', 'Julie Leong', 15.00, 'A wandering fortune teller finds an unexpected family in this warm and wonderful debut fantasy, perfect for readers of Travis Baldree and Sangu Mandanna.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1710771695i/207611551.jpg', 34, '2024-12-21 18:32:45', '2024-12-21 18:32:45'),
(44, 'Time of the Child', 'Niall Williams', 20.00, 'From the author of This Is Happiness, a compassionate, life-affirming novel about the Christmas season that transforms the small Irish town of Faha.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1712025537i/201608156.jpg', 13, '2024-12-21 18:36:07', '2024-12-21 18:36:07'),
(45, 'A Legend in the Baking', 'Jamie Wesley', 18.00, 'After accidentally going viral on social media, a cupcake-baking football player gets assistance from a social media maven—and his best friend\'s little sister—to help promote his new bakery.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1695073655i/195790893.jpg', 88, '2024-12-21 18:37:14', '2024-12-26 23:54:44'),
(46, 'The Lies We Leave Behind', 'Noelle Salazar', 15.00, 'For fans of Kate Quinn and Beatriz Williams, this sweeping story follows a fearless nurse who must leave love behind when duty calls her back to the front.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1718678821i/204906169.jpg', 99, '2024-12-21 18:38:06', '2024-12-21 18:38:06'),
(47, 'She\'s Always Hungry: Stories', 'Eliza Clark', 11.99, 'From Eliza Clark, the author of the brilliant novels Boy Parts and Penance and one of Granta’s Best Young British Novelists, comes a fierce, visionary and darkly comic story collection.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1714600043i/201033505.jpg', 8, '2024-12-21 18:39:06', '2024-12-21 18:39:06'),
(48, 'I Am the Dark That Answers When You Call', 'Jamison Shea', 29.99, 'Monsters and mortals, rejoice! Acheron is back . . .', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1710879434i/200982292.jpg', 45, '2024-12-21 18:40:51', '2024-12-21 18:40:51'),
(49, 'Pictures of You', 'Emma Grey', 15.99, 'If you knew then what you know now, would you make the same choices? Imagine having a second chance with the one you never forgot.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1722592699i/197156017.jpg', 20, '2024-12-21 18:42:01', '2024-12-21 18:42:01'),
(50, 'The Sunflower House', 'Adriana Allegri', 12.00, 'Family secrets come to light as a young woman fights to save herself, and others, in a Nazi-run baby factory—a real-life Handmaid\'s Tale—during World War II.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1711211262i/203579150.jpg', 70, '2024-12-21 18:43:12', '2024-12-21 18:43:12'),
(51, 'Eleanore of Avignon', 'Elizabeth DeLozier', 14.99, 'Eleanore of Avignon is the story of a woman who is unwilling to bend to the limitations her society places upon her when she becomes the unlikely apprentice to the pope’s physician at the most challenging and dangerous moment in medieval European history.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1702872371i/203956661.jpg', 1, '2024-12-21 18:44:28', '2024-12-25 21:14:02'),
(52, 'Those Opulent Days', 'Jacquie Pham', 12.99, 'Jacquie Pham’s transportive debut, Those Opulent Days, delivers a classic historical murder mystery centered around the glamor, violence, wealth, and opium of 1920’s French-colonial Vietnam that meshes the structural brilliance of Lucy Foley’s The Guest List with the historical vitality of Vanessa Chan\'s The Storm We Made, and the upstairs-downstairs drama of Downton Abbey.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1713208915i/208591696.jpg', 0, '2024-12-21 18:45:52', '2024-12-21 18:49:37'),
(53, 'Wind and Truth', 'Brandon Sanderson', 29.99, 'A fantasy epic that continues Sanderson\'s tradition of intricate world-building and compelling characters, exploring themes of power and destiny.', 'https://tse1.mm.bing.net/th?id=OIP.zY9VoRLOLtMtySqOof1y1wAAAA&w=200&h=308&c=7', 7, '2024-12-24 20:00:39', '2024-12-24 20:00:39'),
(54, 'The Briar Club', 'Kate Quinn', 27.00, 'A historical novel about women codebreakers during WWII and their pivotal roles in the war effort.', 'https://tse1.mm.bing.net/th?id=OIP.Pt69rF4QK4OGJ167lw0QdwHaKr&pid=Api', 12, '2024-12-24 20:02:49', '2024-12-24 20:02:49'),
(55, 'Atomic Habits', 'James Clear', 16.20, 'A guide on building good habits, breaking bad ones, and making remarkable life changes.', 'https://m.media-amazon.com/images/I/81ANaVZk5LL._SY466_.jpg', 60, '2024-12-25 06:00:00', '2024-12-24 20:19:33'),
(56, 'The House of Cross', 'James Patterson', 28.00, 'A thrilling mystery involving complex family dynamics and unexpected events.', 'https://m.media-amazon.com/images/I/81a-4uwlEAL._SY466_.jpg', 45, '2024-12-25 06:00:00', '2024-12-24 20:25:35'),
(57, 'To Die For', 'David Baldacci', 28.99, 'A gripping legal thriller exploring the dark side of the justice system.', 'https://m.media-amazon.com/images/I/81c5c9PyGkL._SY466_.jpg', 35, '2024-12-25 06:00:00', '2024-12-24 20:25:35'),
(58, 'The Witness', 'Sandra Brown', 26.99, 'A romantic suspense novel about a woman entangled in danger after witnessing a high-profile murder.', 'https://m.media-amazon.com/images/I/61K219f4bxL._SY466_.jpg', 25, '2024-12-25 06:00:00', '2024-12-24 20:25:35'),
(59, 'The Bee Sting', 'Paul Murray', 24.00, 'A darkly comic family saga exploring failure, resilience, and human relationships.', 'https://m.media-amazon.com/images/I/41quYKKUQ8L._SY445_SX342_.jpg', 30, '2024-12-25 06:00:00', '2024-12-24 20:25:35'),
(60, 'The Heaven & Earth Grocery Store', 'James McBride', 28.00, 'A rich narrative about diverse inhabitants of a small town and their hidden histories.', 'https://m.media-amazon.com/images/I/411-+bcHfKL._SY445_SX342_.jpg', 20, '2024-12-25 06:00:00', '2024-12-24 20:25:35'),
(61, 'Loot', 'Tania James', 26.00, 'A historical adventure of a young artist in 18th-century India blending art and discovery.', 'https://m.media-amazon.com/images/I/815bqKbcdCL._SY466_.jpg', 15, '2024-12-25 06:00:00', '2024-12-24 20:21:29'),
(62, 'The French Winemaker\'s Daughter', 'Loretta Ellsworth', 25.00, 'A post-WWII tale of a young woman rebuilding her family\'s vineyard while navigating love and loss.', 'https://m.media-amazon.com/images/I/7163MZJBvTL._SY466_.jpg', 9, '2024-12-25 06:00:00', '2024-12-26 23:54:44'),
(63, 'Kākābābu samagra', 'Sunil Gangopadhyay', 60.00, 'This is a collection of 6 early stories in the series of Kakababu. Kakababu is one unforgettable character in Bengali adventure and detective stories.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1589747006i/12733425.jpg', 49, '2024-12-25 19:49:39', '2024-12-25 21:14:02'),
(64, 'Chobir Deshe, Kobitar Deshe', 'Sunil Gangopadhyay', 29.99, 'The book captures all the enjoyable experiences of travelling, and the food they ate, and provides descriptions of France\'s seas.', 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1365751088i/16002237.jpg', 14, '2024-12-25 19:51:33', '2024-12-25 21:14:02'),
(65, 'Rāṇu o Bhānu', 'Sunil Gangopadhyay', 15.00, 'A young girl named Banolata, a devoted admirer of Rabindranath Tagore, exchanged letters with him, leaving a lasting impression on the poet. Years later, their heartfelt connection was immortalized in a touching story by Munin Gangopadhyay.', 'https://m.media-amazon.com/images/I/91tYE1Qx6YL._SY466_.jpg', 8, '2024-12-25 19:56:13', '2024-12-26 23:54:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`),
  ADD KEY `idx_authors` (`authors`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
