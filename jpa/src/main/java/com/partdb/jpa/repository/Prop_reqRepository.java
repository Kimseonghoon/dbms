package com.partdb.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.partdb.jpa.domain.Prop_req;

public interface Prop_reqRepository extends JpaRepository<Prop_req, String>{

	@Query("select f from Prop_req f where f.item_uuid = :item_uuid")
	Prop_req findByItem_Uuid(@Param("item_uuid") String item_uuid);
	
}
