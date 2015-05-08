 //history contact info
	 var callParameterHitoryContactInfo = function(){
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
	 };
	 