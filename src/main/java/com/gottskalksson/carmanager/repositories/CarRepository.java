package com.gottskalksson.carmanager.repositories;

import com.gottskalksson.carmanager.entity.Car;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CarRepository extends JpaRepository<Car, Long> {

    List<Car> findAllByUserId (long id);

    boolean existsByPlateNumber(String plateNumber);

    Car findCarByPlateNumber (String plateNumber);
}
