/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : _karisa

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 18/06/2025 20:52:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dokter
-- ----------------------------
DROP TABLE IF EXISTS `dokter`;
CREATE TABLE `dokter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `poli` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `jkel` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dokter
-- ----------------------------
BEGIN;
INSERT INTO `dokter` (`id`, `nama`, `poli`, `nik`, `jkel`, `tgl_lahir`, `alamat`, `telp`, `created_at`, `updated_at`, `user_id`, `foto`) VALUES (2, 'Udin', 'anak', '987655678', 'L', '2025-06-03', 'jl pramuka', '098789', '2025-06-03 07:22:24', '2025-06-03 07:23:51', 13, '683e247008f37.png');
INSERT INTO `dokter` (`id`, `nama`, `poli`, `nik`, `jkel`, `tgl_lahir`, `alamat`, `telp`, `created_at`, `updated_at`, `user_id`, `foto`) VALUES (3, 'dini', 'Gizi', '987656789', 'P', '1990-09-09', '-', '-', '2025-06-09 01:01:36', '2025-06-09 01:01:36', NULL, '6845c1f0e590d.jpeg');
COMMIT;

-- ----------------------------
-- Table structure for jadwal
-- ----------------------------
DROP TABLE IF EXISTS `jadwal`;
CREATE TABLE `jadwal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hari` varchar(255) DEFAULT NULL,
  `dokter_id` int(11) unsigned DEFAULT NULL,
  `jam_mulai` varchar(255) DEFAULT NULL,
  `jam_selesai` varchar(255) DEFAULT NULL,
  `ruangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `senin` varchar(255) DEFAULT NULL,
  `selasa` varchar(255) DEFAULT NULL,
  `rabu` varchar(255) DEFAULT NULL,
  `kamis` varchar(255) DEFAULT NULL,
  `jumat` varchar(255) DEFAULT NULL,
  `sabtu` varchar(255) DEFAULT NULL,
  `minggu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jadwal
-- ----------------------------
BEGIN;
INSERT INTO `jadwal` (`id`, `hari`, `dokter_id`, `jam_mulai`, `jam_selesai`, `ruangan`, `created_at`, `updated_at`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`, `sabtu`, `minggu`) VALUES (1, NULL, 2, NULL, NULL, 'Anak.', '2025-06-03 08:02:59', '2025-06-03 08:57:21', '8 s/d 12 WIB', '8 s/d 12 WIB', '-', '-', '8 s/d 12 WIB', '8 s/d 12 WIB', '-');
COMMIT;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kategori
-- ----------------------------
BEGIN;
INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES (1, 'Obat', NULL, NULL);
INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES (2, 'Susu', NULL, NULL);
INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES (3, 'Vitamin', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for konsultasi
-- ----------------------------
DROP TABLE IF EXISTS `konsultasi`;
CREATE TABLE `konsultasi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pasien_id` int(11) DEFAULT NULL,
  `dokter_id` int(11) DEFAULT NULL,
  `chat_pasien` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chat_dokter` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of konsultasi
-- ----------------------------
BEGIN;
INSERT INTO `konsultasi` (`id`, `pasien_id`, `dokter_id`, `chat_pasien`, `created_at`, `updated_at`, `chat_dokter`) VALUES (1, 2, 2, 'sdf', '2025-06-18 19:54:48', '2025-06-18 19:54:48', NULL);
INSERT INTO `konsultasi` (`id`, `pasien_id`, `dokter_id`, `chat_pasien`, `created_at`, `updated_at`, `chat_dokter`) VALUES (2, 2, 2, 'sdfsdf', '2025-06-18 19:58:25', '2025-06-18 19:58:25', NULL);
INSERT INTO `konsultasi` (`id`, `pasien_id`, `dokter_id`, `chat_pasien`, `created_at`, `updated_at`, `chat_dokter`) VALUES (6, 2, 2, NULL, '2025-06-18 20:47:15', '2025-06-18 20:47:15', 'dfgdsdf');
INSERT INTO `konsultasi` (`id`, `pasien_id`, `dokter_id`, `chat_pasien`, `created_at`, `updated_at`, `chat_dokter`) VALUES (7, 2, 2, NULL, '2025-06-18 20:50:53', '2025-06-18 20:50:53', 'okdsfdsf');
INSERT INTO `konsultasi` (`id`, `pasien_id`, `dokter_id`, `chat_pasien`, `created_at`, `updated_at`, `chat_dokter`) VALUES (8, 2, 2, NULL, '2025-06-18 20:50:55', '2025-06-18 20:50:55', 'dfgsd');
INSERT INTO `konsultasi` (`id`, `pasien_id`, `dokter_id`, `chat_pasien`, `created_at`, `updated_at`, `chat_dokter`) VALUES (9, 2, 2, 'ok', '2025-06-18 20:52:10', '2025-06-18 20:52:10', NULL);
COMMIT;

-- ----------------------------
-- Table structure for pasien
-- ----------------------------
DROP TABLE IF EXISTS `pasien`;
CREATE TABLE `pasien` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `umur` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `jkel` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pasien
-- ----------------------------
BEGIN;
INSERT INTO `pasien` (`id`, `nama`, `umur`, `nik`, `jkel`, `tgl_lahir`, `alamat`, `telp`, `created_at`, `updated_at`, `user_id`, `foto`) VALUES (2, 'andi', NULL, NULL, NULL, NULL, 'jl pramuka', '08777899', '2025-06-09 00:44:27', '2025-06-09 00:44:27', 15, NULL);
COMMIT;

-- ----------------------------
-- Table structure for rekam_medis
-- ----------------------------
DROP TABLE IF EXISTS `rekam_medis`;
CREATE TABLE `rekam_medis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `dokter_id` int(11) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `keluhan` text,
  `nik` varchar(255) DEFAULT NULL,
  `obat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rekam_medis
-- ----------------------------
BEGIN;
INSERT INTO `rekam_medis` (`id`, `nama`, `dokter_id`, `tanggal`, `nomor`, `keluhan`, `nik`, `obat`, `created_at`, `updated_at`) VALUES (1, 'klj', NULL, '2025-06-05', 'fg', 'lkjl', 'sdfkj', 'kj', '2025-06-18 20:25:59', '2025-06-18 20:26:21');
COMMIT;

-- ----------------------------
-- Table structure for stok
-- ----------------------------
DROP TABLE IF EXISTS `stok`;
CREATE TABLE `stok` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stok
-- ----------------------------
BEGIN;
INSERT INTO `stok` (`id`, `kategori_id`, `jumlah`, `nama`, `foto`, `created_at`, `updated_at`, `harga`, `deskripsi`) VALUES (1, 1, 234, 'sdf', '683e27d16110b.png', '2025-06-03 07:38:09', '2025-06-03 07:38:09', 324, NULL);
INSERT INTO `stok` (`id`, `kategori_id`, `jumlah`, `nama`, `foto`, `created_at`, `updated_at`, `harga`, `deskripsi`) VALUES (2, 2, 345, 'dfg', '683e29a0a1046.png', '2025-06-03 07:45:52', '2025-06-03 07:45:52', 324, NULL);
INSERT INTO `stok` (`id`, `kategori_id`, `jumlah`, `nama`, `foto`, `created_at`, `updated_at`, `harga`, `deskripsi`) VALUES (3, 1, 435, 'dfg', '683e2a1ee4c44.png', '2025-06-03 07:47:58', '2025-06-03 07:48:43', 324, '<p>asdasd</p>');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (1, 'superadmin', 'superadmin', '$2y$12$r0HAFQIZdiAabhk3HwCdVub716cax1jMnmwKnv76nJz8sJx0M3TB6', 'pMZSkaWGFH3mvG2FC7Ic2pob4cRZQr6DWTGXBsaihYDrTDXqJ5UQXnaYnqWG', NULL, '2024-12-20 02:49:44', 'superadmin');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (11, 'adi', 'adi2', '$2y$12$S8y2eXzZhf7OMrScCfdwT.9EZo6yv7EBZUkrk/faHh3DNzW/7zhPu', NULL, '2025-05-12 23:54:44', '2025-05-12 23:56:31', 'superadmin');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (12, 'pu1', NULL, '$2y$10$zGhW7n6aBtBIgJ.moSRNtOnohY/MiTF6pcfL//qd4akj1T9U8oMwy', NULL, '2025-06-03 07:20:53', '2025-06-03 07:20:53', 'dokter');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (13, 'dokter2', NULL, '$2y$10$vygcXV9TgNYpCnltnbXxqeuAQDhiR7n2ypsa3FvWuTY347PSIAo3m', 'RlNOJ0ptuUbZ1sIvdnrRJe2X3jSZWjzM3CW5M1zfWNIEg11a9FOScFhUaOUv', '2025-06-03 07:23:51', '2025-06-18 20:07:45', 'dokter');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (14, 'pasien1', NULL, '$2y$10$gGgvmda5sOw.XteWdJKvoeQNJh1c.irtDx1Rol7t9.XLE3Q87aoqm', NULL, '2025-06-03 07:28:22', '2025-06-03 07:28:22', 'pasien');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (15, 'andi', 'andi', '$2y$10$yZdmxyf8pr2ytTowZZSIIOsh44zaDlDbN4oFZzk2iubBrBxkinMT6', 'FYaxAtmregMaGruLPk9B2913qjsUcXkj4b7W55vioEcMCzkl2h7Oy0itv5SG', '2025-06-09 00:44:27', '2025-06-18 19:30:03', 'pasien');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
