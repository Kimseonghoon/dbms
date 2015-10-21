package com.partdb.jpa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.partdb.jpa.domain.Prop_psscd;

public interface Prop_psscdRepository extends JpaRepository<Prop_psscd, Integer>{

	@Query("select f from Prop_psscd f where f.item_uuid = :item_uuid")
	Prop_psscd findByItem_Uuid(@Param("item_uuid") String item_uuid);
	
	@Query("select f from Prop_psscd f where f.title LIKE %:keyword%")
	List<Prop_psscd> searchByTag(@Param("keyword") String keyword);
}
