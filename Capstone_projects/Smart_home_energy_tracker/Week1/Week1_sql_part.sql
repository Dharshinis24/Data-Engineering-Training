use capstone_project;

create table rooms(
	room_id int auto_increment primary key,
    room_name varchar(100) not null,
    floor_number int not null
);

create table devices(
	device_id int auto_increment primary key,
    device_name varchar(100) not null,
    device_type varchar(50) not null,
    room_id int not null,
    status varchar(20) not null check (status in ('ON','OFF')),
    rated_power_watts decimal(10,2) not null,
    constraint fk_room_id
    foreign key (room_id) references rooms(room_id)
    on delete cascade
);

create table energy_logs(
	log_id bigint auto_increment primary key,
    device_id int not null,
    energy_kwh decimal(10,4) not null check(energy_kwh >= 0),
    recorded_at datetime not null,
    constraint fk_device_id
    foreign key (device_id) references devices(device_id) 
    on delete cascade
);

insert into rooms (room_name, floor_number)
values
('Living Room', 0),
('Kitchen', 0),
('Bedroom', 1),
('Study Room', 1),
('Bathroom', 1),
('Balcony', 1);

insert into devices (device_name, device_type, room_id, status, rated_power_watts)
values
-- Living Room (room_id = 1)
('Ceiling Fan', 'fan', 1, 'ON', 75),
('LED TV', 'television', 1, 'ON', 120),
('Living Room Light', 'light', 1, 'ON', 15),
('Sound System', 'appliance', 1, 'OFF', 80),

-- Kitchen (room_id = 2)
('Refrigerator', 'appliance', 2, 'ON', 150),
('Microwave Oven', 'appliance', 2, 'OFF', 1200),
('Mixer Grinder', 'appliance', 2, 'OFF', 500),
('Kitchen Light', 'light', 2, 'ON', 12),

-- Bedroom (room_id = 3)
('Air Conditioner', 'ac', 3, 'ON', 1500),
('Bedroom Fan', 'fan', 3, 'ON', 60),
('Bedroom Light', 'light', 3, 'OFF', 12),
('Phone Charger', 'charger', 3, 'ON', 20),

-- Study Room (room_id = 4)
('Desktop Computer', 'computer', 4, 'ON', 250),
('Desk Lamp', 'light', 4, 'OFF', 9),
('Printer', 'appliance', 4, 'OFF', 400),

-- Bathroom (room_id = 5)
('Bathroom Light', 'light', 5, 'ON', 10),
('Water Heater', 'appliance', 5, 'OFF', 2000),

-- Balcony (room_id = 6)
('Balcony Light', 'light', 6, 'OFF', 10);


insert into energy_logs (device_id, energy_kwh, recorded_at)
values
-- October 11, 2026
(1, 0.0750, '2026-10-11 08:00:00'),
(1, 0.0750, '2026-10-11 20:00:00'),
(2, 0.1200, '2026-10-11 19:00:00'),
(3, 0.0150, '2026-10-11 18:00:00'),
(5, 0.1500, '2026-10-11 06:00:00'),
(5, 0.1450, '2026-10-11 18:00:00'),
(6, 0.3000, '2026-10-11 07:30:00'),
(9, 1.2000, '2026-10-11 22:00:00'),
(10, 0.0600, '2026-10-11 21:00:00'),
(13, 0.2500, '2026-10-11 10:00:00'),
(13, 0.2300, '2026-10-11 15:00:00'),
(16, 0.0100, '2026-10-11 20:00:00'),
(17, 1.0000, '2026-10-11 06:00:00'),

-- October 12, 2026
(1, 0.0600, '2026-10-12 09:00:00'),
(2, 0.2400, '2026-10-12 19:00:00'),
(3, 0.0150, '2026-10-12 18:00:00'),
(5, 0.1500, '2026-10-12 06:00:00'),
(5, 0.1480, '2026-10-12 18:00:00'),
(6, 0.0000, '2026-10-12 07:30:00'),
(9, 1.4500, '2026-10-12 22:00:00'),
(9, 0.9000, '2026-10-12 23:00:00'),
(10, 0.0600, '2026-10-12 21:00:00'),
(12, 0.0200, '2026-10-12 20:00:00'),
(13, 0.2500, '2026-10-12 10:00:00'),
(14, 0.0090, '2026-10-12 20:00:00'),
(16, 0.0100, '2026-10-12 20:00:00'),
(17, 0.0000, '2026-10-12 06:00:00'),

-- October 13, 2026
(1, 0.0750, '2026-10-13 08:00:00'),
(2, 0.1200, '2026-10-13 19:00:00'),
(5, 0.1520, '2026-10-13 06:00:00'),
(6, 0.3000, '2026-10-13 07:30:00'),
(9, 1.1000, '2026-10-13 22:00:00'),
(10, 0.0600, '2026-10-13 21:00:00'),
(13, 0.2500, '2026-10-13 10:00:00'),
(17, 0.8000, '2026-10-13 06:00:00');


#CRUD - operations

#Read
select 	
	e.log_id,
    e.device_id,
    d.device_name,
    r.room_name,
    e.energy_kwh,
    e.recorded_at
from energy_logs e
join devices d on e.device_id = d.device_id
join rooms r on d.room_id = r.room_id
order by e.recorded_at;

#update(device status)

#checking device id because of auto increment
select * from devices 
where device_id = 6;

#update
update devices
set status = 'ON'
where device_id = 6;

#update(usage record)

#checking log id because of auto increment
select * from energy_logs
where log_id = 12;

#update 
update energy_logs
set energy_kwh = 2.0200
where log_id = 12;

#insert
insert into rooms (room_name, floor_number)
values ('Garage', 0);

insert into devices (device_name, device_type, room_id, status, rated_power_watts)
values
('Washing Machine', 'appliance', 7, 'OFF', 500),
('Garage Light', 'light', 7, 'OFF', 15);

insert into energy_logs (device_id, energy_kwh, recorded_at)
values
(19, 0.8000, '2026-10-12 10:00:00'),
(19, 0.7500, '2026-10-13 10:00:00'),
(20, 0.0150, '2026-10-13 19:00:00');

#delete
select * from energy_logs;

#delete washing machine's one reading
delete from energy_logs
where log_id = 37;

#delete washing machine in the device list
delete from devices
where device_id = 19;

#checking on delete cascade by deleting the room 7
delete from rooms
where room_id = 7;

# stored procedure to calculate total energy usage per room per day

delimiter //
create procedure calculate_energy_usage()
begin
	select 	
		r.room_id,
        r.room_name,
        date(e.recorded_at) as usage_date,
        sum(energy_kwh) as total_energy
	from energy_logs e
    join devices d on d.device_id = e.device_id
    join rooms r on r.room_id = d.room_id
    group by r.room_id,r.room_name,date(e.recorded_at)
    order by r.room_id, usage_date;
end//
delimiter ;

call calculate_energy_usage;