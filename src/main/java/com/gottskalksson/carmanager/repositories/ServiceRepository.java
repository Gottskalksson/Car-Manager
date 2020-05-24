package com.gottskalksson.carmanager.repositories;

import com.gottskalksson.carmanager.entity.Service;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ServiceRepository extends JpaRepository<Service, Long> {

    List<Service> findFirst5ByUserIdOrderByIdDesc(long id);

    List<Service> findAllByCarId (long id);
}
