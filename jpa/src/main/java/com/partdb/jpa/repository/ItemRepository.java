package com.partdb.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.partdb.jpa.domain.Item;

public interface ItemRepository extends JpaRepository<Item, String>{

	@Query("select f from Item f where f.item_uuid = :item_uuid")
	Item findByItem_Uuid(@Param("item_uuid") String item_uuid);
	
}
