package com.gray.omikuji.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class FormController {
	@GetMapping("/omikuji")
	public String omikujiForm(HttpSession session) {	
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String omikujiShowForm(HttpSession session) {	
		return "show_omikuji.jsp";
	}
	
	@PostMapping("/process_form")
	public String processOmikujiForm(
			@RequestParam(value="number") int number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="endeavor") String endeavor,
			@RequestParam(value="living") String living,
			@RequestParam(value="somethingNice") String somethingNice,
			HttpSession session
			) {
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("endeavor", endeavor);
		session.setAttribute("living", living);
		session.setAttribute("somethingNice", somethingNice);
		return "redirect:/omikuji/show";
	}
	
	//********extras********
	//destroy session data on Go Back
	@GetMapping("/reset")
	public String destroySessionData(HttpSession session) {	
		session.removeAttribute("number");
		session.removeAttribute("city");
		session.removeAttribute("person");
		session.removeAttribute("endeavor");
		session.removeAttribute("living");
		session.removeAttribute("somethingNice");
		return "redirect:/omikuji";
	}
	
	//catch all routes
	@GetMapping("/{path:[^\\.]*}")
	public String catchAll(@PathVariable("path") String path) {
		//don't throw error, just redirect to form
		return "redirect:/omikuji";
	}
	@GetMapping("/")
	public String catchHome() {
		//don't throw error, just redirect to form
		return "redirect:/omikuji";
	}
}
