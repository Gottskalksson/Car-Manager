package com.gottskalksson.carmanager.repositories;

import com.gottskalksson.carmanager.entity.Service;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceRepository extends JpaRepository<Service, Long> {
}
