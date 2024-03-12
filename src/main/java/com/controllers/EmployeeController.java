package com.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.beans.Employee;
import com.service.EmployeeService;
@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService ss;
	@GetMapping("info")
	public String EmpReg(Model m)
	{
		
		Employee emp = new Employee();
		m.addAttribute("emp", emp);
		
		return "EmployeeReg";
	}
	
	@PostMapping("empreg")
	public String EmpReg(@ModelAttribute("emp") Employee emp, Model m)
	{
		System.out.println(emp.getEmpNo() + "\t" + emp.getEmpName() + "\t" + emp.getJob() + "\t" + emp.getSalary());
		m.addAttribute("empinfo", emp);
		ss.AddEmployee(emp);
		return "EmployeeReg";
	}
	@GetMapping("empall")
	public String ViewAll(Model m)
	{
		List<Employee>  empall = ss.ShowAll();
		m.addAttribute("empall", empall);
		return "ViewAllEmp";
	}
}



