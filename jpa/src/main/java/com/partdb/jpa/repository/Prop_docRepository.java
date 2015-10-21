package com.partdb.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.partdb.jpa.domain.Prop_doc;

public interface Prop_docRepository extends JpaRepository<Prop_doc, Integer>{

	@Query("select f from Prop_doc f where f.item_uuid = :item_uuid")
	Prop_doc findByItem_Uuid(@Param("item_uuid") String item_uuid);
	
}
