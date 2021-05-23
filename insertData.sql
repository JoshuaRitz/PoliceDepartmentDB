INSERT INTO DEPARTMENT VALUES('D001', '123 Peachtree Rd, Atlanta GA 30306', '1112223334', 'Atlanta', 'F');
INSERT INTO DEPARTMENT VALUES('D002', '9976 Pleasant Hill Rd, Duluth, GA 30096', '1113332224', 'Gwinnett', 'S');
INSERT INTO DEPARTMENT VALUES('D003', '543 Riverdale Road, Atlanta, GA 30349', '1122334455', 'Fulton', 'F');


INSERT INTO OFFICERS VALUES('O001', 'James Bond', '1985-07-23', '111111111', '1111234567', '123 Home Street, Decatur, GA 30033', 'Captain', '1', 'A good cop', '195000','D001');
INSERT INTO OFFICERS VALUES('O002', 'Joe Mama', '1905-08-22', '222222222', '1234567891', '124 Park Street, Decatur, GA 30033', 'Private', '2', 'A great cop', '100000','D001');
INSERT INTO OFFICERS VALUES('O003', 'Elliot Stabler', '1999-01-05', '333333333', '1234567892', '1255 Name Street, Decatur, GA 30033', 'Detective', '2', 'A decent cop', '150000','D001');
INSERT INTO OFFICERS VALUES('O004', 'George Man', '1991-02-14', '444444444', '1234567893', '1266 George Way, Decatur, GA 30033', 'Corporal', '3', 'A good cop', '75000','D002');
INSERT INTO OFFICERS VALUES('O005', 'Stacy Abrhams', '1992-03-23', '555555555', '1234567894', '989 Peachtree Stree, Atlanta, GA 30303', 'Sergeant', '1', 'A bad cop, lots of complaints', '65000','D002');
INSERT INTO OFFICERS VALUES('O006', 'Joe Biden', '1995-07-23', '666666666', '1234567895', '456 Piedmont Road, Atlanta, GA 30339', 'Private', '3', 'A terrible cop', '78000','D002');
INSERT INTO OFFICERS VALUES('O007', 'Donald Trump', '1955-12-25', '777777777', '1234567896', '956 Lawrenceville Hwy, Tucker, GA 30084', 'Detective', '2', 'A great cop', '125000','D003');
INSERT INTO OFFICERS VALUES('O008', 'Bart Simposon', '1985-07-23', '888888888', '1234567897', '375 Club Drive, Norcorss, GA 30092', 'Sergeant', '2', 'A dumb cop', '55000','D003');
INSERT INTO OFFICERS VALUES('O009', 'Celine Dion', '1985-07-23', '999999999', '1234567898', '676 Ward Way, Alpharetta, GA 30066', 'Private', '3', 'A well liked cop', '68000','D003');
INSERT INTO OFFICERS VALUES('O010', 'Mike Hunt', '1985-07-23', '123456789', '1234567899', '555 High Drive, Jonesboro, GA 30236', 'Master Chief', '1', 'A decent cop', '175000','D003');

INSERT INTO EQUIPMENT VALUES('E001', 'Mosberg Shotgun', 'Gun', 'O', 'D001', 'O001');
INSERT INTO EQUIPMENT VALUES('E002', 'Glock 9mm', 'Gun', 'O', 'D001', 'O002');
INSERT INTO EQUIPMENT VALUES('E003', 'Glock 9mm', 'Gun', 'O', 'D001', 'O003');
INSERT INTO EQUIPMENT VALUES('E004', 'S&W Rifle', 'Gun', 'O', 'D003', 'O010');
INSERT INTO EQUIPMENT VALUES('E005', 'Black & yellow', 'Taser', 'O', 'D001', 'O001');

INSERT INTO VEHICLES VALUES('V001', 'AWER7674ADSF7', 'Car', 'ABC123', 'I', 'Black', 'D001', null);
INSERT INTO VEHICLES VALUES('V002', 'TYYER774ADSF7', 'Truck', 'BCD456', 'I', 'Black', 'D001', null);
INSERT INTO VEHICLES VALUES('V003', 'ASDF9876SAF92', 'Horse', 'EFG789', 'O', 'Black', 'D001', 'O010');
INSERT INTO VEHICLES VALUES('V004', 'JHGF986HD5689', 'SUV', 'HIJ444', 'I', 'Black', 'D002', null);
INSERT INTO VEHICLES VALUES('V005', 'ILH24L4LK2G44', 'Van', 'PLJ222', 'I', 'Black', 'D003', null);
INSERT INTO VEHICLES VALUES('V006', 'OEJ249L3N4O3D', 'Helicopter', 'HJJ677', 'O', 'Black', 'D003', 'O001');

INSERT INTO EVIDENCE VALUES('EV001', 'Thumb drive CCTV footage', '1', 'C001', 'D003');
INSERT INTO EVIDENCE VALUES('EV002', 'Murder weapon: Gun', '1', 'C002', 'D001');
INSERT INTO EVIDENCE VALUES('EV003', 'The Duck', '1', 'C003', 'D003');
INSERT INTO EVIDENCE VALUES('EV004', 'The knife', '1', 'C004', 'D001');
INSERT INTO EVIDENCE VALUES('EV005', 'Pounds of cocaine', '15', 'C005', 'D001');
INSERT INTO EVIDENCE VALUES('EV006', 'Twenty dollar bills with dye', '10000', 'C006','D001');

INSERT INTO SUSPECTS VALUES('S001', 'Jack Frost', 'Pookie', 'Robbery', null, 'Tall & ugly', null, 'O007', 'C001', 'D003');
INSERT INTO SUSPECTS VALUES('S002', 'Joe Blow', 'Reaper', 'Murder', null, 'Scary lookin', null, 'O001', 'C002', 'D001');
INSERT INTO SUSPECTS VALUES('S003', 'Jamie Duncan', 'Sir Robsalot', 'Robbery', null, 'Kinda fat', null, 'O010', 'C003', 'D003');
INSERT INTO SUSPECTS VALUES('S004', null, 'Ghost', 'Murder', null, 'unknown', null, 'O002', 'C004', 'D001');
INSERT INTO SUSPECTS VALUES('S005', 'Jack Goff', 'Sir sniffsalot', 'Posession of controlled substance', null, 'Runny nose', 'Mr. Snuffleupagus', 'O003', 'C005', 'D001');
INSERT INTO SUSPECTS VALUES('S006', 'Betsy ROss', 'Gma', 'Robbery', null, 'Kinda feminine', null, 'O002', 'C006', 'D001');

INSERT INTO CASES VALUES('C001', 'Robbery', 'Stole a lot of money', 'C', 'O007', 'EV001', 'S001', 'D003');
INSERT INTO CASES VALUES('C002', 'Murder', 'Killed his mother', 'C', 'O001', 'EV002', 'S002', 'D001');
INSERT INTO CASES VALUES('C003', 'Robbery', 'Stole a duck', 'C', 'O010', 'EV003', 'S003', 'D003');
INSERT INTO CASES VALUES('C004', 'Murder', 'Killed an old lady', 'O', 'O002', 'EV004', 'S004', 'D001');
INSERT INTO CASES VALUES('C005', 'Possession of Cocain', 'Had a lot of coke', 'C', 'O003', 'EV005', 'S005', 'D001');
INSERT INTO CASES VALUES('C006', 'Robbery', 'Robbed a bank', 'C', 'O002', 'EV006', 'S006', 'D001');

