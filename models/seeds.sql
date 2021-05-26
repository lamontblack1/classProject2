USE flcceDB;

INSERT INTO forMonths(shortMonth, longMonth, createdAt, updatedAt)
VALUES
("Jan","January", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Feb","February", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Mar","March", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Apr","April", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("May","May", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Jun","June", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Jul","July", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Aug","August", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Sep","September", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Oct","October", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Nov","November", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Dec","December", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

INSERT INTO depts(dept, createdAt, updatedAt)
VALUES
("Income", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Administrative", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Utilities", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Grounds", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Maintenance", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Pool/Rec", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Reserves Fund", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
("Other", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

INSERT INTO subDepts(deptId, subDept, createdAt, updatedAt)
VALUES
(1,"Maintenance Fees", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(1,"Reserve Income", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(1,"Laundry Income", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(1,"Checking Interest", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(1,"Late Charges", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(1,"Special Assessments", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(1,"Other", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Accounting Fees", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Property Insurance", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Legal Fees", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Corp Fees", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Licenses", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"State Filing Fee", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Management Fee", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Postage/Printing", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Bad Debt", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(2,"Other", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(3,"Cable TV", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(3,"Electricity", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(3,"Water/Sewer", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(3,"Laundry Expense", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(3,"Other", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(4, "Lawn Service", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(4, "Lawn Supplies/Plants", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(4, "Irrigation", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(4, "Tree Trimming", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(4, "Other", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(5, "Bldg Repairs/Materials", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(5, "Plumbing", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(5, "Pest Control", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(5, "Other", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(6, "Pool Contract", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(6, "Pool Repairs", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(6, "Rec Cleaning", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(6, "Other", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
(7, "Reserve Expense", CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

INSERT INTO residents(unitNo, ownerLastName, ownerFirstName, createdAt, updatedAt)
VALUES
('2501-1', 'Salvatore', 'Michael', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2501-2', 'Sharp', 'Denise', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2501-3', 'Amato', 'Angelo', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2501-4', 'Szabad', 'Dolores', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2501-5', 'Grogan', 'Gerry', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2501-6', 'Criggar', 'Clark', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2501-7', 'Ploudre', 'Guy-Anne', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2501-8', 'Black', 'James Marcus', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-1', 'Loria', 'Vincent', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-2', 'DiSammartino', 'Nicole', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-3', 'Kellicut', 'Lynn', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-4', 'Black', 'Arthur, Estate Of', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-5', 'Worley', 'Charley', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-6', 'Bobbitt', 'Sharon', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-7', 'Camacho', 'Maria', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-8', 'Jackson', 'Heather', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-9', 'Cox', 'Thomas', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2503-10', 'Lavy', 'Paul', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-1', 'Reardon', 'James', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-2', 'Bank Owned', '', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-3', 'Jackson', 'Michael', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-4', 'Black', 'Lamont', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-5', 'Bell', 'Sally', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-6', 'Madden', 'Irene', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-7', 'Schexnaydre', 'Cathleen', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2505-8', 'Pender', 'Judith', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-1', 'Lopaki', 'Sebastian', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-2', 'Nielson', 'Eric', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-3', 'Host', 'Katie', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-4', 'Henderson', 'Laura Kay', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-5', 'Bernard', 'Barbara', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-6', 'Simon', 'Stephen', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-7', 'Osborne', 'Michelle', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-8', 'Scott', 'Stephen', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-9', 'Lambert', 'Gail, Estate Of', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
('2507-10', 'Silverstein', 'Roslyn', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

