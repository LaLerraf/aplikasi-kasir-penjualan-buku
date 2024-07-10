-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2024 pada 16.33
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_javabuku`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `lihat_pelanggan` ()   BEGIN
SELECT * from pelanggan;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kd_buku` varchar(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `stok` int(3) NOT NULL,
  `harga_pokok` int(5) NOT NULL,
  `harga_jual` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kd_buku`, `judul`, `jenis`, `penulis`, `penerbit`, `tahun`, `stok`, `harga_pokok`, `harga_jual`) VALUES
('K0001', 'Berjuta Rasanya', 'Novel', 'Tere Liye', 'Tere Liye', '2014', 8, 80000, 90000),
('K0002', 'Who Moved My Cheese', 'Edukasi', 'Abraham Lincoln', 'Gramedia', '2016', 16, 80000, 90000),
('K0003', 'MCI', 'Novel', 'Asma Nadia', 'Asma Nadia', '2010', 17, 100000, 150000),
('K0004', 'The Power Of Water', 'Edukasi', 'Masaru Emoto', 'Fiky Barokah', '2006', 39, 50000, 60000),
('K0005', 'To Kill a Mockingbird', 'Novel', 'Harper Lee', 'J.B. Lippincott & Co.', '1960', 6, 70000, 90000),
('K0006', 'The Hobbit', 'Novel', 'J.R.R. Tolkien', 'George Allen & Unwin', '1937', 6, 90000, 110000),
('K0007', 'Sapiens: A Brief History of Humankind', 'Sejarah', 'Yuval Noah Harari', 'Harper', '2011', 15, 95000, 115000),
('K0008', '1984', 'Novel', 'George Orwell', 'Secker & Warburg', '1949', 7, 85000, 105000),
('K0009', 'The Great Gatsby', 'Novel', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', '1925', 5, 80000, 100000),
('K0010', 'The Catcher in the Rye', 'Novel', 'J.D. Salinger', 'Little, Brown and Company', '1951', 8, 75000, 95000),
('K0011', 'The Alchemist', 'Novel', 'Paulo Coelho', 'HarperCollins', '1988', 11, 70000, 90000),
('K0012', 'The Lord of the Rings', 'Novel', 'J.R.R. Tolkien', 'George Allen & Unwin', '1954', 10, 95000, 115000),
('K0013', 'The Chronicles of Narnia', 'Novel', 'C.S. Lewis', 'Geoffrey Bles', '1950', 8, 90000, 110000),
('K0014', 'Pride and Prejudice', 'Novel', 'Jane Austen', 'T. Egerton, Whitehall', '1813', 4, 70000, 90000),
('K0015', 'The Hunger Games', 'Novel', 'Suzanne Collins', 'Scholastic Corporation', '2008', 13, 80000, 100000),
('K0016', 'The Girl on the Train', 'Novel', 'Paula Hawkins', 'Riverhead Books', '2015', 9, 85000, 105000),
('K0017', 'Gone with the Wind', 'Novel', 'Margaret Mitchell', 'Macmillan Publishers', '1936', 6, 75000, 95000),
('K0018', 'The Fault in Our Stars', 'Novel', 'John Green', 'Dutton Books', '2012', 7, 70000, 90000),
('K0019', 'The Road', 'Novel', 'Cormac McCarthy', 'Alfred A. Knopf', '2006', 8, 90000, 110000),
('K0020', 'The Silent Patient', 'Novel', 'Alex Michaelides', 'Celadon Books', '2019', 10, 95000, 115000),
('K0021', 'Sejarah Indonesia', 'Sejarah', 'Mochtar Buchori', 'Gramedia Pustaka Utama', '2005', 12, 80000, 100000),
('K0022', 'A Brief History of Time', 'Sejarah', 'Stephen Hawking', 'Bantam Books', '1988', 10, 85000, 105000),
('K0023', 'Guns, Germs, and Steel', 'Sejarah', 'Jared Diamond', 'W. W. Norton & Company', '1997', 9, 90000, 110000),
('K0024', 'The Rise and Fall of the Third Reich', 'Sejarah', 'William L. Shirer', 'Simon & Schuster', '1960', 8, 95000, 115000),
('K0025', 'Sapiens: A Graphic History', 'Sejarah', 'Yuval Noah Harari', 'Harper Perennial', '2020', 11, 70000, 90000),
('K0026', 'Matematika untuk Anak Cerdas', 'Edukasi', 'Michael S. Schneider', 'Erlangga', '2010', 14, 75000, 95000),
('K0027', 'Belajar Fisika Dasar', 'Edukasi', 'Robert Resnick', 'John Wiley & Sons', '2002', 15, 80000, 100000),
('K0028', 'Programming in Java', 'Tutorial', 'E Balagurusamy', 'McGraw Hill Education', '2017', 16, 85000, 105000),
('K0029', 'Python Crash Course', 'Tutorial', 'Eric Matthes', 'No Starch Press', '2019', 17, 90000, 110000),
('K0030', 'Web Development with HTML and CSS', 'Tutorial', 'Jon Duckett', 'Wiley', '2011', 18, 95000, 115000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributor`
--

CREATE TABLE `distributor` (
  `kd_distributor` varchar(10) NOT NULL,
  `nama_distributor` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `distributor`
--

INSERT INTO `distributor` (`kd_distributor`, `nama_distributor`, `alamat`, `telepon`) VALUES
('D0001', 'Zhafari Irsyad', 'Ciawi', '081804958151'),
('D0002', 'Pramudya Saputra', 'Caringin Maseng', '0901313123332');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`, `role`, `id`) VALUES
('admin', 'admin', 'admin', 1),
('raka', '123', 'user', 2),
('farel', 'farel', 'user', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `alamat`, `id`) VALUES
('PL0001', 'Admin', 'L', 'Ciawi', 1),
('PL0002', 'I Made Raka', 'L', 'Caringin Maseng', 2),
('PL003', 'farel', 'L', 'Jalan karang besuki', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `kd_pretransaksi` varchar(10) NOT NULL,
  `kd_transaksi` varchar(10) NOT NULL,
  `kd_pelanggan` varchar(10) NOT NULL,
  `kd_buku` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`kd_pretransaksi`, `kd_transaksi`, `kd_pelanggan`, `kd_buku`, `jumlah`, `sub_total`) VALUES
('PS0001', 'TR0001', 'PL0001', 'K0004', 2, 120000),
('PS0003', 'TR0001', 'PL0001', 'K0003', 2, 300000),
('PS0004', 'TR0002', 'PL0002', 'K0004', 2, 120000),
('PS0005', 'TR0002', 'PL0002', 'K0004', 2, 120000),
('PS0006', 'TR0002', 'PL0002', 'K0003', 1, 150000),
('PS0007', 'TR0003', 'PL0001', 'K0004', 3, 180000),
('PS0008', 'TR0003', 'PL0001', 'K0004', 2, 120000),
('PS0009', 'TR0004', 'PL0001', 'K0001', 2, 180000),
('PS0010', 'TR0004', 'PL0002', 'K0006', 3, 330000);

--
-- Trigger `penjualan`
--
DELIMITER $$
CREATE TRIGGER `BELI` AFTER INSERT ON `penjualan` FOR EACH ROW UPDATE buku SET
buku.stok = buku.stok - NEW.jumlah WHERE buku.kd_buku = NEW.kd_buku
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Batal` AFTER DELETE ON `penjualan` FOR EACH ROW UPDATE buku
SET stok = stok + OLD.jumlah
WHERE
kd_buku = OLD.kd_buku
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan2`
--

CREATE TABLE `penjualan2` (
  `kd_transaksi` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `total` int(50) NOT NULL,
  `tanggal_beli` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan2`
--

INSERT INTO `penjualan2` (`kd_transaksi`, `nama_pelanggan`, `total`, `tanggal_beli`) VALUES
('TR0001', 'Zhafari Irsyad', 660000, '2018-02-17 06:11:36'),
('TR0002', 'Pramudya Saputra', 390000, '2018-02-17 06:13:13'),
('TR0003', 'Zhafari Irsyad', 300000, '2018-02-22 03:50:22'),
('TR0004', 'I Made Raka', 330000, '2024-07-01 10:06:33'),
('TR0005', 'I Made Raka', 120000, '2024-07-03 14:29:21');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `perbulan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `perbulan` (
`kd_buku` varchar(10)
,`judul` varchar(50)
,`jenis` varchar(10)
,`jumlah` int(11)
,`tanggal_beli` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `struk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `struk` (
`nama_pelanggan` varchar(50)
,`total` int(50)
,`tanggal_beli` timestamp
,`kd_transaksi` varchar(10)
,`jumlah` int(11)
,`sub_total` int(20)
,`judul` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `perbulan`
--
DROP TABLE IF EXISTS `perbulan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perbulan`  AS SELECT `buku`.`kd_buku` AS `kd_buku`, `buku`.`judul` AS `judul`, `buku`.`jenis` AS `jenis`, `penjualan`.`jumlah` AS `jumlah`, `penjualan2`.`tanggal_beli` AS `tanggal_beli` FROM ((`buku` join `penjualan` on(`buku`.`kd_buku` = `penjualan`.`kd_buku`)) join `penjualan2` on(`buku`.`kd_buku` = `penjualan`.`kd_buku`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `struk`
--
DROP TABLE IF EXISTS `struk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `struk`  AS SELECT `penjualan2`.`nama_pelanggan` AS `nama_pelanggan`, `penjualan2`.`total` AS `total`, `penjualan2`.`tanggal_beli` AS `tanggal_beli`, `penjualan`.`kd_transaksi` AS `kd_transaksi`, `penjualan`.`jumlah` AS `jumlah`, `penjualan`.`sub_total` AS `sub_total`, `buku`.`judul` AS `judul` FROM ((`penjualan2` join `penjualan` on(`penjualan2`.`kd_transaksi` = `penjualan`.`kd_transaksi`)) join `buku` on(`penjualan`.`kd_buku` = `buku`.`kd_buku`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indeks untuk tabel `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`kd_distributor`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kd_pretransaksi`);

--
-- Indeks untuk tabel `penjualan2`
--
ALTER TABLE `penjualan2`
  ADD PRIMARY KEY (`kd_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `login` FOREIGN KEY (`id`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
