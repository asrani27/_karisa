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

 Date: 10/06/2025 11:20:27
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
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (1, 'superadmin', 'superadmin', '$2y$12$r0HAFQIZdiAabhk3HwCdVub716cax1jMnmwKnv76nJz8sJx0M3TB6', 'eWKD6FGB8sFTCiM0pb30a84lNvtUqkFJJDZOphR0mAEQyV4CQR1dJd5tZHVI', NULL, '2024-12-20 02:49:44', 'superadmin');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (11, 'adi', 'adi2', '$2y$12$S8y2eXzZhf7OMrScCfdwT.9EZo6yv7EBZUkrk/faHh3DNzW/7zhPu', NULL, '2025-05-12 23:54:44', '2025-05-12 23:56:31', 'superadmin');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (12, 'pu1', NULL, '$2y$10$zGhW7n6aBtBIgJ.moSRNtOnohY/MiTF6pcfL//qd4akj1T9U8oMwy', NULL, '2025-06-03 07:20:53', '2025-06-03 07:20:53', 'dokter');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (13, 'dokter2', NULL, '$2y$10$dfHQaP3dKFALmnItqrVCEeRvzDNjWn3IKbkUrihAGZImGKP/cGb5C', '2arJJKrbA5Jk5SH1se8Y4Dbix12cLd1YwXmIOuwTfIuWnE3NZXiF3dePiXED', '2025-06-03 07:23:51', '2025-06-03 07:23:51', 'dokter');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (14, 'pasien1', NULL, '$2y$10$gGgvmda5sOw.XteWdJKvoeQNJh1c.irtDx1Rol7t9.XLE3Q87aoqm', NULL, '2025-06-03 07:28:22', '2025-06-03 07:28:22', 'pasien');
INSERT INTO `users` (`id`, `username`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES (15, 'andi', 'andi', '$2y$10$LopyX9Hl/T.iawe0samETeZCtneKeV8yOY8rs0JXtfat65nt6Nva.', NULL, '2025-06-09 00:44:27', '2025-06-09 00:44:27', 'pasien');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
