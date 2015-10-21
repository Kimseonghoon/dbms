package com.partdb.jpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.partdb.jpa.service.MainService;
import com.partdb.jpa.vo.BaseVO;

@Controller
public class ItemController {	
	
	@Autowired
	MainService mainService;
	
	/*@ModelAttribute("items")
	public List<Item> construct() {
		return new ArrayList<Item>();
	}*/
	
	@RequestMapping("items")
	public String items(Model model) {
		//model.addAttribute("items", itemService.findAll());
		return "items";
	}
	
	@RequestMapping(value="item/{itemGroup}", method=RequestMethod.POST)
	public @ResponseBody Object doItem(@RequestParam("item_uuid") String uuid, 
									   @PathVariable("itemGroup") String group) {
		if(group.equalsIgnoreCase("psscd")) {
			return mainService.getPsscd(uuid);	
		} else if(group.equalsIgnoreCase("sdi_dp_soi")) {
			return mainService.getSdiDpSoi(uuid);					
		} else if(group.equalsIgnoreCase("sscs")) {
			return mainService.getSscs(uuid);
		} else if(group.equalsIgnoreCase("dbs")) {
			return mainService.getDbs(uuid);
		} else if(group.equalsIgnoreCase("req")) {
			return mainService.getReq(uuid);			
		}		
		else { return null; }
			
	}
		
	@RequestMapping(value="search/{itemGroup}", method=RequestMethod.POST)
	public @ResponseBody List<BaseVO> search(@RequestParam("keyword") String keyword, 
											 @PathVariable("itemGroup") String group) {
		if(group.equalsIgnoreCase("psscd")) {
			return mainService.getSearchPsscd(keyword);
		} else {
			return null;
		}
	}
}
		
