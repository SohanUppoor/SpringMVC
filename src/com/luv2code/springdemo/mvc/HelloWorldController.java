package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
									// show the form
		@RequestMapping("/showForm")
		public String showForm() {
			return "helloworld-form";
		}
		
									//process form
		@RequestMapping("/processForm")
		public String processForm() {
			return "helloworld";
		}
		
		@RequestMapping("/processFormV2")
		public String letsShoutDude(HttpServletRequest req, Model model) {
			String tname=req.getParameter("studentName");
			tname=tname.toUpperCase();
			String result="yo "+tname+" !!";
			model.addAttribute("message", result);
			
			return "helloworld";
		}
		
		//requestParam
		@RequestMapping("/processFormV3")
		public String processFormV(@RequestParam("studentName") String tname, 
				Model model) {
			
			tname=tname.toUpperCase();
			String result="welcome to the team "+tname+" !!";
			model.addAttribute("message", result);
			
			return "helloworld";
		}
		
}
