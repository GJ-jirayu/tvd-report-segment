 
	 //function create drowdown area start
	 var createDropdrownList = function(id,data,option){
		 var htmlSelect="";
		 if(option['typeValue']=="single"){
			 
			 htmlSelect+="<select id=\""+id+"\" name=\""+id+"\"  class=\"singleSelect\">"; 
			 }else{
			 htmlSelect+="<select id=\""+id+"\" name=\""+id+"\"  class=\"mutiSelect\" multiple=\"multiple\">";	 
			 }
		 if(option['filed']==2){
		 $.each(data,function(index,indexEntry){
			if(option['valueDefalult']){ 
				
				
				
			 if(option['valueDefalult']==indexEntry[0]){
				 
				 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
			 
			 }else{
				 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
			 }
			}else{
				
				if("All"==indexEntry[0]){
					 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }else{
					 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }	
				
			}
			 
			 /*
				 if(indexEntry[0]=="All"){
				 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }else{
				 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }
			*/
		 });
		 }else if(option['filed']==1){
			 $.each(data,function(index,indexEntry){
				 
				 if(option['valueDefalult']){ 
					 
					 //alert(option['valueDefalult']);
					 
					 if(option['valueDefalult']==indexEntry[0]){
						 
						 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
					 }else{
						 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
					 }
					}else{
						
						if("All"==indexEntry[0]){
							 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
						 }else{
							 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
						 }	
						
					}
				 
				 /*
				 if(indexEntry[0]=="All"){
				 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
				 }else{
				 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
				 }
				 */
			
			 });
			 
		 }
		 htmlSelect+="</select>";
		 //alert(htmlSelect);
		 //alert(option);
		 $("td#area"+id+"").html(htmlSelect);
		 $(".mutiSelect").multiselect({
			   header: false
			});
		 
		 
	 };
	 var createDropdrownListCastCase = function(id,data,option){
		 var htmlSelect="";
		 if(option['typeValue']=="single"){
		 htmlSelect+="<select id=\""+id+"\" name=\""+id+"\"  class=\"singleSelect\" multiple=\"multiple\">"; 
		 }else{
		 htmlSelect+="<select id=\""+id+"\" name=\""+id+"\"  class=\"mutiSelect\" multiple=\"multiple\">";	 
		 }
		 
		 if(option['filed']==2){
		 $.each(data,function(index,indexEntry){
			 
			 
				 if(indexEntry[0]==option['valueDefalult']){
				 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }else{
				 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }
			
		 });
		 }else if(option['filed']==1){
			 $.each(data,function(index,indexEntry){
				 
				 
				 if(indexEntry[0]==option['valueDefalult']){
				 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
				 }else{
				 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
				 }
			
			 });
			 
		 }
		 htmlSelect+="</select>";
		 //alert(htmlSelect);
		 //alert(option);
		 $("td#area"+id+"").html(htmlSelect);
		 $("select").multiselect({
			   header: false
			});
		 
		 
	 };
	 
	 //createDropdrownList();
	 var callAjaxForDropDrowList = function(fileName,option){
		 
		 $.ajax({
			url:"../Model/"+fileName+".jsp",
			type:"get",
			async:false,
			dataType:"json",
			success:function(data){
				createDropdrownList("param"+fileName+"",data,option);
			}
		 });
	 };
	 
	 
	 //mail campiagn parameter defualt start
	 var callAjaxForDropDrowListMailCampaign = function(fileName,option){
	
		 $.ajax({
			url:"../Model/"+fileName+".jsp",
			type:"get",
			async:false,
			dataType:"json",
			data:{"MailCampaignCerateDateStartParam":option['MailCampaignCerateDateStartParam']+"","MailCampaignCerateDateEndParam":option['MailCampaignCerateDateEndParam']+""},
			success:function(data){
				createDropdrownList("param"+fileName+"",data,option);
			}
		 });
	 };
	//mail campiagn parameter end
	 
	 //mail program parameter defualt start
	 var callAjaxForDropDrowListMailProgram = function(fileName,option){
	
		 $.ajax({
			url:"../Model/"+fileName+".jsp",
			type:"get",
			async:false,
			dataType:"json",
			data:{"MailCampaignParam":option['MailCampaignParam']+""},
			success:function(data){
				createDropdrownList("param"+fileName+"",data,option);
			}
		 });
	 };
	//mail program parameter end
	 
	 
	 
	 //CalloutCampaign  parameter defualt start
	 var callAjaxForDropDrowListCalloutCampaign = function(fileName,option){
	
		 $.ajax({
			url:"../Model/"+fileName+".jsp",
			type:"get",
			async:false,
			dataType:"json",
			data:{"CallOutCampaignCerateDateStartParam":option['CallOutCampaignCerateDateStartParam'],"CallOutCampaignCerateDateEndParam":option['CallOutCampaignCerateDateEndParam']},
			success:function(data){
				createDropdrownList("param"+fileName+"",data,option);
			}
		 });
	 };
	//CalloutCampaign Parameter End
	
	
	 //CalloutProgram  parameter defualt start
	 var callAjaxForDropDrowListCalloutProgram = function(fileName,option){
		 
		 //alert(option['CalloutCampaignParam']);
		 var CalloutCampaignParam=""+option['CalloutCampaignParam']+"";
		 //alert(CalloutCampaignParam);
		 $.ajax({
			url:"../Model/"+fileName+".jsp",
			type:"get",
			async:false,
			dataType:"json",
			//data:{"CalloutCampaignParam1":CalloutCampaignParam},
			data:{"CalloutCampaignParam":CalloutCampaignParam},
			success:function(data){
				//alert(data);
				if(data!=null){
					createDropdrownList("param"+fileName+"",data,option);
				}
				
			}
		 });
	 };
	//CalloutProgram Parameter End
	 
	 
	 
	 
	 //CastCase DropdrownList CustomerStatus
	 var callAjaxForDropDrowListCustomerStatus = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				success:function(data){
					
					createDropdrownListCastCase("param"+fileName+"",data,option);
					option=[];
					option['filed']=2;
					option['valueDefalult']=25;
					option['parameter']="'"+$("#paramCustomerStatus option:selected").val()+"'";
					callAjaxForDropDrowListSubStatus("CustomerSubStatus",option);
				}
			 });
		 
		 
	 };
	 
	 var callAjaxForDropDrowListSubStatus = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				data:{"CustomerStatusParam":option['parameter']},
				success:function(data){
					//alert(data);
					createDropdrownList("param"+fileName+"",data,option);
				}
			 });
		 
		 
	 };
	 //CastCase DropdrownList CallType
	 var callAjaxForDropDrowListCallType = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				success:function(data){
					createDropdrownListCastCase("param"+fileName+"",data,option);
					option=[];
					option['filed']=1;
					option['parameter']="'"+$("#paramCallType option:selected").val()+"'";
					callAjaxForDropDrowListCallAbnormolly("CallAbnormolly",option);
				}
			 });
		 
		 
	 };
	 
	 var callAjaxForDropDrowListCallAbnormolly = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				data:{"CallTypeNameParam":option['parameter']},
				success:function(data){
					//alert(data);
					createDropdrownList("param"+fileName+"",data,option);
				}
			 });
		 
		 
	 };
	 
	 
	 var callAjaxForDropDrowListRegion = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				success:function(data){
					createDropdrownListCastCase("param"+fileName+"",data,option);
					option=[];
					option['filed']=2;
					option['parameter']="'"+$("#paramRegion option:selected").val()+"'";
					callAjaxForDropDrowListProvince("Province",option);
				}
			 });
		 
		 
	 };
	 var callAjaxForDropDrowListProvince = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				data:{"regionParam":option['parameter']+""},
				success:function(data){
					//alert(data);
					createDropdrownList("param"+fileName+"",data,option);
				}
			 });
		 
		 
	 };
	 
	 //CastCase DropdrownList NotCallType
	 var callAjaxForDropDrowListNotCallType = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				success:function(data){
					createDropdrownListCastCase("param"+fileName+"",data,option);
					option=[];
					option['filed']=1;
					option['parameter']="'"+$("#paramNotCallType option:selected").val()+"'";
					callAjaxForDropDrowListNotCallAbnormolly("NotCallAbnormolly",option);
				}
			 });
		 
		 
	 };
	 
	 var callAjaxForDropDrowListNotCallAbnormolly = function(fileName,option){
		 
		 $.ajax({
				url:"../Model/"+fileName+".jsp",
				type:"get",
				async:false,
				dataType:"json",
				data:{"NotCallAbnormollyParam":option['parameter']},
				success:function(data){
					//alert(data);
					createDropdrownList("param"+fileName+"",data,option);
				}
			 });
		 
		 
	 };
	  
	 
	 //function create drowdown area end
	 