 //campign email
	 var callParameterCampaignEmailInfo = function(){
	 option=[];
	 option['filed']=1;
	 option['typeValue']="single";
	
	 callAjaxForDropDrowList("MailCampaignCreatedYear",option);
	 option=[];
	 option['filed']=2;
	 option['valueDefalult']=-1;
	 option['MailCampaignCerateDateStartParam']=$("#paramMailProgramCreatedDateStart").val();
	 option['MailCampaignCerateDateEndParam']=$("#paramMailProgramCreatedDateEnd").val();
	 callAjaxForDropDrowListMailCampaign("MailCampaign",option);
	 
	 //castcase MailCampaign  start
	 $("#paramMailProgramCreatedDateStart").change(function(){
			//alert("hellow"); 
			var parameter=$(this).val();
			//alert(parameter);
			option=[];
			option['filed']=2;
			option['MailCampaignCerateDateStartParam']=parameter;
			option['MailCampaignCerateDateEndParam']=$("#paramMailProgramCreatedDateEnd").val();
			 
			callAjaxForDropDrowListMailCampaign("MailCampaign",option);
		 });
	 
	 $("#paramMailProgramCreatedDateEnd").change(function(){
			//alert("hellow"); 
			var parameter=$(this).val();
			//alert(parameter);
			option=[];
			option['filed']=2;
			option['MailCampaignCerateDateStartParam']=$("#paramMailProgramCreatedDateStart").val();
			option['MailCampaignCerateDateEndParam']=parameter;
			 
			callAjaxForDropDrowListMailCampaign("MailCampaign",option);
		 });
	 
	 //castcase MailCampaign  end
	 
	 
	 
	 
	 
	 option=[];
	 option['filed']=2;
	 option['valueDefalult']=-1;
	 callAjaxForDropDrowList("MailProgram",option);
	 
	 //castcase mail program start
	 
	 $("#paramMailCampaign").change(function(){
		 
		 var parameter=$(this).val();
			//alert(parameter);
			option=[];
			option['filed']=2;
			option['MailCampaignParam']=parameter;
		    callAjaxForDropDrowListMailProgram("MailProgram",option);
	 });
	 
	 //castcase mail program end
	 
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("MailCampaignType",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("MailCampaignStatus",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("MailProgramStatus",option);
	 };