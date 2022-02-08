package com.sprint2.sprint2sk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServices {
	
	@Autowired
    private AdminRepository adrep;
	
	 public Admin get(String sid) {
	    	return adrep.get(sid);
	    }

}
