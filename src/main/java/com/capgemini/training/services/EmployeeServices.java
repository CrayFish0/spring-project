package com.capgemini.training.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.capgemini.training.Entity.Employee;
import com.capgemini.training.repository.EmployeeRepository;

@Service
public class EmployeeServices {

    @Autowired
    EmployeeRepository employeeRepository;

    public List<Employee> getAllEmployee() {
        return employeeRepository.findAll();
    }

    public Employee getEmployeeById(int id) {
        Optional<Employee> emp = employeeRepository.findById(id);
        return emp.orElse(null);
    }

    public Employee saveEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    public Employee updateEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    public void deleteEmployee(int id) {
        employeeRepository.deleteById(id);
    }

    public List<Employee> searchEmployees(String query, String searchBy) {
        if (query == null || query.isBlank()) {
            return employeeRepository.findAll();
        }
        if (searchBy == null) searchBy = "name";
        return switch (searchBy.toLowerCase()) {
            case "empid" -> {
                try {
                    yield employeeRepository.findByEmpId(Integer.parseInt(query.trim()));
                } catch (NumberFormatException e) {
                    yield new ArrayList<>();
                }
            }
            case "city" -> employeeRepository.findByEmpCityContainingIgnoreCase(query.trim());
            case "email" -> employeeRepository.findByEmpEmailContainingIgnoreCase(query.trim());
            default -> employeeRepository.findByEmpNameContainingIgnoreCase(query.trim());
        };
    }

    public long getTotalCount() {
        return employeeRepository.count();
    }
}