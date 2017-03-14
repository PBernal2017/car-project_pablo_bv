package tech.tarragona.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import tech.tarragona.spring.model.Coche;
import tech.tarragona.spring.repository.CochesRepository;

@Service
public class CocheService {
	
	@Autowired
	CochesRepository cochesRepository;
	
	@Transactional
	public List<Coche> getCoches(){
		return cochesRepository.findAll();
	}
/*	
	@Transactional
	public Persona getPersonByUsername(String username){
		return personRepository.findByUsername(username);
	}

	@Transactional
	public Persona savePerson(Persona person){
		return personRepository.save(person);
	}
	
	@Transactional
   public void deletePersonByUsername(String username){
	   Persona persona = personRepository.findByUsername(username);
	   personRepository.delete(persona);
	}
	*/
}
