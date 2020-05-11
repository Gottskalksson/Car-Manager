package com.gottskalksson.carmanager.repositories;

import com.gottskalksson.carmanager.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
