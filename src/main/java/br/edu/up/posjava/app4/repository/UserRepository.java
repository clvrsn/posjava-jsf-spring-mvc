package br.edu.up.posjava.app4.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.up.posjava.app4.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email); 
}
