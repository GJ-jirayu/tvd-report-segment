 //address info
	 var callParameterAddressInfo = function(){
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("AccommodationType",option);
	 /*
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("Region",option);
	 */
	 //CastCase Start
	 option=[];
	 option['filed']=2;
	 option['valueDefalult']='All';
	 callAjaxForDropDrowListRegion("Region",option);
	 $("select#paramRegion").change(function(){
			//alert("hellow"); 
			option=[];
			option['filed']=2;
			var parameter="";
			var i=0;
			$("#paramRegion option:selected").each(function(){
				if(i==0){
				parameter+="'"+$(this).val()+"'";	
				}else{
				parameter+=",'"+$(this).val()+"'";
				}
				i++;
			});
			option['parameter']=parameter;
			callAjaxForDropDrowListProvince("Province",option);
		 });
	 //CastCase End
	 
	 
	 /*
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("Province",option);
	 */
	 
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("AddressType",option);
	 
	 
	 
	 option=[];
	 option['filed']=1;
	 option['valueDefalult']='A,B,C';
	 callAjaxForDropDrowListMitiDefault("AddressGrade",option);
	 
	 };