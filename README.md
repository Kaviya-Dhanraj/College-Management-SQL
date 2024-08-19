Output for the Queries:
i)
SELECT 
   Transport.transport_id AS TransportNumber,
   Transport.vehicle_type AS VehicleType,
   Transport.route_name AS Route,
   Driver.driver_name AS DriverName
FROM
   Transport
JOIN
   Driver
ON 
   Transport.driver_id = Driver.driver_id
WHERE 
   Transport.capacity=50;

   ![image](https://github.com/user-attachments/assets/174b1006-7606-43c2-a154-417434ac9a92)

ii)



