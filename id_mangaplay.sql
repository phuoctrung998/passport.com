/*
 Navicat Premium Data Transfer

 Source Server         : passport.dev
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : id_mangaplay

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 06/07/2020 16:34:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (9, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (10, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (14, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (16, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('95ae878cff3cec89665f3ec3882be30d79e58116c9fc2f60daa91bffc6067761ebfeb7e9c44da6ee', 2, '3', NULL, '[]', 0, '2020-06-29 03:09:13', '2020-06-29 03:09:13', '2021-06-29 03:09:13');
INSERT INTO `oauth_access_tokens` VALUES ('e04dde4d55d554587bafdfed6a615a52a5406110d1e00c0d675cd665436a1d6f9d936518b24bd357', 1, '0', 'Personal Access Token', '[]', 0, '2020-06-29 03:17:56', '2020-06-29 03:17:56', '2021-06-29 03:17:56');
INSERT INTO `oauth_access_tokens` VALUES ('8cc01bed67e5d1e7b8726478081217ccc602e7c89145baf6ead36e513e07efe48684cf45b27b18cf', 1, '3', NULL, '[]', 0, '2020-06-29 04:46:09', '2020-06-29 04:46:09', '2021-06-29 04:46:09');
INSERT INTO `oauth_access_tokens` VALUES ('8eafb2b1be64a498e953995ccc9cf08da30e817519c8e10346e173205ebfd7c662ee39ef21cf5093', 1, '3', NULL, '[]', 0, '2020-06-29 05:10:00', '2020-06-29 05:10:00', '2021-06-29 05:10:00');
INSERT INTO `oauth_access_tokens` VALUES ('8d8cadc40aee13f2e774fe117cd9444cd46624a52680ee84c36d149c4f4a6da0e078ed64cc759bca', 1, '3', NULL, '[]', 0, '2020-06-29 07:02:33', '2020-06-29 07:02:33', '2021-06-29 07:02:33');
INSERT INTO `oauth_access_tokens` VALUES ('7077f6972fcd81674151e1d2ad94edd01f31c1a02147dfc608e4201f6aa3c3a046dd134bbd8acf79', 1, '3', NULL, '[]', 0, '2020-06-29 07:30:43', '2020-06-29 07:30:43', '2021-06-29 07:30:43');
INSERT INTO `oauth_access_tokens` VALUES ('38dc67fd6fca279034159c5a46079d00b651e1a9baa2a7c7c764b9a9e63f830285449851f343e5ea', 3, '3', NULL, '[]', 0, '2020-06-29 07:31:40', '2020-06-29 07:31:40', '2021-06-29 07:31:40');
INSERT INTO `oauth_access_tokens` VALUES ('e87d8c133114d6c8d0e5515356bd19ad98f8dea25bc5091060c5818e58eabd8707843a04fccd205d', 3, '3', NULL, '[]', 0, '2020-06-29 07:32:11', '2020-06-29 07:32:11', '2021-06-29 07:32:11');
INSERT INTO `oauth_access_tokens` VALUES ('f51a5dea4f2471d600ee45822b48dc065121e447f3fe50a2a034ac93d3193f0c538d418626629fba', 5, '0', 'Personal Access Token', '[]', 0, '2020-06-29 07:43:31', '2020-06-29 07:43:31', '2021-06-29 07:43:31');
INSERT INTO `oauth_access_tokens` VALUES ('4080bfe5343ba26b9adecc4266aa350e964567cb1f021cdbeb2fddfec0ecf277b8086d922c0b7a55', 6, '0', 'Personal Access Token', '[]', 0, '2020-06-29 08:19:53', '2020-06-29 08:19:53', '2021-06-29 08:19:53');
INSERT INTO `oauth_access_tokens` VALUES ('ed16d9da8bd00d97d050c53043b0c5ea998de1ac3b1c6fb4e3e9b939fa75232bb2fe67156e31ca92', 7, '3', NULL, '[]', 0, '2020-06-29 08:50:49', '2020-06-29 08:50:49', '2021-06-29 08:50:49');
INSERT INTO `oauth_access_tokens` VALUES ('72e32a5b56ad8aebf493b2efbd4cc26ebf1d3c614ec32a55d40be6b078fee4ce80c6add7b56dc313', 7, '3', NULL, '[]', 0, '2020-06-29 08:59:58', '2020-06-29 08:59:58', '2021-06-29 08:59:58');
INSERT INTO `oauth_access_tokens` VALUES ('d518757671a503f0b7e15b6af75affb1538ca876a4a2f544d0c8c851aaa3ab3e0a2d936db49028dc', 1, '3', NULL, '[]', 0, '2020-06-29 09:06:21', '2020-06-29 09:06:21', '2021-06-29 09:06:21');
INSERT INTO `oauth_access_tokens` VALUES ('1641abaa14b337caba325e3a8fbced4b15031a19e8bd541d79ee300ee519e23a8a012e228a66c6fa', 9, '3', NULL, '[]', 0, '2020-06-29 09:14:16', '2020-06-29 09:14:16', '2021-06-29 09:14:16');
INSERT INTO `oauth_access_tokens` VALUES ('8c987cd0a990722ca2ddafab8cc716c6cbb048d3a5a4f8dd6ac2c4b66d3d9e64f3ec0fb82f62cf39', 9, '3', NULL, '[]', 0, '2020-06-29 09:14:53', '2020-06-29 09:14:53', '2021-06-29 09:14:53');
INSERT INTO `oauth_access_tokens` VALUES ('b94144ca222e8a79fdf8d24e38a5e5d66b5bf628ee9efc2b944c1b3c3edbca363019d9a9eb298f19', 9, '3', NULL, '[]', 0, '2020-06-29 09:21:24', '2020-06-29 09:21:24', '2021-06-29 09:21:24');
INSERT INTO `oauth_access_tokens` VALUES ('3703776c90bcaf411fd1134380d372beeebf11fae1e7f31c9b789004231feb594e618bbf44754db6', 9, '3', NULL, '[]', 0, '2020-06-29 09:58:16', '2020-06-29 09:58:16', '2021-06-29 09:58:16');
INSERT INTO `oauth_access_tokens` VALUES ('a6f5bcef8376b1ce3b08ca119efee04915fe55403311c2555b8e0f0b19bfa8c2b7e1a27ddc0c92b0', 9, '3', NULL, '[]', 0, '2020-06-29 09:58:20', '2020-06-29 09:58:20', '2021-06-29 09:58:20');
INSERT INTO `oauth_access_tokens` VALUES ('c75b43922ad7ffe6831d4bf1ab5012944776f986ae3a4659da1f3abb97c89f54fd4babbdc76d84de', 8, '3', NULL, '[]', 0, '2020-06-30 02:35:41', '2020-06-30 02:35:41', '2021-06-30 02:35:41');
INSERT INTO `oauth_access_tokens` VALUES ('7b422f3d76c54be01459b1a94c90a2922fccee75b791179fae058e062c33957224460a8555aa6849', 7, '3', NULL, '[]', 0, '2020-06-30 10:07:47', '2020-06-30 10:07:47', '2021-06-30 10:07:47');
INSERT INTO `oauth_access_tokens` VALUES ('538203ddefdb286406193983a1d2d43153dd0142af4c0e9af5a89b7b92dcd976ad52d4fd40745fb0', 2, '3', NULL, '[]', 0, '2020-07-02 07:37:52', '2020-07-02 07:37:52', '2021-07-02 07:37:52');
INSERT INTO `oauth_access_tokens` VALUES ('e31ec359680ab5852422f81ed24e6756d5c61883505b7e54bd4b54a24e5b716a547d706e5aebfd5d', 2, '0', 'Personal Access Token', '[]', 0, '2020-07-02 07:49:26', '2020-07-02 07:49:26', '2021-07-02 07:49:26');
INSERT INTO `oauth_access_tokens` VALUES ('3420d6003d8c830b656cc49256c848316c4ed662b46837fa4ce76b877f7b910ad9960e554f018bb9', 12, '3', NULL, '[]', 0, '2020-07-02 08:25:59', '2020-07-02 08:25:59', '2021-07-02 08:25:59');
INSERT INTO `oauth_access_tokens` VALUES ('736f8cd8fb8ae1c3cd0aa2bf87f5bda4ada5c6eebf89dd0eb30db23d1ebabb137353de1333022b32', 12, '3', NULL, '[]', 0, '2020-07-02 08:26:45', '2020-07-02 08:26:45', '2021-07-02 08:26:45');
INSERT INTO `oauth_access_tokens` VALUES ('59e7fead9971cb6d6b167d33073d462605e35b646344bb1af41d91408f31bddb47535de59081a64c', 12, '3', NULL, '[]', 0, '2020-07-03 02:26:55', '2020-07-03 02:26:55', '2021-07-03 02:26:55');
INSERT INTO `oauth_access_tokens` VALUES ('e1ebc420818c040d75b9b994f1e70084edf128401a57e63c82e701692cab8b2a7156351ae1a8a390', 13, '0', 'Personal Access Token', '[]', 0, '2020-07-03 02:54:25', '2020-07-03 02:54:25', '2021-07-03 02:54:25');
INSERT INTO `oauth_access_tokens` VALUES ('49eb00de5c29d9f352c99e9e76b836d0c8ab2d5e0cd4ba40679b1252e54c275356cb0d59a8734920', 13, '0', 'Personal Access Token', '[]', 0, '2020-07-03 02:58:35', '2020-07-03 02:58:35', '2021-07-03 02:58:35');
INSERT INTO `oauth_access_tokens` VALUES ('cfc742909ba2f69022327526d673313cf137dc3c54a9cc82cb78a411bb3a43e0bc6ccf5bdadf146b', 13, '0', 'Personal Access Token', '[]', 0, '2020-07-03 03:01:15', '2020-07-03 03:01:15', '2021-07-03 03:01:15');
INSERT INTO `oauth_access_tokens` VALUES ('b79569bbb9ee03bcb270df52cba80786982ef3fe4635b4a099107da3ac30e1be21e9f1c62f307af5', NULL, '0', 'MyApp', '[]', 0, '2020-07-03 03:14:25', '2020-07-03 03:14:25', '2021-07-03 03:14:25');
INSERT INTO `oauth_access_tokens` VALUES ('09b5b19aa592fc8e9426c0ed2af57033bdcd2d029a769264b410d45938cfb5285284cfade8753603', NULL, '0', 'MyApp', '[]', 0, '2020-07-03 03:31:49', '2020-07-03 03:31:49', '2021-07-03 03:31:49');
INSERT INTO `oauth_access_tokens` VALUES ('016b90b2eabef45ce2af9ecafdfe586209e8eaec62b91affa30988de76224eb929f23c137dda6f8f', 16, '0', 'Personal Access Token', '[]', 0, '2020-07-03 03:35:46', '2020-07-03 03:35:46', '2021-07-03 03:35:46');
INSERT INTO `oauth_access_tokens` VALUES ('f260f3645c449de0e32912fcda813fe48d96c0122ef40e304fe118989af2379e04580be0ab1107e1', 16, '0', 'Personal Access Token', '[]', 0, '2020-07-03 03:36:25', '2020-07-03 03:36:25', '2021-07-03 03:36:25');
INSERT INTO `oauth_access_tokens` VALUES ('7d344719a98cf8d66fa43a40a32cc362e75e6f94ec52210a17d6e917039b0b129941e525a16fd052', 17, '3', NULL, '[]', 0, '2020-07-03 04:16:56', '2020-07-03 04:16:56', '2021-07-03 04:16:56');
INSERT INTO `oauth_access_tokens` VALUES ('f1844352e093f8693b8ee7816626ca55f34e167236d83bab08902e77cd0008f13277cf45cd9c2fcf', 17, '3', NULL, '[]', 0, '2020-07-03 04:31:39', '2020-07-03 04:31:39', '2021-07-03 04:31:39');
INSERT INTO `oauth_access_tokens` VALUES ('6e9f494e3937fa962aad3a6799bbf1d3e9a0552a0c457ee9b22733e0264786008de0f282f701fac2', 16, '0', 'Personal Access Token', '[]', 0, '2020-07-03 07:14:48', '2020-07-03 07:14:48', '2021-07-03 07:14:48');
INSERT INTO `oauth_access_tokens` VALUES ('157f2f76d7790a5f34af2523ed0a15214c1ec07b641a2b569d5069ce370eb6577fe7346ebba67252', 16, '0', 'Personal Access Token', '[]', 1, '2020-07-03 07:51:03', '2020-07-03 07:51:03', '2021-07-03 07:51:03');
INSERT INTO `oauth_access_tokens` VALUES ('340ebeef89462e1e0c2d2f52afde517b8536b96ed3286707186d183e07ec5d6df8f61b61464e7819', 16, '0', 'Personal Access Token', '[]', 0, '2020-07-03 07:53:23', '2020-07-03 07:53:23', '2021-07-03 07:53:23');
INSERT INTO `oauth_access_tokens` VALUES ('2af86ef599bdf565fa7984e754dd9db61d08f0e262fbd5d9eca27d703bf5de58c5980e7276f54cc0', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 02:04:59', '2020-07-06 02:04:59', '2021-07-06 02:04:59');
INSERT INTO `oauth_access_tokens` VALUES ('2cc12acb0ed046ecbe7b347bd71fa54cedd0a79a5f23441c2bd3734752c5b71e983810887534e749', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 02:43:01', '2020-07-06 02:43:01', '2021-07-06 02:43:01');
INSERT INTO `oauth_access_tokens` VALUES ('9cc90ac68286ac3f312f21b26e2f1ce1c9cb3677bc95951430c16289c8423c1760a2007dcc877ef3', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 02:47:15', '2020-07-06 02:47:15', '2021-07-06 02:47:15');
INSERT INTO `oauth_access_tokens` VALUES ('f9eb87431076abf46f9560c1f293ba3229c65204087d6c1e07ac5146593897839316ef42212f89c0', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 02:57:02', '2020-07-06 02:57:02', '2021-07-06 02:57:02');
INSERT INTO `oauth_access_tokens` VALUES ('7b5cdf0d192641c25ae48faf562d5510cfeb7cf3a5c891c1520eec1f3d0951c648c305d4c6d62608', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 02:59:00', '2020-07-06 02:59:00', '2021-07-06 02:59:00');
INSERT INTO `oauth_access_tokens` VALUES ('065bdc3c1895648b7a3ed0b2a2bd257039d6595f1f173ca8fd6f59584b6680d014720438e61ed7c4', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 03:16:50', '2020-07-06 03:16:50', '2021-07-06 03:16:50');
INSERT INTO `oauth_access_tokens` VALUES ('241e1987dd185cc0b63d2ae0e3efa8313e229c18e7c5ea2a3119b9b677129a5d04d7e3002b418736', 21, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:17:14', '2020-07-06 03:17:14', '2021-07-06 03:17:14');
INSERT INTO `oauth_access_tokens` VALUES ('b9d4cdb58e16fc492197852e0ca99d7c2e98420933844f36cef63a61f6cafa48a45f2b95e12e4d1c', 12, '3', NULL, '[]', 0, '2020-07-06 03:20:25', '2020-07-06 03:20:25', '2021-07-06 03:20:25');
INSERT INTO `oauth_access_tokens` VALUES ('878dd144ff930fb79619ead02947b1c59139a3e9d38dd2d4e980df8a32149133c44024ae67391a10', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 03:32:50', '2020-07-06 03:32:50', '2021-07-06 03:32:50');
INSERT INTO `oauth_access_tokens` VALUES ('5ee8644d581d47dde289c73dceca4c2e40f2e48785aecfa41ca2a6f1d5c601d3d832ec3d3a9e2ab3', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 03:42:02', '2020-07-06 03:42:02', '2021-07-06 03:42:02');
INSERT INTO `oauth_access_tokens` VALUES ('0cdb1cae8b4efb97a8c7ba631807707c27e15c470243be649e1a1439e91b308257ff6435f0e696c5', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 03:45:06', '2020-07-06 03:45:06', '2021-07-06 03:45:06');
INSERT INTO `oauth_access_tokens` VALUES ('256a22176031f28daa1f53723dfc0b8a4cbd79e7cb6a169bc7f796fcbb6c995c51111a70a49d8554', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:48:08', '2020-07-06 03:48:08', '2021-07-06 03:48:08');
INSERT INTO `oauth_access_tokens` VALUES ('7ec3e4349ecd49feca3db67362d1758dbf1fe037eb65f60c73c31549bf7322e0fa09ce2f71df1876', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:48:55', '2020-07-06 03:48:55', '2021-07-06 03:48:55');
INSERT INTO `oauth_access_tokens` VALUES ('a5035f6c1bdfb37bec679466edc24a5eeefc2bc014e785998d47e48825ea7bd0e693ede4607d29f7', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:50:07', '2020-07-06 03:50:07', '2021-07-06 03:50:07');
INSERT INTO `oauth_access_tokens` VALUES ('103b5eaab540297e9abe15f3ead830886683e2b9e573264200ff66e39b106f96cc6a16fb1b472ae5', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:53:10', '2020-07-06 03:53:10', '2021-07-06 03:53:10');
INSERT INTO `oauth_access_tokens` VALUES ('257214735113f6b12b3f59337d383cfabcee614da0fd5988ea0f7999096f3044de052718636390ab', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:53:19', '2020-07-06 03:53:19', '2021-07-06 03:53:19');
INSERT INTO `oauth_access_tokens` VALUES ('ee8e49bdb8c40fd14173fa6ff396c6dc42270866282842d27878b6aa86b86a39c440b3f07d7f208a', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:56:06', '2020-07-06 03:56:06', '2021-07-06 03:56:06');
INSERT INTO `oauth_access_tokens` VALUES ('f3f57078aa8940f33764baf00756792aae7d5a02e35ac3bd49ef438f451710509f0b0bf45fb2142e', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 03:58:36', '2020-07-06 03:58:36', '2021-07-06 03:58:36');
INSERT INTO `oauth_access_tokens` VALUES ('cb37a5dfcc923c7d74b30bdcfbe2c096d6c983c19ef513900eccc71eadac9af1f7079fd84d168b6d', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 04:00:13', '2020-07-06 04:00:13', '2021-07-06 04:00:13');
INSERT INTO `oauth_access_tokens` VALUES ('45273cd3d9ac7c9f2ca65f115efa63175b1d93c4cd73d2b381e95eb8f2b61263ead0b4e2beea900e', 31, '0', 'Personal Access Token', '[]', 0, '2020-07-06 04:02:25', '2020-07-06 04:02:25', '2021-07-06 04:02:25');
INSERT INTO `oauth_access_tokens` VALUES ('a9d08ef52b5c1d1f38943f0cbd43811d5ead8453e1b2e94d19c05da0f38cdfc8c81a8160e0d6f682', 31, '3', NULL, '[]', 0, '2020-07-06 04:02:38', '2020-07-06 04:02:38', '2021-07-06 04:02:38');
INSERT INTO `oauth_access_tokens` VALUES ('2cda828120381190b942d3e3921eae50a2f99388d3a00f4b607d1ab7b76cf4929f8392c93ea5dff2', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 04:03:42', '2020-07-06 04:03:42', '2021-07-06 04:03:42');
INSERT INTO `oauth_access_tokens` VALUES ('5a43a05373794d0c7e617fe4aa36cd24a46b4792f7d4ab7bfa67830eac79fcbaa1f6c63f6138f288', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 04:07:44', '2020-07-06 04:07:44', '2021-07-06 04:07:44');
INSERT INTO `oauth_access_tokens` VALUES ('c9c13313f29e49cce359f5d857affb7f47c1ae79585a4a9f0af7ccbedff5a675fba1458f09768618', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 04:08:18', '2020-07-06 04:08:18', '2021-07-06 04:08:18');
INSERT INTO `oauth_access_tokens` VALUES ('bba23bb6278aaaa4f351b9e4dbea63f94d0da67747c981868a4602c1abb8f334d778c08d662b1345', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 04:29:48', '2020-07-06 04:29:48', '2021-07-06 04:29:48');
INSERT INTO `oauth_access_tokens` VALUES ('fb0dffeb16911d5948b4213d19eb43864d2feeeed86a0dd667a7cd5c9592a1f3395b7d31c0a87cb2', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 04:29:52', '2020-07-06 04:29:52', '2021-07-06 04:29:52');
INSERT INTO `oauth_access_tokens` VALUES ('ec72b13dc741ef189ee7a5edbf220bb49b384c36f8ee089c9085b9b7d7945da379da60e0bf205c9b', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 07:36:48', '2020-07-06 07:36:48', '2021-07-06 07:36:48');
INSERT INTO `oauth_access_tokens` VALUES ('10976163e6dae61cfbe39432565163def615ab97cff4071e2295edfa590a67582602853276751e6c', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 07:37:13', '2020-07-06 07:37:13', '2021-07-06 07:37:13');
INSERT INTO `oauth_access_tokens` VALUES ('549768a89b0fa896fddc04634809af0b9032bc08eb34fa147285c0704ec038d6d789e988b83cb9c8', 12, '0', 'Personal Access Token', '[]', 0, '2020-07-06 07:49:08', '2020-07-06 07:49:08', '2021-07-06 07:49:08');
INSERT INTO `oauth_access_tokens` VALUES ('eb71e55c93f7b6b5597a96cd1b87de9187e6c53e11ae67b92db8b9c6d20ee0722b5e8700b88a6f1c', 12, '3', NULL, '[]', 0, '2020-07-06 08:16:37', '2020-07-06 08:16:37', '2021-07-06 08:16:37');
INSERT INTO `oauth_access_tokens` VALUES ('f0e30f0576079dab034627ece72226ff1ecbd2cafb8e4c37ce7ed8e81021d470914c8e1e24f7c4e4', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 08:17:13', '2020-07-06 08:17:13', '2021-07-06 08:17:13');
INSERT INTO `oauth_access_tokens` VALUES ('6996c9ba4f7b4c81feb3968f6d6e0ba71e0c8da8046820d102b7fdccf867b43eb8a63048cca72486', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 08:24:30', '2020-07-06 08:24:30', '2021-07-06 08:24:30');
INSERT INTO `oauth_access_tokens` VALUES ('2f25e7b4c6fcd65a5ecbdcdc2ca85558a7614224ac692a93a374ced338c7829ae8ebb2f324d725c3', 34, '0', 'Personal Access Token', '[]', 0, '2020-07-06 08:24:40', '2020-07-06 08:24:40', '2021-07-06 08:24:40');
INSERT INTO `oauth_access_tokens` VALUES ('3f77f75378ee467c45c4371e283250437c29b20fa081fe22f7ce148befaf9b9e1d2bbf0feebff604', NULL, '0', 'MyApp', '[]', 0, '2020-07-06 08:25:03', '2020-07-06 08:25:03', '2021-07-06 08:25:03');
INSERT INTO `oauth_access_tokens` VALUES ('d457295b8e987b9c487ab96b2cde099db860ce3df2ca7781295db95674ec5ec4468a9620638af9d6', 34, '3', NULL, '[]', 0, '2020-07-06 08:25:11', '2020-07-06 08:25:11', '2021-07-06 08:25:11');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------
INSERT INTO `oauth_auth_codes` VALUES ('e0436f9fc258eb045805c82191aa2cd82b92a613154b0f64140727662acde8d2a4bddead8b5ec30f', 2, '3', '[]', 1, '2020-06-29 03:19:13');
INSERT INTO `oauth_auth_codes` VALUES ('91f6bacddc9134053e18c5c348386aded9dee73893b0e373d7c4e74dd44dd05e0b12a315bee7e547', 1, '3', '[]', 1, '2020-06-29 04:56:09');
INSERT INTO `oauth_auth_codes` VALUES ('3d24ab4e62306ccad2bcacd429a32ff53c895d83bd8e3fe169deedc7dad19643fb31cd4ec73364f5', 1, '3', '[]', 1, '2020-06-29 05:20:00');
INSERT INTO `oauth_auth_codes` VALUES ('b64c504460af3b5bb852783a275743e7c191e8e097f14c62fc0626ff2a09a699b4e082b007f114c8', 1, '3', '[]', 1, '2020-06-29 07:12:32');
INSERT INTO `oauth_auth_codes` VALUES ('bc8d6750fa019c05cf128f4006a1314d233238acdb25d6a686d6af2f824c57664a0d59a98737a9cf', 1, '3', '[]', 1, '2020-06-29 07:40:42');
INSERT INTO `oauth_auth_codes` VALUES ('29a117eb52f8ba4f8fb41da45d382eac11e18d0bb35e6ec5aa0a9dc3b8c963400ce668e9de19804b', 3, '3', '[]', 1, '2020-06-29 07:41:40');
INSERT INTO `oauth_auth_codes` VALUES ('9405e8ab69785fd73ae9d674453d087c1c3d8b684a1d519a46275514b81fe27c118b5994a8bffe00', 3, '3', '[]', 1, '2020-06-29 07:42:11');
INSERT INTO `oauth_auth_codes` VALUES ('468e53c855c6a04a04cb75eaec26b3c2b912ed986101ca86912172f436a6dd5611c8dc54fd6299ef', 7, '3', '[]', 1, '2020-06-29 09:00:49');
INSERT INTO `oauth_auth_codes` VALUES ('1246d3b18a64a88139f5792aedd42ff74d9ca222fffe4ddace1ddb06c2dafdffbcea46b411c3409f', 7, '3', '[]', 1, '2020-06-29 09:09:58');
INSERT INTO `oauth_auth_codes` VALUES ('f8a77351264e49bbc999a845a545bbe6155284828cf8db3225c39564c7bd59bca0b63863e1d28f00', 1, '3', '[]', 1, '2020-06-29 09:16:21');
INSERT INTO `oauth_auth_codes` VALUES ('6cd52e0ea45a340061fe55b48032c343cbf6b5ea257cd8353b49b87e9e82229b55b7f37551982ef8', 9, '3', '[]', 1, '2020-06-29 09:24:16');
INSERT INTO `oauth_auth_codes` VALUES ('49c61074e3ed068e4e8ff9a2b9a32dcd77a1568f5c67b59c7f02736a652f5a35da3f771e2c66d6f4', 9, '3', '[]', 1, '2020-06-29 09:24:53');
INSERT INTO `oauth_auth_codes` VALUES ('c0bf6dc8b833e8f0a38ad730b0afa8783fd1e7e6e76f4077349785f4804e97fa4eeee6acb61d4c28', 9, '3', '[]', 1, '2020-06-29 09:31:23');
INSERT INTO `oauth_auth_codes` VALUES ('c168130dde7524fb6c6e87be130899985d9d111f41455ab02530aaeb2b4bfd4578248b09a243557d', 9, '3', '[]', 1, '2020-06-29 10:08:16');
INSERT INTO `oauth_auth_codes` VALUES ('4d7388362682ed0aca6173eda3dcee4513545bb72ebd1e25b0e5a90f2be02035f821d70a3b2e5eac', 9, '3', '[]', 1, '2020-06-29 10:08:20');
INSERT INTO `oauth_auth_codes` VALUES ('1d4e4c1bb053a1156f6d3e2f0e701853136c77f0dd3d387df54f74d938fbf41a5397317984aa51c4', 8, '3', '[]', 1, '2020-06-30 02:45:40');
INSERT INTO `oauth_auth_codes` VALUES ('2d8d6d843dd1a4823aa770cf9d5345c782453e69dea4b1f7e76ac626f7de1c0b937fea77777a2eb3', 7, '3', '[]', 1, '2020-06-30 10:17:47');
INSERT INTO `oauth_auth_codes` VALUES ('97716e584589613c55dfe36e2e48cd5c5ba869e33935fbfe3ca360fa66446f55961e584702e954be', 2, '3', '[]', 1, '2020-07-02 07:47:51');
INSERT INTO `oauth_auth_codes` VALUES ('ddcb2704db4f468329f865aabd1e47933d2f783a9f2e2cd4d9677a5674a3ec96226f6935883e3c5a', 12, '3', '[]', 1, '2020-07-02 08:35:59');
INSERT INTO `oauth_auth_codes` VALUES ('852200db5b75484954119cde63ee4a815f46b794010d2dc9f14e3cb43d05d0a865de667ae975c620', 12, '3', '[]', 1, '2020-07-02 08:36:45');
INSERT INTO `oauth_auth_codes` VALUES ('213dd500924c467b76248c588e31c1c860b11a52945034787afba32460115dd5d674ea9d725b2ca8', 12, '3', '[]', 1, '2020-07-03 02:36:54');
INSERT INTO `oauth_auth_codes` VALUES ('93bbdd16d0620b0325ebc079327c5122716b450496c559792f399eb86dad5ae9ee7302b9e143c11e', 17, '3', '[]', 1, '2020-07-03 04:26:55');
INSERT INTO `oauth_auth_codes` VALUES ('550b99c1a2afb442cfc8198d685e038124dfcf4c9b403bb112891302f188f7c1040f74eb9b2fbb54', 17, '3', '[]', 1, '2020-07-03 04:41:39');
INSERT INTO `oauth_auth_codes` VALUES ('bc7e2c5049ce3816a2ba30c59e9995433e9798f6072f2d9d947b32dac18b034e1d7919f1795a31de', 12, '3', '[]', 1, '2020-07-06 03:30:24');
INSERT INTO `oauth_auth_codes` VALUES ('49d0a60f6cd8ea096a60ce978c0ddf3c72803f8f8487c9fe7fa5d0c282982b997034302e2f9aa692', 31, '3', '[]', 1, '2020-07-06 04:12:38');
INSERT INTO `oauth_auth_codes` VALUES ('4a42dcf80c006a697e5fe1ef75cb55f38661bb1a88d151cfd37b7843c77b7b1afb2cc569b01c8e10', 12, '3', '[]', 1, '2020-07-06 08:26:36');
INSERT INTO `oauth_auth_codes` VALUES ('25f65b5587a9ce4e5ee9356324d7868077b87c1924d8746624f365c0a6d8946f5341cb67d73558c2', 34, '3', '[]', 1, '2020-07-06 08:35:11');

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `oauth_clients_user_id_index`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('2', 1, 'Manga', 'tj4yx2XzCUFh0DP48EEONysv5LUXvxoRywO2MQXf', NULL, 'http://id.mangaplay.com/callback', 0, 0, 0, '2020-06-29 03:07:12', '2020-06-29 03:07:12');
INSERT INTO `oauth_clients` VALUES ('2', 2, 'Play', 'TfiCjhvwFhB8acOdy0R6hztLCkL4D02R5TloukHi', NULL, 'http://id.mangaplay.com/callback', 0, 0, 0, '2020-06-29 03:08:03', '2020-06-29 03:08:03');
INSERT INTO `oauth_clients` VALUES ('2', 3, 'Id', 'trdbjMV5jWgH8cgINUPhur0EjLyV2vyE9vDByRwt', NULL, 'http://id.mangaplay.com/callback', 0, 0, 0, '2020-06-29 03:08:26', '2020-06-29 03:08:26');
INSERT INTO `oauth_clients` VALUES ('1', 4, 'id', 'seXEdaPnlsizXGR0O5wYHohmryd681g40RJM18sY', NULL, 'http://id.mangaplay.com/callback', 0, 0, 0, '2020-06-29 03:14:07', '2020-06-29 03:14:07');
INSERT INTO `oauth_clients` VALUES (NULL, 5, 'Laravel Personal Access Client', 'QGrTBSzYqlssNXoZeEYUbvEcMqkcil4Zk1tZAh2z', NULL, 'http://localhost', 1, 0, 0, '2020-06-29 03:17:33', '2020-06-29 03:17:33');
INSERT INTO `oauth_clients` VALUES (NULL, 6, 'Laravel Password Grant Client', 'eoi5zVFPphjDGtW0D4q9XKW3qKnZomIJwuvfGgjT', NULL, 'http://localhost', 0, 1, 0, '2020-06-29 03:17:33', '2020-06-29 03:17:33');
INSERT INTO `oauth_clients` VALUES ('34', 7, 'Test', 'xOcb0pJz45bzzU9ZfDmiofnWoseJU5skINxWlLcZ', NULL, 'http://id.mangaplay.com/callback', 0, 0, 0, '2020-07-06 08:33:38', '2020-07-06 08:33:38');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, '0', '2020-06-29 03:17:33', '2020-06-29 03:17:33');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
INSERT INTO `oauth_refresh_tokens` VALUES ('fdf3382aaf5470ca17a4ac75a97425f94d9b2eec2a702a9a43296e7e1b1675883ed3510c4f5e7181', '95ae878cff3cec89665f3ec3882be30d79e58116c9fc2f60daa91bffc6067761ebfeb7e9c44da6ee', 0, '2021-06-29 03:09:13');
INSERT INTO `oauth_refresh_tokens` VALUES ('c595a21f9bb0057c86737f10af4a0f15c8d1e0c7a6fd81a2341a9b745628d31646adaf97c5c4171f', '8cc01bed67e5d1e7b8726478081217ccc602e7c89145baf6ead36e513e07efe48684cf45b27b18cf', 0, '2021-06-29 04:46:09');
INSERT INTO `oauth_refresh_tokens` VALUES ('6b8bf45c7180fbfcb44b76dcddca10d520ec96ad7c12925c2a8a9824189c88228c279ab1562fdafe', '8eafb2b1be64a498e953995ccc9cf08da30e817519c8e10346e173205ebfd7c662ee39ef21cf5093', 0, '2021-06-29 05:10:00');
INSERT INTO `oauth_refresh_tokens` VALUES ('ca92cd57d902f33eac464b8859aecf4df6d0be37291ad5cdb690b8c8ee4aa7452663410e07b2e5ec', '8d8cadc40aee13f2e774fe117cd9444cd46624a52680ee84c36d149c4f4a6da0e078ed64cc759bca', 0, '2021-06-29 07:02:33');
INSERT INTO `oauth_refresh_tokens` VALUES ('9f668b576fe78066fb2fb42120f9cba8d8e2bb27e6bb722836fbaf2a1f225ad5e0970ead90c3d06e', '7077f6972fcd81674151e1d2ad94edd01f31c1a02147dfc608e4201f6aa3c3a046dd134bbd8acf79', 0, '2021-06-29 07:30:43');
INSERT INTO `oauth_refresh_tokens` VALUES ('bf23ca484fe24ff4254dec824ae18349555a91b25e0185b783f495a7bae3991252550d8d96a6ab64', '38dc67fd6fca279034159c5a46079d00b651e1a9baa2a7c7c764b9a9e63f830285449851f343e5ea', 0, '2021-06-29 07:31:40');
INSERT INTO `oauth_refresh_tokens` VALUES ('d799c1f2286af1242e647c2bbc88e4aa29faf7952331a7d1ee4844f94a437bf256daff4aafd496a7', 'e87d8c133114d6c8d0e5515356bd19ad98f8dea25bc5091060c5818e58eabd8707843a04fccd205d', 0, '2021-06-29 07:32:11');
INSERT INTO `oauth_refresh_tokens` VALUES ('3737c8e5cbb8ea0fd7bc8e3acd4cff8b8b0b7c56d0f6da3d374a68435cfba0e1847437c1f193746c', 'ed16d9da8bd00d97d050c53043b0c5ea998de1ac3b1c6fb4e3e9b939fa75232bb2fe67156e31ca92', 0, '2021-06-29 08:50:49');
INSERT INTO `oauth_refresh_tokens` VALUES ('656a8849504c9f81a29178133a6dca908a48b889f695b0ba6fb35a0da504569e18ddecfad4619759', '72e32a5b56ad8aebf493b2efbd4cc26ebf1d3c614ec32a55d40be6b078fee4ce80c6add7b56dc313', 0, '2021-06-29 08:59:58');
INSERT INTO `oauth_refresh_tokens` VALUES ('9a9f0628d57311257bf5514c4710cd960a78b57023bd4d9b45d40cd132154d999265f7e19ab4ad44', 'd518757671a503f0b7e15b6af75affb1538ca876a4a2f544d0c8c851aaa3ab3e0a2d936db49028dc', 0, '2021-06-29 09:06:21');
INSERT INTO `oauth_refresh_tokens` VALUES ('10abebc2c26d31dd4f779b3ba416ac4fb9b6cedd4771bbcedca558df7af132b814b9a539f5b0de50', '1641abaa14b337caba325e3a8fbced4b15031a19e8bd541d79ee300ee519e23a8a012e228a66c6fa', 0, '2021-06-29 09:14:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('744e3807a7b7acdbb832ef51c73ea42f94af3c97ad3be541e09ce854f29a93bf9fab215e011dde56', '8c987cd0a990722ca2ddafab8cc716c6cbb048d3a5a4f8dd6ac2c4b66d3d9e64f3ec0fb82f62cf39', 0, '2021-06-29 09:14:53');
INSERT INTO `oauth_refresh_tokens` VALUES ('3c2566bc3dcc3ee148a84f510226596fc0fac1650b97d6fa386f971de1471922dc4fc3506939b5fd', 'b94144ca222e8a79fdf8d24e38a5e5d66b5bf628ee9efc2b944c1b3c3edbca363019d9a9eb298f19', 0, '2021-06-29 09:21:24');
INSERT INTO `oauth_refresh_tokens` VALUES ('e27a9eef580e7836f68addade7dba245c1cdd6e8d01d8848e20d78b4acfef57f4cd09a6ab3d90e59', '3703776c90bcaf411fd1134380d372beeebf11fae1e7f31c9b789004231feb594e618bbf44754db6', 0, '2021-06-29 09:58:16');
INSERT INTO `oauth_refresh_tokens` VALUES ('3645bf8e87866495d055bfb01ea99816bf989959cf663593ec893d78e3e2aecc97022f3147fe30ad', 'a6f5bcef8376b1ce3b08ca119efee04915fe55403311c2555b8e0f0b19bfa8c2b7e1a27ddc0c92b0', 0, '2021-06-29 09:58:20');
INSERT INTO `oauth_refresh_tokens` VALUES ('c61fca09430f8f87327bb8e0a812170aa355731bf02378d271c2a4dd7811b1bf25abead452b00af7', 'c75b43922ad7ffe6831d4bf1ab5012944776f986ae3a4659da1f3abb97c89f54fd4babbdc76d84de', 0, '2021-06-30 02:35:41');
INSERT INTO `oauth_refresh_tokens` VALUES ('19721fd2ade006b60b4e8c25af337b4a843f67efb6cd77604e804f5faf0fd7a3a7aa923de9bf855a', '7b422f3d76c54be01459b1a94c90a2922fccee75b791179fae058e062c33957224460a8555aa6849', 0, '2021-06-30 10:07:47');
INSERT INTO `oauth_refresh_tokens` VALUES ('699e6b63ebce0dade3003e669084a6494c1624bbc9f18d7feed5c3e6fe72516fd49f313ef316800c', '538203ddefdb286406193983a1d2d43153dd0142af4c0e9af5a89b7b92dcd976ad52d4fd40745fb0', 0, '2021-07-02 07:37:52');
INSERT INTO `oauth_refresh_tokens` VALUES ('ccdc4ab5dddfe1858930d30e2ca90bef33199288df7c88a48df0e7eaf1ed7e1f949cbaafaf4ed6c9', '3420d6003d8c830b656cc49256c848316c4ed662b46837fa4ce76b877f7b910ad9960e554f018bb9', 0, '2021-07-02 08:25:59');
INSERT INTO `oauth_refresh_tokens` VALUES ('b1f7d5863ee44c504798861420b13fe068885a4074c8ffa4513af4b3ad3cf9bce6ba6a3c677b14b7', '736f8cd8fb8ae1c3cd0aa2bf87f5bda4ada5c6eebf89dd0eb30db23d1ebabb137353de1333022b32', 0, '2021-07-02 08:26:45');
INSERT INTO `oauth_refresh_tokens` VALUES ('bf25a5f100cbff664428c559ab60824cb92c00d52d5ddb94d54d344ded4b3357467757233a6ef013', '59e7fead9971cb6d6b167d33073d462605e35b646344bb1af41d91408f31bddb47535de59081a64c', 0, '2021-07-03 02:26:55');
INSERT INTO `oauth_refresh_tokens` VALUES ('9fca749641092b78bc48347b33acaff2d4bc27efdc11a76d44e51f80665f882fe4dad09cd53e9dfb', '7d344719a98cf8d66fa43a40a32cc362e75e6f94ec52210a17d6e917039b0b129941e525a16fd052', 0, '2021-07-03 04:16:56');
INSERT INTO `oauth_refresh_tokens` VALUES ('79baab24059440abece2010336108f2db9268aaedee74fb508dfaf732ff04797d746726d52268476', 'f1844352e093f8693b8ee7816626ca55f34e167236d83bab08902e77cd0008f13277cf45cd9c2fcf', 0, '2021-07-03 04:31:39');
INSERT INTO `oauth_refresh_tokens` VALUES ('477f3454567356987e9e7cfd37d7d7ac6dc7d03168ea437e157819985c7dfbda93e1e62ba3e741eb', 'b9d4cdb58e16fc492197852e0ca99d7c2e98420933844f36cef63a61f6cafa48a45f2b95e12e4d1c', 0, '2021-07-06 03:20:25');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b3e8407fa9cb04880774be4861e3701ff565c514eca343755be7efea185b3b1c4b92ceafad6e106', 'a9d08ef52b5c1d1f38943f0cbd43811d5ead8453e1b2e94d19c05da0f38cdfc8c81a8160e0d6f682', 0, '2021-07-06 04:02:38');
INSERT INTO `oauth_refresh_tokens` VALUES ('373b23002abe8ee32af368dfd1822d86eec98d4f74065324b4361af14618986e663925ea4b497e21', 'eb71e55c93f7b6b5597a96cd1b87de9187e6c53e11ae67b92db8b9c6d20ee0722b5e8700b88a6f1c', 0, '2021-07-06 08:16:37');
INSERT INTO `oauth_refresh_tokens` VALUES ('08ab88018746963bf5c15eaf6e0cb6ba72a2a490d622be1f33132178f80b8c49714a8ba22a2af2c5', 'd457295b8e987b9c487ab96b2cde099db860ce3df2ca7781295db95674ec5ec4468a9620638af9d6', 0, '2021-07-06 08:25:11');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (34, 'Nguyen Phuoc Trung', 'phuoctrung998@gmail.com', NULL, '$2y$10$XWyGvqMy44aD8Pb9OQurueS8YQEUuD7HtfovosOyrFe749emD5Qx.', NULL, '2020-07-06 08:24:30', '2020-07-06 08:24:30');
INSERT INTO `users` VALUES (35, 'Trung Nguyen', 'phuoctrung1998@gmail.com', NULL, '$2y$10$jmZ1e4zU0DCntUJWBROjNu.mtvb0YSG5E5xEHVtuurzeRFgvl/ub6', NULL, '2020-07-06 08:25:03', '2020-07-06 08:25:03');

SET FOREIGN_KEY_CHECKS = 1;
