package com.partdb.jpa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.partdb.jpa.domain.Rel_Item;

public interface Rel_ItemRepository extends JpaRepository<Rel_Item, Integer>{

	@Query("select f from Rel_Item f where f.base_item_uuid = :item_uuid")
	List<Rel_Item> findByBase_Uuid(@Param("item_uuid") String item_uuid);
	
	@Query("select f from Rel_Item f where f.target_item_uuid = :item_uuid")
	List<Rel_Item> findByTarget_Uuid(@Param("item_uuid") String item_uuid);
}
