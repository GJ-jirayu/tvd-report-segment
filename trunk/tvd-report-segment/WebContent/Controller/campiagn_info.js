//campiagn info 
	 var callParameterCampaignInfo = function(){
	 option=[];
	 option['filed']=1;
	 option['typeValue']="single";
	 callAjaxForDropDrowList("CalloutCampaignCreatedYear",option);
	 
	 option=[];
	 option['filed']=2;
	 option['valueDefalult']='-1';
	 option['CallOutCampaignCerateDateStartParam']=$("#paramCalloutProgramCreatedDateStart").val();
	 option['CallOutCampaignCerateDateEndParam']=$("#paramCalloutProgramCreatedDateEnd").val();
	 
	 //alert(option['CallOutCampaignCerateDateStartParam']);
	 //alert(option['CallOutCampaignCerateDateEndParam']);
	 callAjaxForDropDrowListCalloutCampaign("CalloutCampaign",option);
	 
	//castcase CalloutCampaign  start
	 $("#paramCalloutProgramCreatedDateStart").change(function(){
			//alert("hellow"); 
			var parameter=$(this).val();
			//alert(parameter);
			option=[];
			option['filed']=2;
			option['CallOutCampaignCerateDateStartParam']=parameter;
			option['CallOutCampaignCerateDateEndParam']=$("#paramCalloutProgramCreatedDateEnd").val();
			 
			callAjaxForDropDrowListCalloutCampaign("CalloutCampaign",option);
		 });
	 
	 $("#paramCalloutProgramCreatedDateEnd").change(function(){
			//alert("hellow"); 
			var parameter=$(this).val();
			//alert(parameter);
			option=[];
			option['filed']=2;
			option['CallOutCampaignCerateDateStartParam']=$("#paramCalloutProgramCreatedDateStart").val();
			option['CallOutCampaignCerateDateEndParam']=parameter;
			 
			callAjaxForDropDrowListCalloutCampaign("CalloutCampaign",option);
		 });
	 
	 //castcase CalloutCampaign  end
	 
	 
	 option=[];
	 option['filed']=1;
	 option['CalloutCampaignParam']=$("#paramCalloutCampaign").val();
	
	 callAjaxForDropDrowListCalloutProgram("CalloutProgram",option);
	 option=[];
	 
    //castcase CalloutProgram start
	 
	 $("#paramCalloutCampaign").change(function(){
		 
		 var parameter=$(this).val();
			
			option=[];
			option['filed']=1;
			option['CalloutCampaignParam']=parameter;
			//alert(option['CalloutCampaignParam']);
			callAjaxForDropDrowListCalloutProgram("CalloutProgram",option);
	 });
	 
	 //castcase CalloutProgram end
	 
	 option['filed']=2;
	 callAjaxForDropDrowList("CalloutCampaignType",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CalloutCampaignStatus",option);
	 };