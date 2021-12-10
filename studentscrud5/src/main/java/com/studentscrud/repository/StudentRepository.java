package com.studentscrud.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.studentscrud.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
 
}