package com.capgemini.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.capgemini.training.Entity.Employee;
import com.capgemini.training.services.EmployeeServices;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    EmployeeServices employeeServices;

    @GetMapping("/all")
    public String getAllEmployees(Model model) {
        List<Employee> list = employeeServices.getAllEmployee();
        model.addAttribute("employees", list);
        model.addAttribute("totalCount", employeeServices.getTotalCount());
        model.addAttribute("searchQuery", "");
        model.addAttribute("searchBy", "name");
        return "/employeeList.jsp";
    }

    @GetMapping("/search")
    public String searchEmployees(
            @RequestParam(defaultValue = "") String query,
            @RequestParam(defaultValue = "name") String searchBy,
            Model model) {
        List<Employee> list = employeeServices.searchEmployees(query, searchBy);
        model.addAttribute("employees", list);
        model.addAttribute("totalCount", employeeServices.getTotalCount());
        model.addAttribute("searchQuery", query);
        model.addAttribute("searchBy", searchBy);
        model.addAttribute("resultCount", list.size());
        return "/employeeList.jsp";
    }

    @GetMapping("/view/{id}")
    public String viewEmployee(@PathVariable int id, Model model) {
        Employee emp = employeeServices.getEmployeeById(id);
        if (emp == null) {
            return "redirect:/employee/all";
        }
        model.addAttribute("employee", emp);
        return "/employeeDetail.jsp";
    }

    @GetMapping("/add")
    public String showAddForm() {
        return "/addEmployee.jsp";
    }

    @PostMapping("/add")
    public String addEmployee(Employee employee) {
        employeeServices.saveEmployee(employee);
        return "redirect:/employee/all";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        Employee emp = employeeServices.getEmployeeById(id);
        model.addAttribute("employee", emp);
        return "/editEmployee.jsp";
    }

    @PostMapping("/update")
    public String updateEmployee(Employee employee) {
        employeeServices.updateEmployee(employee);
        return "redirect:/employee/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable int id) {
        employeeServices.deleteEmployee(id);
        return "redirect:/employee/all";
    }
}