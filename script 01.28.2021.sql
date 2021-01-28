--Department dropdown
create table Z_Department(
	DeptCode nvarchar(2) NOT NULL,
	DeptDesc nvarchar(200),
	DeptOrder int,
	CONSTRAINT Z_Department_pk PRIMARY KEY (DeptCode)
)
insert into Z_Department values('00','--Please Select a Department--',0)
insert into Z_Department values('01','Anatomy and Structural Biology',1)
insert into Z_Department values('02','Anesthesiology',2)
insert into Z_Department values('03','Biochemistry',3)
insert into Z_Department values('04','Cardiothoracic & Vascular Surgery',4)
insert into Z_Department values('05','Cell Biology',5)
insert into Z_Department values('06','D. Samuel Gottesman Library',12)
insert into Z_Department values('07','Dentistry',6)
insert into Z_Department values('08','Developmental and Molecular Biology',7)
insert into Z_Department values('09','Dominick P. Purpura Department of Neuroscience',18)
insert into Z_Department values('10','Emergency Medicine',8)
insert into Z_Department values('11','Epidemiology & Population Health',9)
insert into Z_Department values('12','Family and Social Medicine',10)
insert into Z_Department values('13','Genetics',11)
insert into Z_Department values('14','Leo M. Davidoff Department of Neurological Surgery',16)
insert into Z_Department values('15','Medicine',13)
insert into Z_Department values('16','Microbiology & Immunology',14)
insert into Z_Department values('17','Molecular Pharmacology',15)
insert into Z_Department values('18','Obstetrics & Gynecology and Womens Health',19)
insert into Z_Department values('19','Ophthalmology and Visual Sciences',20)
insert into Z_Department values('20','Orthopaedic Surgery',21)
insert into Z_Department values('21','Otorhinolaryngology - Head & Neck Surgery',22)
insert into Z_Department values('22','Pathology',23)
insert into Z_Department values('23','Pediatrics',24)
insert into Z_Department values('24','Physiology & Biophysics',25)
insert into Z_Department values('25','Psychiatry and Behavioral Sciences',26)
insert into Z_Department values('26','Radiation Oncology',27)
insert into Z_Department values('27','Surgery',29)
insert into Z_Department values('28','Systems & Computational Biology',30)
insert into Z_Department values('29','The Arthur S. Abramson Department of Rehabilitation Medicine',28)
insert into Z_Department values('30','The Saul R. Korey Department of Neurology',17)
insert into Z_Department values('31','Urology',31)
insert into Z_Department values('97','None',98)
insert into Z_Department values('98','Other',97)

--Division dropdown
create table Z_Division(
	DivCode nvarchar(3) NOT NULL,
	DeptCode nvarchar(2),
	DivDesc nvarchar(200),
	DivOrder int,
	CONSTRAINT Z_Division_pk PRIMARY KEY (DivCode)
)
insert into Z_Division values('000','00','--Please Select Division--',0);
insert into Z_Division values('001','11','Biomedical and Bioethics Research Training',1);
insert into Z_Division values('002','11','Biostatistics',2);
insert into Z_Division values('003','11','Epidemiology',3);
insert into Z_Division values('004','11','Health Behavior Research & Implementation Science',4);
insert into Z_Division values('005','15','Allergy and Immunology',1);
insert into Z_Division values('006','15','Cardiology',2);
insert into Z_Division values('007','15','Critical Care Medicine',3);
insert into Z_Division values('008','15','Dermatology',4);
insert into Z_Division values('009','15','Endocrinology',5);
insert into Z_Division values('010','15','Gastroenterology',6);
insert into Z_Division values('011','15','General Internal Medicine',7);
insert into Z_Division values('012','15','Geriatrics',8);
insert into Z_Division values('013','15','Hematology',9);
insert into Z_Division values('014','15','Hepatology',10);
insert into Z_Division values('015','15','Hospital Medicine',11);
insert into Z_Division values('016','15','Infectious Diseases',12);
insert into Z_Division values('017','15','Nephrology',13);
insert into Z_Division values('018','15','Oncology',14);
insert into Z_Division values('019','15','Pulmonary Medicine',15);
insert into Z_Division values('020','15','Rheumatology',16);
insert into Z_Division values('021','23','Academic General Pediatrics',1);
insert into Z_Division values('022','23','Adolescent Medicine',2);
insert into Z_Division values('023','23','Allergy and Immunology',3);
insert into Z_Division values('024','23','Cardiology',4);
insert into Z_Division values('025','23','Critical Care Medicine',5);
insert into Z_Division values('026','23','Developmental Medicine',6);
insert into Z_Division values('027','23','Neonatology',7);
insert into Z_Division values('028','23','Emergency Medicine',8);
insert into Z_Division values('029','23','Endocrinology and Diabetes',9);
insert into Z_Division values('030','23','Gastroenterology and Nutrition',10);
insert into Z_Division values('031','23','Genetic Medicine',11);
insert into Z_Division values('032','23','Hematology/Oncology',12);
insert into Z_Division values('033','23','Hospital Medicine',13);
insert into Z_Division values('034','23','Infectious Diseases',14);
insert into Z_Division values('035','23','Nephrology',15);
insert into Z_Division values('036','23','Respiratory and Sleep Medicine',16);
insert into Z_Division values('037','23','Rheumatology',17);
insert into Z_Division values('997','97','None',997);

--Table TransactionInfo
create table TransactionInfo(
	TransactionID int identity(10000000,1),
	RequestNo nvarchar(50), --from Form
	Amount  nvarchar(50), --from Form
	Department nvarchar(10), --save the code
	Division nvarchar(10), --save the code
	PayeeName nvarchar(300), --from Form
	Electronics nvarchar(10), --Yes/No
	Meals nvarchar(10), --Yes/No
	SpecFund nvarchar(10), --Yes/No
	Speaker nvarchar(10), --Yes/No
	OriginalForm nvarchar(100), --File name for Original form
	SupportingDocs nvarchar(100), --File name for Supporting Document
	SpeakerForm nvarchar(100), --File name for Upload Speaker Form
	DocLocation nvarchar(500), --URL where the file is saved
	Comments nvarchar(max),
	CONSTRAINT TransactionInfo_pk PRIMARY KEY (TransactionID)
)
