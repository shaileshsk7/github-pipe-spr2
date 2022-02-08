package com.sprint2.sprint2sk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path="/admin") 
public class AdminController {
	@Autowired
	AdminRepository adrep;
	
	@Autowired
	AdminServices service;
	
//	  @RequestMapping("/adminlogin")
//	  public String login(Model model) {
//	          
//	          return "adminlogin";
//	      
//	      }
	  
	  @GetMapping("/adlog")
	  public Admin getJson() {
	      return new Admin();
	   }
	  
	
	  
	      
	      @PostMapping("/login")
	      public String getuser( @RequestParam String sid,@RequestParam String spass) {
	      	
	      	if(service.get(sid)==null) {
	      		return "adminfail";
	      	}
	      	else {
	      		if(service.get(sid).getSpass().equals(spass)) {
	      			return "bikes";
	      		}
	      		else {
	      			return "adminfail";
	      		}
	      	}
	        
	      }
	      
	   

	      @GetMapping(path="/all")
			
	 	 public @ResponseBody Iterable<Admin> getAllUsers() {
	 	 // This returns a JSON or XML with the users
	 	 System.out.println("inside all");
	 	 return adrep.findAll();


	 	 }

}
