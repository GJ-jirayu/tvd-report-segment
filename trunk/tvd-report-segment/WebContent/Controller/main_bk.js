
$(document).bind("ajaxSend", function(){
   // $("#loading").show();
    var widthImg=(screen.availWidth/2)-50;
	var	hieghtImg=(screen.availHeight/2)-50;
	$("#loading").css({"top":hieghtImg+"px","left":widthImg}).show();
	
 }).bind("ajaxComplete", function(){
   $("#loading").hide();
 });

$(document).ready(function(){
	var option = new Array();
	 /*#########################Ajax start##########################*/
	 /*
	 $("#loading").ajaxStart(function(){
	 	alert("ajax load");
	 	var widthImg=(screen.availWidth/2)-50;
	 	var	hieghtImg=(screen.availHeight/2)-50;
	 	$(this).css({"top":hieghtImg+"px","left":widthImg}).show();
	 	
	 });

	 //ajax Stop
	 $("#loading").ajaxComplete(function(){
	 	alert("ajax stop");
	 $(this).hide();

	 }); 
	 //alert("test loading");
	 
	 */
	 /*#########################Ajax stop##########################*/
	 
	$(".mutiSelect").multiselect({
		   header: false
	}); 
	$(".ui-multiselect-header").remove();
	 $( "button" ).button();
	 $( "#accordion" ).accordion();
	 $(".date").datepicker();
	 $(".date").datepicker( "option", "dateFormat", "yy-mm-dd" );
	 //$( ".date" ).datepicker( "option", "currentText", "All" );
	 $(".date").val("All");
	 $("#paramCustomerCreatedDateStart").val("2010-01-01");
	 $("#paramCustomerCreatedDateEnd").val("2014-01-01");
	 
	 $( ".date" ).datepicker({ "constrainInput": "false" });
	 
	 //SET PARAM ParamCustomerPrefix START
	 
	 //SET PARAM ParamCustomerPrefix END
	 
	 //SET DATE START
	 //date Time start
	 var today = new Date();
	 var dd = today.getDate();
	 var mm = today.getMonth()+1; //January is 0!
	 var yyyy = today.getFullYear();
	 
	 if (mm < 10) {
		    mm = '0' + mm;
		}

		if (dd < 10) {
		    dd = '0' + dd;
		}
	var CurrentDate=""+yyyy+"-"+mm+"-"+dd+"";
	 // history contact
	 
	 $("#paramContactDateStart").val("2014-02-01");
	 $("#paramContactDateEnd").val(CurrentDate);
	 $("#paramNotContactDateStart").val("2014-02-01");
	 $("#paramNotContactDateEnd").val(CurrentDate);
	 
	 //history order

	 $("#paramInvoiceCreatedDateStart").val("2014-01-01");
	 $("#paramInvoiceCreatedDateEnd").val(CurrentDate);
	 $("#paramNotInvoiceCreatedDateStart").val("2014-01-01");
	 $("#paramNotInvoiceCreatedDateEnd").val(CurrentDate);
	 $("#paramOrderCreatedDateStart").val("2014-01-01");
	 $("#paramOrderCreatedDateEnd").val(CurrentDate);
	 $("#paramNotOrderCreatedDateStart").val("2014-01-01");
	 $("#paramNotOrderCreatedDateStart").val(CurrentDate);
	 
	 //campaign info start
	 $("paramCalloutProgramCreatedDateStart").val("2014-01-01");
	 $("paramCalloutProgramCreatedDateEnd").val(CurrentDate);
	 //campaign info end
	 
	 //campaign mail start
	 $("paramMailProgramCreatedDateStart").val("2014-01-01");
	 $("paramMailProgramCreatedDateEnd").val(CurrentDate);
	 //campaign mail end
	 //SET DATE END
	 
	 //function create drowdown area start
	 var createDropdrownList = function(id,data,option){
		 var htmlSelect="<select id=\""+id+"\" name=\""+id+"\"  class=\"mutiSelect\" multiple=\"multiple\">";
		 if(option['filed']==2){
		 $.each(data,function(index,indexEntry){
			 
			 
				 if(indexEntry[0]=="All"){
				 htmlSelect+="<option selected value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }else{
				 htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[1]+"</option>";
				 }
			
		 });
		 }else if(option['filed']==1){
			 $.each(data,function(index,indexEntry){
				 
				 
				 if(indexEntry[0]=="All"){
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
	 
	 //function dropdown single list start
	 	
	 //function dropdown single list end
	 
	 //using parameter start
	 
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CustomerPrefix",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("CustomerType",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("Gender",option);
	 option=[];
	 option['filed']=2;
	 //CastCase Start
	 option['valueDefalult']=1;
	 callAjaxForDropDrowListCustomerStatus("CustomerStatus",option);
	 
	 $("select#paramCustomerStatus").change(function(){
		//alert("hellow"); 
		option=[];
		option['filed']=2;
		var parameter="";
		var i=0;
		$("#paramCustomerStatus option:selected").each(function(){
			//alert($(this).val());
			if(i==0){
			parameter+="'"+$(this).val()+"'";	
			}else{
			parameter+=",'"+$(this).val()+"'";
			}
			i++;
		});
		option['parameter']=parameter;
		
		callAjaxForDropDrowListSubStatus("CustomerSubStatus",option);
	 });
	 //CastCase End
	 
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("BusineesType",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CustomerGrade",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CustomerSegment",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("CustomerBirthMonthName",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CustomerCareer",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CreditCard",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("SMSFlag",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("PhoneFlag",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("MAILING_FLAG",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("EMAIL_FLAG",option);
	 /*
	 //address info
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("AccommodationType",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("Province",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("AddressType",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("AddressGrade",option);
	
	//emp info
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("SaleRep",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("Bu",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("EmpStatus",option);
	 
	 //history info
	 //CastCase Start
	 option=[];
	 option['filed']=1;
	 option['valueDefalult']='All';
	 callAjaxForDropDrowListCallType("CallType",option);
	 $("select#paramCallType").change(function(){
			//alert("hellow"); 
			option=[];
			option['filed']=1;
			var parameter="";
			var i=0;
			$("#paramCallType option:selected").each(function(){
				if(i==0){
				parameter+="'"+$(this).val()+"'";	
				}else{
				parameter+=",'"+$(this).val()+"'";
				}
				i++;
			});
			option['parameter']=parameter;
			callAjaxForDropDrowListCallAbnormolly("CallAbnormolly",option);
		 });
	 
	 
	 //CastCase End
	 
	 
	 //callAjaxForDropDrowListNotCallType
	//CastCase Start
	 option=[];
	 option['filed']=1;
	 option['valueDefalult']='outbound';
	 callAjaxForDropDrowListNotCallType("NotCallType",option);
	 $("select#paramNotCallType").change(function(){
			//alert("hellow"); 
			option=[];
			option['filed']=1;
			var parameter="";
			var i=0;
			$("#paramNotCallType option:selected").each(function(){
				if(i==0){
				parameter+="'"+$(this).val()+"'";	
				}else{
				parameter+=",'"+$(this).val()+"'";
				}
				i++;
			});
			option['parameter']=parameter;
			callAjaxForDropDrowListNotCallAbnormolly("NotCallAbnormolly",option);
		 });
	 
	 
	 //CastCase End
	
	 
	 
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CallReson",option);
	 
	 //option=[];
	 //option['filed']=1;
	 //callAjaxForDropDrowList("CallAbnormolly",option);
	 
	 //option=[];
	 //option['filed']=1;
	 //callAjaxForDropDrowList("NotCallAbnormolly",option);
	
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CallResultName",option);
	 
	 //history order
	 
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("SalesChannel",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("OrderStatus",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("ShipmentStatus",option);
	 
	 //history payment
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("PaymentTerm",option);
	 
	 //campiagn info 
	 option=[];
	 option['filed']=1;
	 option['typeValue']="single";
	 callAjaxForDropDrowList("CalloutCampaignCreatedYear",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("CalloutCampaign",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CalloutProgram",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("CalloutCampaignType",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CalloutCampaignStatus",option);
	
	 //campign email
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("MailCampaignCreatedYear",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("MailCampaign",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("MailProgram",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("MailCampaignType",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("MailCampaignStatus",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("MailProgramStatus",option);
	
	
	 //rating info
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("ProductRatingGroup",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("Rating",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("NotRating",option);
	
	 */
	 
	 $("#submit").click(function(){
		 
		
		 var parameter="";
		 //customer info start
		 	parameter+="?paramCustomerCode="+$("#paramCustomerCode").val();
			
			$("#paramCustomerPrefix option:selected").each(function(){
				parameter+="&paramCustomerPrefix="+$(this).val();
			});
			
			parameter+="&paramCustomerFirstName="+$("#paramCustomerFirstName").val();
			parameter+="&paramCustomerLastName="+$("#paramCustomerLastName").val();
			
			
			$("#paramGender  option:selected").each(function(){
				parameter+="&paramGender="+$(this).val();
			});
			
			$("#paramCustomerType option:selected").each(function(){
				parameter+="&paramCustomerType="+$(this).val();
			});
			
			$("#paramCustomerStatus option:selected").each(function(){
				parameter+="&paramCustomerStatus="+$(this).val();
			});
			
			$("#paramCustomerSubStatus option:selected").each(function(){
				parameter+="&paramCustomerSubStatus="+$(this).val();
			});
			
			$("#paramCustomerSegment option:selected").each(function(){
				parameter+="&paramCustomerSegment="+$(this).val();
			});
			
			$("#paramBusineesType option:selected").each(function(){
				parameter+="&paramBusineesType="+$(this).val();
			});
			
			$("#paramCustomerGrade option:selected").each(function(){
				parameter+="&paramCustomerGrade="+$(this).val();
			});
			
			$("#paramCustomerBirthMonthName option:selected").each(function(){
				parameter+="&paramCustomerBirthMonthName="+$(this).val();
			});
			
			parameter+="&paramCustomerBirthDateStart="+$("#paramCustomerBirthDateStart").val();
			parameter+="&paramCustomerBirthDateEnd="+$("#paramCustomerBirthDateEnd").val();
			
			parameter+="&paramCustomerCreatedDateStart="+$("#paramCustomerCreatedDateStart").val();
			parameter+="&paramCustomerCreatedDateEnd="+$("#paramCustomerCreatedDateEnd").val();
			
			parameter+="&paramAgeStart="+$("#paramAgeStart").val();
			parameter+="&paramAgeEnd="+$("#paramAgeEnd").val();
			
			$("#paramCustomerCareer option:selected").each(function(){
				parameter+="&paramCustomerCareer="+$(this).val();
			});
			
			$("#paramCreditCard option:selected").each(function(){
				parameter+="&paramCreditCard="+$(this).val();
			});
			
			$("#paramPhoneFlag option:selected").each(function(){
				parameter+="&paramPhoneFlag="+$(this).val();
			});
			
			$("#paramSMSFlag option:selected").each(function(){
				parameter+="&paramSMSFlag="+$(this).val();
			});
			
			$("#paramMAILING_FLAG option:selected").each(function(){
				parameter+="&paramMAILING_FLAG="+$(this).val();
			});
			
			$("#paramEMAIL_FLAG option:selected").each(function(){
				parameter+="&paramEMAIL_FLAG="+$(this).val();
			});
			
			//customer info end
			
			//address info start
			
			
			parameter+="&paramAddressLocation="+$("#paramAddressLocation").val();
			
			
			$("#paramAccommodationType option:selected").each(function(){
				parameter+="&paramAccommodationType="+$(this).val();
			});
			
			
			
			parameter+="&paramAddressNumber="+$("#paramAddressNumber").val();
			
			
			parameter+="&paramMoo="+$("#paramMoo").val();
		
			parameter+="&paramSoi="+$("#paramSoi").val();
			
			parameter+="&paramRoad="+$("#paramRoad").val();
			
			parameter+="&paramTumbon="+$("#paramTumbon").val();
			
			parameter+="&paramAmphur="+$("#paramAmphur").val();
			
			
			$("#paramProvince option:selected").each(function(){
				parameter+="&paramProvince="+$(this).val();
			});
			
			
			parameter+="&paramRegionCode="+$("#paramRegionCode").val();
			
			
			parameter+="&paramRegionName="+$("#paramRegionName").val();
			
			
			$("#paramAddressType option:selected").each(function(){
				parameter+="&paramAddressType="+$(this).val();
			});
			
			$("#paramAddressGrade option:selected").each(function(){
				parameter+="&paramAddressGrade="+$(this).val();
			});

			//address info end
			
			
			//employee info start
		
			$("#paramSaleRep option:selected").each(function(){
				parameter+="&paramSaleRep="+$(this).val();
			});

			
			parameter+="&paramSaleRepCode="+$("#paramSaleRepCode").val();
			
			
			parameter+="&paramSaleRepFirstName="+$("#paramSaleRepFirstName").val();
			
			
			parameter+="&paramSaleRepLastName="+$("#paramSaleRepLastName").val();
			
			
			$("#paramBu option:selected").each(function(){
				parameter+="&paramBu="+$(this).val();
			});

			
			$("#paramEmpStatus option:selected").each(function(){
				parameter+="&paramEmpStatus="+$(this).val();
			});


			//employee info end
			
			//history contact start
			
			parameter+="&paramContactDateStart="+$("#paramContactDateStart").val();
			
			parameter+="&paramContactDateEnd="+$("#paramContactDateEnd").val();
			
			parameter+="&paramNotContactDateStart="+$("#paramNotContactDateStart").val();
			
			parameter+="&paramNotContactDateEnd="+$("#paramNotContactDateEnd").val();
			
			
			$("#paramCallType option:selected").each(function(){
				parameter+="&paramCallType="+$(this).val();
			});

			
			$("#paramNotCallType option:selected").each(function(){
				parameter+="&paramNotCallType="+$(this).val();
			});

			
			$("#paramCallReson option:selected").each(function(){
				parameter+="&paramCallReson="+$(this).val();
			});

			
			$("#paramCallAbnormolly option:selected").each(function(){
				parameter+="&paramCallAbnormolly="+$(this).val();
			});

			
			$("#paramNotCallAbnormolly option:selected").each(function(){
				parameter+="&paramNotCallAbnormolly="+$(this).val();
			});

			
			$("#paramCallResultName option:selected").each(function(){
				parameter+="&paramCallResultName="+$(this).val();
			});


			//history contact end
			
			
			//history order start
			
			parameter+="&paramInvoiceCreatedDateStart="+$("#paramInvoiceCreatedDateStart").val();
			
			parameter+="&paramInvoiceCreatedDateEnd="+$("#paramInvoiceCreatedDateEnd").val();
			
			parameter+="&paramNotInvoiceCreatedDateStart="+$("#paramNotInvoiceCreatedDateStart").val();
			
			parameter+="&paramNotInvoiceCreatedDateEnd="+$("#paramNotInvoiceCreatedDateEnd").val();
			
			parameter+="&paramOrderCreatedDateStart="+$("#paramOrderCreatedDateStart").val();
			
			parameter+="&paramOrderCreatedDateEnd="+$("#paramOrderCreatedDateEnd").val();
			
			parameter+="&paramNotOrderCreatedDateStart="+$("#paramNotOrderCreatedDateStart").val();
			
			parameter+="&paramNotOrderCreatedDateEnd="+$("#paramNotOrderCreatedDateEnd").val();
			
			parameter+="&paramInvoiceCode="+$("#paramInvoiceCode").val();
			
			parameter+="&paramOrderCode="+$("#paramOrderCode").val();
			
			parameter+="&paramProductCode="+$("#paramProductCode").val();
			
			parameter+="&paramNotProductCode="+$("#paramNotProductCode").val();
			
			parameter+="&paramProductName="+$("#paramProductName").val();
			
			parameter+="&paramNotProductName="+$("#paramNotProductName").val();
			
			parameter+="&paramFrequencyStart="+$("#paramFrequencyStart").val();
			
			parameter+="&paramFrequencyEnd="+$("#paramFrequencyEnd").val();
			
			parameter+="&paramInvoiceAmountStart="+$("#paramInvoiceAmountStart").val();
			
			parameter+="&paramInvoiceAmountEnd="+$("#paramInvoiceAmountEnd").val();
			
			parameter+="&paramRetailPriceStart="+$("#paramRetailPriceStart").val();
			
			parameter+="&paramRetailPriceEnd="+$("#paramRetailPriceEnd").val();
			
			parameter+="&paramOrderAmountStart="+$("#paramOrderAmountStart").val();
			
			parameter+="&paramOrderAmountEnd="+$("#paramOrderAmountEnd").val();
			
			parameter+="&paramShipmentDateStart="+$("#paramShipmentDateStart").val();
			
			parameter+="&paramShipmentDateEnd="+$("#paramShipmentDateEnd").val();
			
			
			$("#paramSalesChannel option:selected").each(function(){
				parameter+="&paramSalesChannel="+$(this).val();
			});
			
			$("#paramOrderStatus option:selected").each(function(){
				parameter+="&paramOrderStatus="+$(this).val();
			});
			
			$("#paramShipmentStatus option:selected").each(function(){
				parameter+="&paramShipmentStatus="+$(this).val();
			});

			//history order end
			
			//history payment start
			
			$("#paramPaymentTerm option:selected").each(function(){
				parameter+="&paramPaymentTerm="+$(this).val();
			});
			//history payment end
			
			//campiagn info start
			
			parameter+="&paramCalloutCampaignCode="+$("#paramCalloutCampaignCode").val();
			
			parameter+="&paramCalloutCampaignName="+$("#paramCalloutCampaignName").val();
			

			$("#paramCalloutCampaignCreatedYear option:selected").each(function(){
				parameter+="&paramCalloutCampaignCreatedYear="+$(this).val();
			});
		
			parameter+="&paramCalloutProgramCreatedDateStart="+$("#paramCalloutProgramCreatedDateStart").val();
			
		
			parameter+="&paramCalloutProgramCreatedDateEnd="+$("#paramCalloutProgramCreatedDateEnd").val();
			

			$("#paramCalloutCampaign option:selected").each(function(){
				parameter+="&paramCalloutCampaign="+$(this).val();
			});
			
			$("#paramCalloutProgram option:selected").each(function(){
				parameter+="&paramCalloutProgram="+$(this).val();
			});

			$("#paramCalloutCampaignType option:selected").each(function(){
				parameter+="&paramCalloutCampaignType="+$(this).val();
			});
			
			$("#paramCalloutCampaignStatus option:selected").each(function(){
				parameter+="&paramCalloutCampaignStatus="+$(this).val();
			});

			//campiagn info end
			
			//campaign email info start
	
			parameter+="&paramMailCampaignCode="+$("#paramMailCampaignCode").val();
	
			parameter+="&paramMailCampaignName="+$("#paramMailCampaignName").val();
	
			$("#paramMailCampaignCreatedYear option:selected").each(function(){
				parameter+="&paramMailCampaignCreatedYear="+$(this).val();
			});

			parameter+="&paramMailProgramCreatedDateStart="+$("#paramMailProgramCreatedDateStart").val();
			

			parameter+="&paramMailProgramCreatedDateEnd="+$("#paramMailProgramCreatedDateEnd").val();
			
			
			$("#paramMailCampaign option:selected").each(function(){
				parameter+="&paramMailCampaign="+$(this).val();
			});
			
			$("#paramMailProgram option:selected").each(function(){
				parameter+="&paramMailProgram="+$(this).val();
			});
			
			$("#paramMailCampaignType option:selected").each(function(){
				parameter+="&paramMailCampaignType="+$(this).val();
			});
			
			$("#paramMailCampaignStatus option:selected").each(function(){
				parameter+="&paramMailCampaignStatus="+$(this).val();
			});
			
			$("#paramMailProgramStatus option:selected").each(function(){
				parameter+="&paramMailProgramStatus="+$(this).val();
			});
			//campaign email info end
			
			//rating info start
			
			$("#paramProductRatingGroup option:selected").each(function(){
				parameter+="&paramProductRatingGroup="+$(this).val();
			});
			
			$("#paramRating option:selected").each(function(){
				parameter+="&paramRating="+$(this).val();
			});
			
			$("#paramNotRating option:selected").each(function(){
				parameter+="&paramNotRating="+$(this).val();
			});

			//rating info end
			
			console.log(parameter);
			 $.ajax({
					url:"../Model/CheckStatusInBackground.jsp",
					type:"get",
					async:false,
					dataType:"json",
					success:function(data){
						
						
						if(data=="process_empty"){
							//alert("ok");
							
							$.ajax({
								//"url":"http://localhost:8080/pentaho/content/reporting/execute/SA_WORK/link3.html",
								url:"http://10.10.2.62:8080/pentaho/content/reporting/execute/Segment_Report/Segment_Report.html"+parameter+"&name=Segment_Report.prpt&solution=Segment_Report&output-target=table%2Fhtml%3Bpage-mode%3Dpage&accepted-page=0&showParameters=true&renderMode=REPORT&htmlProportionalWidth=false",
								type:"get",
								dataType:"html",
								//data:{"paramCustomerFirstName":""+parameter+"","param_2":"test2","name":"link3.prpt","solution":"SA_WORK"},
								success:function(data){
									//alert(data);
									
								}
							});
							alert("Send Parameter successfully \nPlease Check your Email about 1 Hour.");
							
						}else{
							alert("Process is Running Plaese Wait..");
						}
						
					}
				 });
		
	 });
	 
	 
	 /*
	  test 2
	  http://localhost:8080/pentaho/content/reporting/execute/SA_WORK/link2.html?param_1=3
	  &param_2=%E0%B8%A0%E0%B8%B2%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%97%E0%B8%A21&name=link2.prpt
	  &solution=SA_WORK&output-target=table%2Fhtml%3Bpage-mode%3Dpage&accepted-page=0&showParameters=true
	  &renderMode=REPORT&htmlProportionalWidth=false
	  
	  http://localhost:8080/pentaho/content/reporting/reportviewer/report.html?param_1=1
	 &param_2=%E0%B8%A0%E0%B8%B2%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%97%E0%B8%A2&name=link2.prpt
	 &path=&solution=SA_WORK
	 
	 http://10.10.2.62:8080/pentaho/content/reporting/reportviewer/Segment_Report.html?param_1=1
	 &param_2=%E0%B8%A0%E0%B8%B2%E0%B8%A9%E0%B8%B2%E0%B9%84%E0%B8%97%E0%B8%A2&name=Segment_Report.prpt
	 &path=&solution=Segment_Report
	 
	 //this link is correct
	 http://10.10.2.62:8080/pentaho/content/reporting/execute/Segment_Report/Segment_Report.html??paramCustomerCode=All&paramCustomerPrefix=All&paramCustomerPrefix=0-N/A&paramCustomerPrefix=10-%E0%B8%99%E0%B8%B2%E0%B8%87&paramCustomerPrefix=100-%E0%B8%81%E0%B8%B3%E0%B8%99%E0%B8%B1%E0%B8%99&paramCustomerPrefix=101-%E0%B9%80%E0%B8%88%E0%B9%89%E0%B8%B2%E0%B8%AD%E0%B8%B2%E0%B8%A7%E0%B8%B2%E0%B8%AA&paramCustomerFirstName=All&paramCustomerLastName=All&paramGender=All&paramCustomerType=All&paramCustomerStatus=%E0%B8%A5%E0%B8%B9%E0%B8%81%E0%B8%84%E0%B9%89%E0%B8%B2%E0%B8%97%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%84%E0%B8%9B&paramCustomerSubStatus=All&paramCustomerSegment=All&paramBusineesType=All&paramCustomerGrade=All&paramCustomerBirthDateStart=All&paramCustomerBirthDateEnd=All&paramCustomerCreatedDateStart=2010-01-01&paramCustomerCreatedDateEnd=2014-01-01&paramAgeStart=All&paramAgeEnd=All&paramCustomerCareer=All&paramPhoneFlag=All&paramSMSFlag=All&paramMAILING_FLAG=All&paramEMAIL_FLAG=All&paramAddressLocation=All&paramAccommodationType=All&paramAddressNumber=All&paramMoo=All&paramSoi=All&paramRoad=All&paramTumbon=All&paramAmphur=All&paramProvince=All&paramRegionCode=All&paramRegionName=All&paramAddressType=All&paramAddressGrade=All&paramSaleRep=All&paramSaleRepCode=All&paramSaleRepFirstName=All&paramSaleRepLastName=All&paramBu=All&paramEmpStatus=All&paramContactDateStart=2014-02-01&paramContactDateEnd=2014-03-28&paramNotContactDateStart=2014-02-01&paramNotContactDateEnd=2014-03-28&paramCallType=All&paramNotCallType=outbound&paramCallReson=All&paramCallAbnormolly=All&paramNotCallAbnormolly=All&paramCallResultName=All&paramInvoiceCreatedDateStart=2014-01-01&paramInvoiceCreatedDateEnd=2014-03-28&paramNotInvoiceCreatedDateStart=2014-01-01&paramNotInvoiceCreatedDateEnd=2014-03-28&paramOrderCreatedDateStart=2014-01-01&paramOrderCreatedDateEnd=2014-03-28&paramNotOrderCreatedDateStart=2014-03-28&paramNotOrderCreatedDateEnd=All&paramInvoiceCode=All&paramOrderCode=All&paramProductCode=All&paramNotProductCode=All&paramProductName=All&paramNotProductName=All&paramFrequencyStart=All&paramFrequencyEnd=All&paramInvoiceAmountStart=All&paramInvoiceAmountEnd=All&paramRetailPriceStart=All&paramRetailPriceEnd=All&paramOrderAmountStart=All&paramOrderAmountEnd=All&paramShipmentDateStart=All&paramShipmentDateEnd=All&paramSalesChannel=All&paramOrderStatus=All&paramShipmentStatus=All&paramPaymentTerm=All&paramCalloutCampaignCode=All&paramCalloutCampaignName=All&paramCalloutProgramCreatedDateStart=All&paramCalloutProgramCreatedDateEnd=All&paramCalloutProgram=All&paramCalloutCampaignType=All&paramCalloutCampaignStatus=All&paramMailCampaignCode=All&paramMailCampaignName=All&paramMailProgramCreatedDateStart=All&paramMailProgramCreatedDateEnd=All&paramMailCampaignType=All&paramMailCampaignStatus=All&paramMailProgramStatus=All&paramProductRatingGroup=All&paramRating=All&paramNotRating=All&name=Segment_Report.prpt&solution=Segment_Report&output-target=table%2Fhtml%3Bpage-mode%3Dpage&accepted-page=0&showParameters=true&renderMode=REPORT&htmlProportionalWidth=false
	 
	  */
	 
	 
	 /*
	  Example 
	  http://10.10.2.62:8080/pentaho/content/reporting/reportviewer/report.html
	  ?autoSubmit=false&solution=auditreport&path=%2Freport&name=report01.prpt
	  &locale=th_TH#Param_AreaCode=All&Param_BranchCode=001&Param_BranchCode=002
	  &Param_BranchCode=003&Param_Date_From=2013-09-25T00%253A00%253A00.000%252B0700
	  &Param_Date_To=2013-09-25T00%253A00%253A00.000%252B0700&Param_CashierCode_From=All
	  &Param_CashierCode_To=All&Param_Orderby=asc&Param_1_1=1%253A30&Param_1_2=1%253A30
	  &Param_1_3=1%253A00&Param_1_4=0%253A30&output-target=table%252Fhtml%253Bpage-mode%253Dstream
	  &%253A%253Asession=34d9971b-b408-11e3-9d70-a7fd3860d904&autoSubmit=false&showParameters=true
	  &solution=auditreport&path=%252Freport&name=report01.prpt&locale=th_TH
	  
	  shot
	  
	   
	  http://10.10.2.62:8080/pentaho/content/reporting/reportviewer/Segment_Report.html
	  ?autoSubmit=false&solution=Segment_Report&path=%2Freport&name=Segment_Report.prpt
	  &locale=th_TH#+ +&output-target=table%252Fhtml%253Bpage-mode%253Dstream
	  &%253A%253Asession=34d9971b-b408-11e3-9d70-a7fd3860d904&autoSubmit=false&showParameters=true
	  &solution=Segment_Report&path=%252Freport&name=Segment_Report.prpt&locale=th_TH
	  
	  
	  
	  http://10.10.2.62:8080/pentaho/content/reporting/reportviewer/Segment_Report.html?autoSubmit=false&solution=Segment_Report&path=%2Freport&name=Segment_Report.prpt&locale=th_TH#&solution=Segment_Report&path=%252Freport&name=Segment_Report.prpt&locale=th_TH
	  */
	 
	 /*
	 
	 //using parameter end
	 */
	
		
});
