package com.studentscrud.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.studentscrud.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
  //List<Student> findByPublished(boolean published);
  //List<Student> findById(String title);
}