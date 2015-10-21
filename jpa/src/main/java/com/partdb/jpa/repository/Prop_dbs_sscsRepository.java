package com.partdb.jpa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.partdb.jpa.domain.Prop_dbs_sscs;

public interface Prop_dbs_sscsRepository extends JpaRepository<Prop_dbs_sscs, String>{

	@Query("select f from Prop_dbs_sscs f where f.item_uuid = :item_uuid")
	Prop_dbs_sscs findByItem_Uuid(@Param("item_uuid") String item_uuid);
	
}
