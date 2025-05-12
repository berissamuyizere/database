create schema Child_vaccination;


CREATE TABLE Child_vaccination.child(
    child_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    date_of_birth DATE NOT NULL
)
insert into Child_vaccination.child(child_id, name, date_of_birth)values
('A01','Jane', '2025-01-01'),
('A02','James', '2024-02-06'),
('A03','Janet', '2025-03-04')

SELECT * FROM Child_vaccination.child;

DROP TABLE Child_vaccination.child;

create table Child_vaccination.parent(
parent_id  SERIAL primary key,
child_id VARCHAR(10) not null,
name VARCHAR(10),
phone_number VARCHAR(10),
CONSTRAINT fk_child
    FOREIGN KEY(child_id)
    REFERENCES Child_vaccination.child(child_id)
)

DROP TABLE Child_vaccination.parent;


insert into Child_vaccination.parent(child_id, name, phone_number)values
('A01','Jane', '078347414'),
('A02','James', '078347419'),
('A03','Janet', '078347417')

select * from Child_vaccination.parent;
