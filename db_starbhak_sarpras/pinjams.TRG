TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `peminjaman` BEFORE INSERT ON `pinjams` FOR EACH ROW BEGIN
sql_modes=524288
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
created=160751587053