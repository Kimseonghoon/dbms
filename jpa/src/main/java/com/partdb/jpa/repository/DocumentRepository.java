package com.partdb.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.partdb.jpa.domain.Document;

public interface DocumentRepository extends JpaRepository<Document, Integer>{
	
}
