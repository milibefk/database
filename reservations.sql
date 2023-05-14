CREATE TABLE reservation (
    reservation_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    reservation_start_date DATE NOT NULL,
    reservation_end_date DATE NOT NULL,
    reservation_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicle (vehicle_id)
);