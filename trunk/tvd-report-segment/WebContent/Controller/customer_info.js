//cstomer info start
	 var callParameterCustomerInfo = function(){
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
	 //option['valueDefalult']='All';
	 callAjaxForDropDrowList("CustomerGrade",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("CustomerSegment",option);
	 option=[];
	 option['filed']=2;
	 option['valueDefalult']=13;
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
	 };