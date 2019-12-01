use bank;
select * from loan,borrower;

select * from loan join borrower on loan.loan_number=borrower.loan_number; #Inner Join

select * from loan left join borrower on loan.loan_number=borrower.loan_number; #Left Outer

insert into borrower values("Erdem2","L-38");

select * from loan right join borrower on loan.loan_number=borrower.loan_number; #Right Outer


(select loan.loan_number,customer_name from loan left join borrower on loan.loan_number=borrower.loan_number) #Left Outer
union
(select loan.loan_number,customer_name from loan right join borrower on loan.loan_number=borrower.loan_number); #Full Outer
