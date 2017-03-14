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
	@Transactional
	public Coche saveCoche(Coche coche){
		return cochesRepository.save(coche);
	}
}
