package com.capgemini.training.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.capgemini.training.Entity.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    List<Employee> findByEmpNameContainingIgnoreCase(String name);

    List<Employee> findByEmpId(int empId);

    List<Employee> findByEmpCityContainingIgnoreCase(String city);

    List<Employee> findByEmpEmailContainingIgnoreCase(String email);
}
