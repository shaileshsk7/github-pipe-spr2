package com.sprint2.sprint2sk;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<Admin, Integer> {
	
	
	@Query("SELECT e FROM Admin e WHERE sid = ?1"
            
            )
    public Admin get(String sid);

}
