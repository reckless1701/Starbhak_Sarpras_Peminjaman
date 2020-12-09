TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `pengembalian` AFTER INSERT ON `pengembalians` FOR EACH ROW BEGIN\nUPDATE barangs SET\nstok = stok + 1\nWHERE id = NEW.id;\nUPDATE barangs SET\nstatus = "Tersedia"\nWHERE stok >=1\nAND\nid = NEW.id;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `pengembalians2` AFTER INSERT ON `pengembalians` FOR EACH ROW BEGIN\nUPDATE pinjams SET\nstatus = "Di kembalikan"\nWHERE id = NEW.id_pinjam\nAND\nid = NEW.id_pinjam;\nEND'
sql_modes=524288 524288
definers='root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
created=160751586636 160751586656
