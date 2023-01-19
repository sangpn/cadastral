package com.example.cadastral.repository;

import com.example.cadastral.entity.PersonInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonRepository extends JpaRepository<PersonInfo, Long> {
}
