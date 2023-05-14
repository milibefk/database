-- Create Rent Table with Employee Relationship
CREATE TABLE rent (
    rent_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    rent_start_date DATE NOT NULL,
    rent_end_date DATE NOT NULL,
    rent_price DECIMAL(10,2) NOT NULL,
    employee_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicle (vehicle_id),
    FOREIGN KEY (employee_id) REFERENCES employee (employee_id)
);
