package tech.tarragona.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tech.tarragona.spring.model.Coche;



@Repository
public interface CochesRepository extends JpaRepository<Coche, Integer> {

}
