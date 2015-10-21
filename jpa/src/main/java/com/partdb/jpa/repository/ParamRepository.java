package com.partdb.jpa.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ParamRepository extends JpaRepository<com.partdb.jpa.domain.Param, String>{

	@Query("select f from Param f where f.item_uuid = :item_uuid")
	List<com.partdb.jpa.domain.Param> findByItem_Uuid(@Param("item_uuid") String item_uuid, Pageable pageable);
}
