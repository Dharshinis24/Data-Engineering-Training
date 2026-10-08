CREATE TABLE vehicles (
vehicle_id INT PRIMARY KEY,
vehicle_name VARCHAR(100),
vehicle_type VARCHAR(50),
daily_rate DECIMAL(10,2),
available_status VARCHAR(20)
);
INSERT INTO vehicles VALUES
(1, 'Honda City', 'Car', 2500, 'Available'),
(2, 'Toyota Innova', 'Car', 3500, 'Available'),
(3, 'Royal Enfield', 'Bike', 1200, 'Rented'),
(4, 'Activa', 'Scooter', 700, 'Available'),
(5, 'Mahindra Thar', 'SUV', 4500, 'Rented'),
(6, 'Hyundai Creta', 'SUV', 3200, 'Available'),
(7, 'KTM Duke', 'Bike', 1500, 'Available');

#1
delimiter //
create procedure GetAllVehicles()
begin 
	select * 
    from vehicles;
end//
delimiter ;

call GetAllVehicles();

#2
delimiter //
create procedure GetAvailableVehicles()
begin
	select *
    from vehicles 
    where available_status = 'Available';
end//
delimiter ;

call GetAvailableVehicles();

#3
delimiter //
create procedure GetVehicleType(In p_vehicle_type varchar(50))
begin
	select *
    from vehicles
    where vehicle_type = p_vehicle_type;
end//
delimiter ;

call GetVehicleType('SUV');

#4
delimiter //
create procedure GetMaxDailyRate(in p_daily_rate decimal(10,2))
begin
	select *
    from vehicles
    where daily_rate <= p_daily_rate;
end//
delimiter ;

call GetMaxDailyRate(1200);

#5
delimiter //
create procedure ChangeDailyRate(in p_vehicle_id int, in p_new_daily_rate decimal(10,2))
begin
	update vehicles
    set daily_rate = p_new_daily_rate
    where vehicle_id = p_vehicle_id;
end//
delimiter ;

call ChangeDailyRate(3, 1500.00);

#6
delimiter //
create procedure ChangeStatus(in p_vehicle_id int, in p_status varchar(20))
begin
	update vehicles
    set available_status = p_status
    where vehicle_id = p_vehicle_id;
end//
delimiter ;

call ChangeStatus(1, 'Rented');

#7
delimiter //
create procedure IncreaseDailyRate(in p_supplied_percent int)
begin
	update vehicles
    set daily_rate = daily_rate + ((daily_rate * p_supplied_percent)/100);
end//
delimiter ;

call IncreaseDailyRate(10);

#8
delimiter //
create procedure DeleteVehicle(in p_vehicle_id int)
begin
	delete from vehicles
    where vehicle_id = p_vehicle_id;
end//
delimiter ;

call DeleteVehicle(7);

#9
delimiter //
create procedure RangeRental(in p_start_range decimal(10,2), in p_end_range decimal(10,2))
begin
	select * 
    from vehicles
    where daily_rate between p_start_range and p_end_range;
end//
delimiter ;

call RangeRental(1000.50, 2499);

#10
delimiter //
create procedure VehicleCountByType(in p_vehicle_type varchar(50))
begin
	select 
		vehicle_type,
        count(*) as Count
	from vehicles
    where vehicle_type = p_vehicle_type
    group by vehicle_type;
end//
delimiter ;

call VehicleCountByType('SUV');
    

