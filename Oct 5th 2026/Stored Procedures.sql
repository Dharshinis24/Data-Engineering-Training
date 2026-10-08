CREATE DATABASE banking_db;
USE banking_db;
CREATE TABLE accounts (
account_id INT PRIMARY KEY,
customer_name VARCHAR(100),
account_type VARCHAR(30),
balance DECIMAL(10,2),
city VARCHAR(50)
);
INSERT INTO accounts VALUES
(101, 'Arun Kumar', 'Savings', 45000, 'Hyderabad'),
(102, 'Meera Shah', 'Current', 85000, 'Mumbai'),
(103, 'Ravi Reddy', 'Savings', 32000, 'Hyderabad'),
(104, 'Priya Nair', 'Savings', 67000, 'Bangalore'),
(105, 'Sameer Khan', 'Current', 120000, 'Pune'),
(106, 'Neha Gupta', 'Savings', 28000, 'Delhi'),
(107, 'Vikram Rao', 'Current', 95000, 'Hyderabad'),
(108, 'Anjali Singh', 'Savings', 54000, 'Mumbai');

select * from accounts;

delimiter //
create procedure GetAllAccounts()
begin 
	select * from accounts;
end//
delimiter ;

call GetAllAccounts();

delimiter //
create procedure GetSavingsAccounts()
begin 
	select * from accounts
    where account_type = 'Savings';
end//
delimiter ;

call GetSavingsAccounts();

delimiter //
create procedure GetAccountsByCity(In p_city varchar(50))
begin
	select * from accounts
    where city = p_city;
end//
delimiter ;

CALL GetAccountsByCity('Hyderabad');

delimiter //
create procedure GetAccountsAboveBalance(In balance_amount decimal(10,2))
begin 
	select * from accounts
    where balance > balance_amount;
end//
delimiter ;

CALL GetAccountsAboveBalance(50000);

delimiter //
create procedure UpdateAccountBalance(In AccountID int, In new_balance decimal(10,2))
begin
	update accounts
    set balance = new_balance
    where account_id = AccountID;
end//
delimiter ;

call UpdateAccountBalance(101, 100);

delimiter //
create procedure DepositAmount(In AccountID int, In DepositAmount decimal(10,2))
begin 
	update accounts
    set balance = balance + DepositAmount
    where account_id = AccountID;
end//
delimiter ;

call DepositAmount(101,100);

delimiter //
create procedure WithdrawAmount(in p_accountID int, in p_withdrawalAmount decimal(10,2))
begin
	update accounts
    set balance = balance - p_withdrawalAmount
    where account_id = p_accountID
    and balance > p_withdrawalAmount;
end//
delimiter ;

call WithdrawAmount(101,100);

delimiter //
create procedure DeleteAccount(in AccountID int)
begin 
	delete from accounts
    where account_id = AccountID;
end//
delimiter ;

call DeleteAccount(108);

delimiter //
create procedure CheckBalanceStatus(in p_account_id int)
begin
declare current_balance decimal(10,2);
	select balance
    into current_balance
    from accounts
    where account_id = p_account_id;
    
    if current_balance >= 50000 then
		select 'Hign Balance' as Message;
	else
		select 'Low Balance' as Message;
	end if;
end//
delimiter ;

CALL CheckBalanceStatus(101);

delimiter //
create procedure GetAccountTypeMessage(in p_account_id int)
begin
	declare a_type varchar(30);
    
    select account_type 
    into a_type
    from accounts
    where account_id = p_account_id;
    
    if a_type = 'Savings' then
		select 'This is a Savings Account' as Message;
	else 
		select 'This is a Current Account' as Message;
	end if;
end//
delimiter ;

CALL GetAccountTypeMessage(102);


delimiter //
create procedure SafeDeposit(in p_account_id int, p_deposit_amount decimal(10,2))
begin
	if p_deposit_amount > 0 then
		update accounts
        set balance = balance + p_deposit_amount
        where account_id = p_account_id;
        select 'Deposit Successful' as Message;
	else
		select 'Invalid Deposit Amount' as Message;
	end if;
end//
delimiter ;

call SafeDeposit(101,0);


delimiter //
create procedure SafeWithdraw(in p_account_id int, p_withdraw_amount decimal(10,2))
begin
	declare current_balance decimal(10,2);
	if p_withdraw_amount <= 0 then
		select 'Invalid Amount' as Message;
	else
		select balance
        into current_balance
        from accounts
        where account_id = p_account_id;
        
        if current_balance > p_withdraw_amount then
			update accounts
            set balance = balance - p_withdraw_amount
            where account_id = p_account_id;
            select 'Withdrawal Successful' as Message;
		else
			select 'Insufficient Balance' as Message;
		end if;
	end if;
end//
delimiter ;

call SafeWithdraw(101,5000);
           
delimiter //
create procedure GetCurrentBalance(In p_account_id int, out current_balance decimal(10,2))
begin
	select balance
    into current_balance
    from accounts
    where account_id = p_account_id;
end//
delimiter ;

call GetCurrentBalance(101, @current_balance);
select @current_balance;    
    

    
    

    