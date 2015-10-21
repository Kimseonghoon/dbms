<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/favicon.png"/> 
<title>DBMS</title>

<link href="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.2/jquery-ui.css" rel="stylesheet" />

<%-- <link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTabbar/skins/dhtmlxtabbar_dhx_web.css" rel="stylesheet" /> --%>
<link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTabbar/skins/dhtmlxtabbar_dhx_web.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid/skins/dhtmlxgrid_dhx_skyblue_modified.css" rel="stylesheet" />

<%-- <link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxLayout/skins/dhtmlxlayout_dhx_skyblue.css" rel="stylesheet" /> --%>
<link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxLayout/skins/dhtmlxlayout_dhx_terrace.css" rel="stylesheet" />

<link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTabbar/skins/dhtmlxtabbar_dhx_skyblue.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxForm/skins/dhtmlxform_dhx_skyblue.css" rel="stylesheet" />
<%-- <link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid/skins/dhtmlxgrid_dhx_skyblue_modified.css" rel="stylesheet" /> --%>
<link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid/skins/dhtmlxgrid_dhx_web.css" rel="stylesheet" />

<link href="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxRibbon/skins/dhtmlxribbon_dhx_skyblue.css" rel="stylesheet" />

<script src="${pageContext.request.contextPath}/resources/js/jquery/1.11.1/jquery-1.11.1.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.2/jquery-ui.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxCommon/dhtmlxcommon.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxCommon/dhtmlxcontainer.js" type="text/javascript"></script>
             
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxLayout/dhtmlxlayout.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxLayout/dhtmlxlayout_deprecated.js" type="text/javascript"></script>             
             
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxToolbar/dhtmlxtoolbar.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxToolbar/dhtmlxtoolbar_deprecated.js" type="text/javascript"></script>             
            
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxForm/dhtmlxform.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxForm/dhtmlxform_deprecated.js" type="text/javascript"></script>            
             
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTabbar/dhtmlxtabbar.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTabbar/dhtmlxtabbar_start.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTabbar/dhtmlxtabbar_deprecated.js" type="text/javascript"></script>
             
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid_PRO/dhtmlxgrid.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid_PRO/dhtmlxgridcell.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid_PRO/ext/dhtmlxgrid_filter.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid_PRO/ext/dhtmlxgrid_srnd.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxGrid_PRO/ext/dhtmlxgrid_pgn.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTreeGrid_PRO/dhtmlxtreegrid.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxTreeGrid_PRO/ext/dhtmlxtreegrid_filter.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/dhtmlx/dhtmlxRibbon/dhtmlxribbon.js" type="text/javascript"></script>

<link href="${pageContext.request.contextPath}/resources/js/axisj/css/cocker/AXJ.min.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/js/axisj/css/cocker/AXGrid.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/resources/js/axicon/axicon.min.css" rel="stylesheet"/>

<script src="${pageContext.request.contextPath}/resources/js/axisj/js/AXJ.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/axisj/js/AXCore.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/axisj/js/AXGrid.js" type="text/javascript"></script>

</head>
<style type="text/css">
/* IMPORT NANUM GOTHIC FONT */ 
@import url('${pageContext.request.contextPath}/resources/font/nanumgothic.css');
 
/* DHTMLX CUSTOMIZING */
.dhxlayout_base_dhx_terrace div.dhx_cell_layout div.dhx_cell_hdr {
	font-family:Nanum Gothic !important;
	font-size:12px !important;
}

div.gridbox.gridbox_dhx_skyblue table.hdr td div.hdrcell {
	font-family:Nanum Gothic !important;
	font-size:12px !important;
}

div.gridbox.gridbox_dhx_web table.hdr td div.hdrcell {
	font-family:Nanum Gothic !important;
	font-size:12px !important;
}

/* Main CSS */
html,body { width:100%; height:100%; margin:0 auto; font-family:Nanum Gothic; overflow: hidden; }
#psscdSearch { position:absolute; top:0; left:0; right:0; height:90px; }
#psscdSearch .title { padding:0px 0px 0px 5px; border:1px solid #cccccc; background-color: #f5f5f5; height:32px; font-size:12px; line-height:31px; font-weight:bold;}
#psscdSearch .content { border: 1px solid #cccccc; border-top:0px; height:65px; padding-left:20px;}
#psscdSearch .content .cell { display:inline-block; line-height:65px;margin:0px 35px 0px 5px; font-size:12px; }
#psscdSearch .content .cell div { display:inline-block; }
#layoutObj { position:absolute; top:100px; left:0; right:0; bottom:30px; }
#ribbonObj { position:absolute; top:0; left:0; right:0; height:100px; background:#aaa; }
</style> 

<script type="text/javascript">
$(document).ready(function() {
	DhxLayout.init();    
    DhxTreeGrid.init();
    modalObj.pageStart();
    
    $("#searchTag").on("keydown", function(e) {
    	if(e.which == 13) {
    		$("#searchPSSCD").click();
    	}
    });
    
    $("#searchPSSCD").on("click", function() {
    	DhxLayout.mainLayout.cells("a").progressOn();
    	
    	$.ajax({
    		url:"search/psscd",
    		type:"post",
    		data: {keyword: $("#searchTag").val() },
    		success: function(result) {

    			DhxLayout.mainLayout.cells("a").progressOff();
    			
				DhxTreeGrid.PSSCD_Grid.clearAll();
				DhxTreeGrid.SDI_Grid.clearAll();
				DhxTreeGrid.DP_Grid.clearAll();
				DhxTreeGrid.SOI_Grid.clearAll();
				DhxTreeGrid.SSCS_Grid.clearAll();
				DhxTreeGrid.DBS_Grid.clearAll();
				DhxTreeGrid.REQ_Grid.clearAll();
				
    			for(var i=0; i<result.length; i++) {  
	    			DhxTreeGrid.PSSCD_Grid.addRow(result[i].uuid,[result[i].name, result[i].desc], 0);	
    			}
    		},
    		error: function(x,h,r) {
    			alert(x.status);
    		}
    	});
    });    
});
</script>

<!-- DHTMLX TREEGRID -->
<script type="text/javascript">
var DhxTreeGrid = {
	PSSCD_Grid:"",
	SDI_Grid:"",
	DP_Grid:"",
	SOI_Grid:"",
	SSCS_Grid:"",
	DBS_Grid:"",
	REQ_Grid:"",
	
	init: function() {
		this.setPsscdGrid();
		this.setSdiGrid();
		this.setDpGrid();
		this.setSoiGrid();
		this.setSscsGrid();
		this.setDbsGrid();
		this.setReqGrid();
		
		this.attachGrid2Layout();
	},
	
	setPsscdGrid: function() {
	    this.PSSCD_Grid = new dhtmlXGridObject("PSSCD_Grid");
	    this.PSSCD_Grid.setHeader("ID,제목", null, ["text-align:center;","text-align:center;"]);
	    this.PSSCD_Grid.setInitWidths("100,*")
		this.PSSCD_Grid.setColAlign("center,center");
	    this.PSSCD_Grid.setColTypes("txt,txt");
	    this.PSSCD_Grid.setColSorting("str,str");
	    this.PSSCD_Grid.attachHeader("#text_filter,#text_filter");
	    this.PSSCD_Grid.setEditable(false);
	    this.PSSCD_Grid.setSkin("dhx_web");
	    this.PSSCD_Grid.init();
	    
	    this.PSSCD_Grid.attachEvent("onRowDblClicked", function(item_uuid) {
	    	DhxLayout.mainLayout.cells("b").progressOn();
	    	DhxTreeGrid.SDI_Grid.clearAll();
			DhxTreeGrid.DP_Grid.clearAll();
			DhxTreeGrid.SOI_Grid.clearAll();
			DhxTreeGrid.SSCS_Grid.clearAll();
			DhxTreeGrid.DBS_Grid.clearAll();
			DhxTreeGrid.REQ_Grid.clearAll();
	    	$.ajax({
	    		url: "item/sdi_dp_soi",
	    		type: "POST",
	    		data: { item_uuid: item_uuid },
	    		success: function(result) {
	    			DhxLayout.mainLayout.cells("b").progressOff();
	    			for(var i=0; i < result.length; i++) { 				
	    				$.each(result[i], function(key, result) {
	    					switch (key) {
		    				case "SDI":
		    					DhxTreeGrid.SDI_Grid.addRow(result.uuid,[result.name, result.desc], 0);		    					
								break;
		    				case "DP":
		    					DhxTreeGrid.DP_Grid.addRow(result.uuid,[result.name, result.desc], 0);		    					
								break;
		    				case "SOI":
		    					DhxTreeGrid.SOI_Grid.addRow(result.uuid,[result.name, result.desc], 0);		    					
								break;
							default:
								break;
							}
	    				});    			
	    			}
	    		},
	    		error: function(x,h,r) {
	    			alert(x.status);
	    		}
	    	});
	    });	    
	},
	setSdiGrid: function() {
	    this.SDI_Grid = new dhtmlXGridObject("SDI_Grid");
	    this.SDI_Grid.setHeader("ID,제목", null, ["text-align:center;","text-align:center;"]);
	    this.SDI_Grid.setInitWidths("100,*")
		this.SDI_Grid.setColAlign("center,center");
	    this.SDI_Grid.setColTypes("txt,txt");
	    this.SDI_Grid.setColSorting("str,str");
	    this.SDI_Grid.attachHeader("#text_filter,#text_filter");
	    this.SDI_Grid.setEditable(false);
	    this.SDI_Grid.setSkin("dhx_web");
	    this.SDI_Grid.init();
	    
	    this.SDI_Grid.attachEvent("onRowDblClicked", function(item_uuid) {
	    	DhxLayout.mainLayout.cells("c").progressOn();
			DhxTreeGrid.SSCS_Grid.clearAll();
			DhxTreeGrid.DBS_Grid.clearAll();
			DhxTreeGrid.REQ_Grid.clearAll();
	    		    	
	    	$.ajax({
	    		url: "item/sscs",
	    		type: "post",
	    		data: { item_uuid: item_uuid },
	    		success: function(result) {
	    			DhxLayout.mainLayout.cells("c").progressOff();
	    			for(var i=0; i<result.length; i++) {  
		    			DhxTreeGrid.SSCS_Grid.addRow(result[i].uuid,[result[i].name, result[i].desc], 0);	
	    			}
	    		},
	    		error: function(x,h,r) {
	    			alert(x.status);
	    		}
	    	});
	    });	    
	},
	setDpGrid: function() {
	    this.DP_Grid = new dhtmlXGridObject("DP_Grid");
	    this.DP_Grid.setHeader("ID,제목", null, ["text-align:center;","text-align:center;"]);
	    this.DP_Grid.setInitWidths("100,*")
		this.DP_Grid.setColAlign("center,center");
	    this.DP_Grid.setColTypes("txt,txt");
	    this.DP_Grid.setColSorting("str,str");
	    this.DP_Grid.attachHeader("#text_filter,#text_filter");
	    this.DP_Grid.setEditable(false);
	    this.DP_Grid.setSkin("dhx_web");
	    this.DP_Grid.init();
	    
	    this.DP_Grid.attachEvent("onRowDblClicked", function(item_uuid) {
	    	DhxLayout.mainLayout.cells("c").progressOn();
			DhxTreeGrid.SSCS_Grid.clearAll();
			DhxTreeGrid.DBS_Grid.clearAll();
			DhxTreeGrid.REQ_Grid.clearAll();
	    		    	
	    	$.ajax({
	    		url: "item/sscs",
	    		type: "post",
	    		data: { item_uuid: item_uuid },
	    		success: function(result) {
	    			DhxLayout.mainLayout.cells("c").progressOff();
	    			for(var i=0; i<result.length; i++) {  
		    			DhxTreeGrid.SSCS_Grid.addRow(result[i].uuid,[result[i].name, result[i].desc], 0);	
	    			}
	    		},
	    		error: function(x,h,r) {
	    			alert(x.status);
	    		}
	    	});
	    });	    
	},
	setSoiGrid: function() {
	    this.SOI_Grid = new dhtmlXGridObject("SOI_Grid");
	    this.SOI_Grid.setHeader("ID,제목", null, ["text-align:center;","text-align:center;"]);
	    this.SOI_Grid.setInitWidths("100,*")
		this.SOI_Grid.setColAlign("center,center");
	    this.SOI_Grid.setColTypes("txt,txt");
	    this.SOI_Grid.setColSorting("str,str");
	    this.SOI_Grid.attachHeader("#text_filter,#text_filter");
	    this.SOI_Grid.setEditable(false);
	    this.SOI_Grid.setSkin("dhx_web");
	    this.SOI_Grid.init();
	    
	    this.SOI_Grid.attachEvent("onRowDblClicked", function(item_uuid) {
	    	DhxLayout.mainLayout.cells("c").progressOn();
			DhxTreeGrid.SSCS_Grid.clearAll();
			DhxTreeGrid.DBS_Grid.clearAll();
			DhxTreeGrid.REQ_Grid.clearAll();
	    		    	
	    	$.ajax({
	    		url: "item/sscs",
	    		type: "post",
	    		data: { item_uuid: item_uuid },
	    		success: function(result) {
	    			DhxLayout.mainLayout.cells("c").progressOff();
	    			for(var i=0; i<result.length; i++) {  
		    			DhxTreeGrid.SSCS_Grid.addRow(result[i].uuid,[result[i].name, result[i].desc], 0);	
	    			}
	    		},
	    		error: function(x,h,r) {
	    			alert(x.status);
	    		}
	    	});
	    });	 
	},
	setSscsGrid: function() {
	    this.SSCS_Grid = new dhtmlXGridObject("SSCS_Grid");
	    this.SSCS_Grid.setHeader("ID,제목", null, ["text-align:center;","text-align:center;"]);
	    this.SSCS_Grid.setInitWidths("100,*")
		this.SSCS_Grid.setColAlign("center,center");
	    this.SSCS_Grid.setColTypes("txt,txt");
	    this.SSCS_Grid.setColSorting("str,str");
	    this.SSCS_Grid.attachHeader("#text_filter,#text_filter");
	    this.SSCS_Grid.setEditable(false);
	    this.SSCS_Grid.setSkin("dhx_web");
	    this.SSCS_Grid.init();
	    
	    this.SSCS_Grid.attachEvent("onRowDblClicked", function(item_uuid) {
	    	DhxLayout.mainLayout.cells("d").progressOn();
			DhxTreeGrid.DBS_Grid.clearAll();
			DhxTreeGrid.REQ_Grid.clearAll();
	    		    	
	    	$.ajax({
	    		url: "item/dbs",
	    		type: "post",
	    		data: { item_uuid: item_uuid },
	    		success: function(result) {
	    			DhxLayout.mainLayout.cells("d").progressOff();
	    			for(var i=0; i<result.length; i++) {  
		    			DhxTreeGrid.DBS_Grid.addRow(result[i].uuid,[result[i].name, result[i].desc], 0);	
	    			}
	    		},
	    		error: function(x,h,r) {
	    			alert(x.status);
	    		}
	    	});
	    });	 
	},
	setDbsGrid: function() {
	    this.DBS_Grid = new dhtmlXGridObject("DBS_Grid");
	    this.DBS_Grid.setHeader("ID,제목", null, ["text-align:center;","text-align:center;"]);
	    this.DBS_Grid.setInitWidths("100,*")
		this.DBS_Grid.setColAlign("center,center");
	    this.DBS_Grid.setColTypes("txt,txt");
	    this.DBS_Grid.setColSorting("str,str");
	    this.DBS_Grid.attachHeader("#text_filter,#text_filter");
	    this.DBS_Grid.setEditable(false);
	    this.DBS_Grid.setSkin("dhx_web");
	    this.DBS_Grid.init();
	    
	    this.DBS_Grid.attachEvent("onRowDblClicked", function(item_uuid) {
	    	DhxLayout.mainLayout.cells("e").progressOn();
			DhxTreeGrid.REQ_Grid.clearAll();
	    		    	
	    	$.ajax({
	    		url: "item/req",
	    		type: "post",
	    		data: { item_uuid: item_uuid },
	    		success: function(result) {
	    			DhxLayout.mainLayout.cells("e").progressOff();
	    			for(var i=0; i<result.length; i++) {  
		    			DhxTreeGrid.REQ_Grid.addRow(result[i].uuid,[result[i].name, result[i].desc], 0);	
	    			}
	    		},
	    		error: function(x,h,r) {
	    			alert(x.status);
	    		}
	    	});
	    });	 
	},
	setReqGrid: function() {
	    this.REQ_Grid = new dhtmlXGridObject("REQ_Grid");
	    this.REQ_Grid.setHeader("ID,제목", null, ["text-align:center;","text-align:center;"]);
	    this.REQ_Grid.setInitWidths("100,*")
		this.REQ_Grid.setColAlign("center,center");
	    this.REQ_Grid.setColTypes("txt,txt");
	    this.REQ_Grid.setColSorting("str,str");
	    this.REQ_Grid.attachHeader("#text_filter,#text_filter");
	    this.REQ_Grid.setEditable(false);
	    this.REQ_Grid.setSkin("dhx_web");
	    this.REQ_Grid.init();
	},
	
	attachGrid2Layout: function() {
		DhxLayout.mainLayout.cells("a").attachObject("PSSCD_Grid");
		DhxLayout.innerLayout.cells("a").attachObject("SDI_Grid");
		DhxLayout.innerLayout.cells("b").attachObject("DP_Grid");
		DhxLayout.innerLayout.cells("c").attachObject("SOI_Grid");
		DhxLayout.mainLayout.cells("c").attachObject("SSCS_Grid");
		DhxLayout.mainLayout.cells("d").attachObject("DBS_Grid");
		DhxLayout.mainLayout.cells("e").attachObject("REQ_Grid");
	}
};
</script>

<!-- DHTMLX LAYOUT -->
<script type="text/javascript">
var DhxLayout = {
	mainLayout: "",
	innerLayout: "",
	
	init: function() {
		this.setLayout();
		this.resizeEvt();
	},
	setLayout: function() {
		this.mainLayout = new dhtmlXLayoutObject({
	        parent: layoutObj,    
	        pattern: "5W",
	        skin: "dhx_terrace", 
	        cells: [{
	            id: "a", text: "PSSCD" }, {
	            id: "b", text: "b" }, {
	            id: "c", text: "SSCS" }, {
	            id: "d", text: "DBS" }, { 
	            id: "e", text: "REQ" }]
	    });
	    
		this.innerLayout = new dhtmlXLayoutObject({
	        parent: this.mainLayout.cells("b"),    
	        pattern: "3E"
	    });
	    
		this.innerLayout.cells("a").setText("SDI");
		this.innerLayout.cells("b").setText("DP");
		this.innerLayout.cells("c").setText("SOI");
	},
	resizeEvt: function() {
		$(window).resize(function() {
	    	DhxLayout.mainLayout.setSizes();    
	    	DhxLayout.innerLayout.setSizes();
	    });
	}
};
</script>

<script type="text/javascript">
var pageID = "AXModal";
var myModal = new AXModal();
var modalObj = {
	pageStart: function(){
		myModal.setConfig({
			windowID:"myModalCT", width:740,
            mediaQuery: {
                mx:{min:0, max:767}, dx:{min:767}
            },
			displayLoading:true,
            scrollLock: true,
			onclose: function(){
				//toast.push("모달 close");
			}
		});
	},
	modalOpenDiv: function(){
		myModal.openDiv({
			modalID:"modalDiv01",
			targetID:"modalContent",
			width:860,
			top:100,
			closeByEscKey:true
		});
		
		var list = [
           {item_id:"A", item_group:"B", type:"C"}
                ];

	    gridObj.pageStart();
		myGrid.setList(list);
	}
};
</script>

<script type="text/javascript">
var pageID = "AXGrid";
var AXGrid_instances = [];
var gridObj = {
    pageStart: function(){
    	gridObj.grid.bind();
    },
    grid: {
        target: new AXGrid(),
        bind: function(){
            window.myGrid = gridObj.grid.target;

            var getColGroup = function(){
                return [
                    {key:"item_id", label:"ID", width:"200"},
                    {key:"item_group",  label:"GROUP", width:"200"},
                    {key:"type", label:"TYPE", width:"200"}
                ];
            };

            myGrid.setConfig({
                targetID    : "AXGridTarget",
                sort        : true, //정렬을 원하지 않을 경우 (tip
                colHeadTool : true, // column tool use
                fitToWidth  : true, // 너비에 자동 맞춤
                colGroup    : getColGroup(),
                colHeadAlign: "center", // 헤드의 기본 정렬 값. colHeadAlign 을 지정하면 colGroup 에서 정의한 정렬이 무시되고 colHeadAlign : false 이거나 없으면 colGroup 에서 정의한 속성이 적용됩니다.
                body        : {
                    onclick: function(){
                        toast.push(Object.toJSON({ "event": "click", "index": this.index, "r": this.r, "c": this.c, "item": this.item }));
                        // this.list, this.page
                    },
                    /* ondblclick 선언하면 onclick 이벤트가 0.25 초 지연 발생 됩니다. 주의 하시기 바람니다. */
                    ondblclick: function(){
                        toast.push(Object.toJSON({ "event": "dblclick", "index": this.index, "r": this.r, "c": this.c, "item": this.item }));
                        // this.list, this.page
                    },
                    addClass: function(){
                        return (this.index % 2 == 0 ? "gray" : "white"); // red, green, blue, yellow, white, gray
                    }
                },
                page: {
                    display: false,
                    paging: false
                }
            });
        },
        deleteItem: function(index) {
            $.Event(event).stopPropagation(); // 버튼클릭 이벤트가 row click 이벤트를 발생시키지 않도록 합니다.
            var item = myGrid.list[index];
            toast.push('deleteItem: ' + $.param(item).dec());
        },
        getExcel: function(type){
            var obj = myGrid.getExcelFormat(type);
            trace(obj);
            $("#printout").html(Object.toJSON(obj));
        },
        getSelectedItem: function(){
            trace( this.target.getSelectedItem() );
            toast.push('콘솔창에 데이터를 출력하였습니다.');
        }
    }
};
</script>

<body>
	<div id="psscdSearch">
		<div class="title">
			PSSCD 검색
		</div>
		<div class="content" align="center">
			<div class="cell">
				<div><b>TAG No. : </b></div>
				<div>
					<input id="searchTag" type="text" />
				</div>
			</div>
			<div class="cell">
				<div><b>Name : </b></div>
				<div>
					<input id="searchName" type="text" />
				</div>
			</div> 
			<div class="cell">
				<div><b>Item Identity : </b></div>
				<div>
					<input id="searchId" type="text" />
				</div>
			</div>
			<div class="cell">
				<!-- <input type="button" value="검색" class="AXButton" onclick="modalObj.modalOpenDiv();"/> -->
				<input type="button" value="검색" id="searchPSSCD" />
			</div>
		</div>
	</div>
	
	<div id="layoutObj"></div>
	
	<div id="PSSCD_Grid" style="width:100%;height:100%;"></div>
	<div id="SDI_Grid" 	 style="width:100%;height:100%;"></div> 
	<div id="DP_Grid" 	 style="width:100%;height:100%;"></div> 
	<div id="SOI_Grid" 	 style="width:100%;height:100%;"></div> 
	<div id="SSCS_Grid"	 style="width:100%;height:100%;"></div> 
	<div id="DBS_Grid" 	 style="width:100%;height:100%;"></div> 
	<div id="REQ_Grid" 	 style="width:100%;height:100%;"></div>	
	
	<div style="display:none;">
		<div id="modalContent" style="padding:20px;">
			<h2>PSSCD 검색 결과</h2>
			<div id="AXGridTarget" style="height:600px;margin-top:18px;"></div>
		</div>		
	</div>	
	
</body>
</html>

