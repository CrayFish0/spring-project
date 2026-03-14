package com.capgemini.training;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

	@GetMapping("/")
	public String login(Model model) {
		return "login.jsp";
	}

	@PostMapping("/login")
	public String login(String username, String password, Model model) {
		if (username != null && password != null && username.equals("admin") && password.equals("admin")) {
			model.addAttribute("user", username);
			return "welcome.jsp";
		} else {
			model.addAttribute("error", "Invalid username or password");
			return "login.jsp";
		}
	}

	@GetMapping("/register")
	public String showRegister() {
		return "register.jsp";
	}

	@PostMapping("/register")
	public String register(String username, String password, Model model) {
		// very simple placeholder registration: accept non-empty values
		if (username != null && !username.isBlank() && password != null && !password.isBlank()) {
			model.addAttribute("msg", "Registration successful. Please login.");
			return "login.jsp";
		} else {
			model.addAttribute("error", "Please provide username and password to register.");
			return "register.jsp";
		}
	}

	@GetMapping("/forgot")
	public String showForgot() {
		return "forgot.jsp";
	}

	@PostMapping("/forgot")
	public String forgot(String username, Model model) {
		// simple placeholder: pretend we sent a reset link if username provided
		if (username != null && !username.isBlank()) {
			model.addAttribute("msg", "If an account exists for '" + username + "', a reset link has been sent.");
		} else {
			model.addAttribute("error", "Please enter your username or email.");
		}
		return "login.jsp";
	}
}