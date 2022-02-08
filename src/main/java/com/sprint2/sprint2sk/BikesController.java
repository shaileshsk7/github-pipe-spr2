package com.sprint2.sprint2sk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


import  com.sprint2.sprint2sk.Bikes;

import com.sprint2.sprint2sk.BikesRepository;

import antlr.collections.List;

@RestController
@RequestMapping(path="/bikes") 
public class BikesController {

	@Autowired
	private BikesRepository bikerep;
	
	BikesController(BikesRepository bikerep) {
	    this.bikerep = bikerep;
	  }
	
	@RequestMapping("/index")
    public String index(Model model) {
        
        return "index";
    
    }
	

	@RequestMapping("/pro")
    public String home(Model model) {
         model.addAttribute("bike", bikerep.findAll());
         return "bikes";
    }
	
//	  @GetMapping("/pro")
//
//	List<Bikes> all() {
//		  
//	    return bikerep.findAll();
//	  }
//	
	@RequestMapping("/addpro")
    public String addjps(Model model) {
        
        return "addpro";
    
    }
	
//	@PostMapping("/added")
//	public String inserted(  @RequestParam Integer bid ,@RequestParam String bdesc,
//			@RequestParam String bname, @RequestParam Integer bprice, Model model) {
//		Bikes pro = new Bikes();
//	
//		pro.setBid(bid);
//		pro.setBdesc(bdesc);
//		pro.setBname(bname);
//		pro.setBprice(bprice);
//
//		bikerep.save(pro);
//		
//		return "redirect:/bikes/pro";
//	}

	
	 @PostMapping("/added")
	  Bikes newEmployee(@RequestBody Bikes newBikes) {
	    return bikerep.save(newBikes);
	  }
	 
	 @GetMapping(path="/all")
		
	 public @ResponseBody Iterable<Bikes> getAllUsers() {
	 // This returns a JSON or XML with the users
	 System.out.println("inside all");
	 return bikerep.findAll();


	 }
	
}
