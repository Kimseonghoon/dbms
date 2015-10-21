package com.partdb.jpa.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.partdb.jpa.domain.Item;
import com.partdb.jpa.domain.Prop_psscd;
import com.partdb.jpa.domain.Rel_Item;
import com.partdb.jpa.repository.DocumentRepository;
import com.partdb.jpa.repository.ItemRepository;
import com.partdb.jpa.repository.ParamRepository;
import com.partdb.jpa.repository.Prop_dbs_sscsRepository;
import com.partdb.jpa.repository.Prop_docRepository;
import com.partdb.jpa.repository.Prop_psscdRepository;
import com.partdb.jpa.repository.Prop_reqRepository;
import com.partdb.jpa.repository.Rel_ItemRepository;
import com.partdb.jpa.vo.BaseVO;
import com.partdb.jpa.vo.DbsVO;
import com.partdb.jpa.vo.PsscdVO;
import com.partdb.jpa.vo.SdiVO;
import com.partdb.jpa.vo.SscsVO;

@Service
public class MainService {
	@Autowired
	ItemRepository itemRepository;
	
	@Autowired
	Prop_psscdRepository prop_psscdRepository;
	
	@Autowired
	Rel_ItemRepository rel_itemRepository;
	
	@Autowired
	Prop_docRepository prop_docRepository;
	
	@Autowired
	DocumentRepository documentRepository;
	
	@Autowired
	ParamRepository paramRepository;
	
	@Autowired
	Prop_dbs_sscsRepository prop_dbs_sscsRepository;
	
	@Autowired
	Prop_reqRepository prop_reqRepository;
	
	public List<BaseVO> getSearchPsscd(String keyword) {
		List<BaseVO> results = new ArrayList<BaseVO>();
		List<Prop_psscd> propList = prop_psscdRepository.searchByTag(keyword);
		
		for (Prop_psscd prop_psscd : propList) {
			Item item = itemRepository.findByItem_Uuid(prop_psscd.getItem_uuid());
			
			results.add(new PsscdVO(item.getItem_uuid(), item.getItem_id(), prop_psscd.getTitle()));
		}
		return results;
	}
	
	public PsscdVO getPsscd(String item_uuid) {
		Item item = itemRepository.findByItem_Uuid(item_uuid);
		Prop_psscd prop_psscd = prop_psscdRepository.findByItem_Uuid(item_uuid);
		
		return new PsscdVO(item_uuid, item.getItem_id(), prop_psscd.getTitle());
	}

	@SuppressWarnings("serial")
	public List<HashMap<String, BaseVO>> getSdiDpSoi(String uuid) {
		List<HashMap<String, BaseVO>> results = new ArrayList<HashMap<String, BaseVO>>();
		
		List<Rel_Item> relItems = rel_itemRepository.findByTarget_Uuid(uuid);
		
		for (Rel_Item relItem : relItems) {
			String currentUuid = relItem.getBase_item_uuid();
			Item item = itemRepository.findByItem_Uuid(currentUuid);
			
			if(item.getType().equalsIgnoreCase("SDI")) {
				String desc = documentRepository.findOne(prop_docRepository.findByItem_Uuid(currentUuid).getRef_id()).getNo();
								
				results.add(new HashMap<String, BaseVO>() {
					{
						put(item.getType(), new SdiVO(currentUuid, item.getItem_id(), desc));
					}
				});				
			} else if(item.getType().equalsIgnoreCase("DP")) {
				String desc = paramRepository.findByItem_Uuid(currentUuid, new PageRequest(0, 1)).get(0).getProp_value();
								
				results.add(new HashMap<String, BaseVO>() {
					{
						put(item.getType(), new SdiVO(currentUuid, item.getItem_id(), desc));
					}
				});				
			} else if(item.getType().equalsIgnoreCase("SOI")) {
				String desc = documentRepository.findOne(prop_docRepository.findByItem_Uuid(currentUuid).getRef_id()).getNo();
								
				results.add(new HashMap<String, BaseVO>() {
					{
						put(item.getType(), new SdiVO(currentUuid, item.getItem_id(), desc));
					}
				});				
			}
		}
		
		return results;
	}

	
	public List<BaseVO> getSscs(String uuid) {
		List<BaseVO> results = new ArrayList<BaseVO>();
		List<Rel_Item> relItems = rel_itemRepository.findByTarget_Uuid(uuid);
		
		for(Rel_Item relItem : relItems) {
			Item curItem = itemRepository.findOne(relItem.getBase_item_uuid());
			if(curItem.getType().equalsIgnoreCase("sscs")) {
				String desc = prop_dbs_sscsRepository.findByItem_Uuid(curItem.getItem_uuid()).getTitle();
				results.add(new SscsVO(curItem.getItem_uuid(), curItem.getItem_id(), desc));
			}
		}
		
		return results;
	}

	public List<BaseVO> getDbs(String uuid) {
		List<BaseVO> results = new ArrayList<BaseVO>();
		List<Rel_Item> relItems = rel_itemRepository.findByTarget_Uuid(uuid);
		
		for(Rel_Item relItem : relItems) {
			Item curItem = itemRepository.findOne(relItem.getBase_item_uuid());
			if(curItem.getType().equalsIgnoreCase("dbs")) {
				String desc = prop_dbs_sscsRepository.findByItem_Uuid(curItem.getItem_uuid()).getTitle();
				results.add(new DbsVO(curItem.getItem_uuid(), curItem.getItem_id(), desc));
			}
		}
		
		return results;
	}

	public List<BaseVO> getReq(String uuid) {
		List<BaseVO> results = new ArrayList<BaseVO>();
		List<Rel_Item> relItems = rel_itemRepository.findByTarget_Uuid(uuid);
		
		for(Rel_Item relItem : relItems) {
			Item curItem = itemRepository.findOne(relItem.getBase_item_uuid());
			if(curItem.getType().equalsIgnoreCase("req")) {
				String desc = prop_reqRepository.findByItem_Uuid(curItem.getItem_uuid()).getTitle();
				results.add(new DbsVO(curItem.getItem_uuid(), curItem.getItem_id(), desc));
			}
		}
		
		return results;
	}
}
