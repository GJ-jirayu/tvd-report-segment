 //function create drowdown area start

	 var createDropdrownListMutiDefault = function(id,data,option){
		 var valueDefault =option['valueDefalult'].split(",");
		 var htmlDropDownArray=new Array();
		 
		 
		// alert(valueDefault[0]);
		// alert(valueDefault[1]);
		// alert(valueDefault[2]);
		 
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
					 
					 	
					 
					 	// alert("valueDefault[index]"+valueDefault[index]+"==indexEntry[0]"+indexEntry[0]);
					 	 //alert(indexEntry[0]);
					 	htmlDropDownArray[index]="<option value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
					 	 $.each(valueDefault,function(index2,indexEntry2){
					 		//htmlSelect+="<option value=\""+indexEntry[0]+"\">"+indexEntry[0]+"</option>";
					 		 if(indexEntry2==indexEntry[0]){
					 			 //alert(indexEntry[0]);
					 		
					 			htmlDropDownArray[index]="<option selected value=\""+indexEntry[0]+"\" id="+indexEntry[0]+">"+indexEntry[0]+"</option>";
					 			
					 		 }
					 		
					 		/*
					 		 if(indexEntry2!=indexEntry[0]){
								 	
							}*/
					 		 
					 	 });
					 	
					 	
					 	
					 
					}
				 
				
			
			 });
			 
		 }
		 //alert(htmlDropDownArray);
		 htmlSelect+=htmlDropDownArray;
		 htmlSelect+="</select>";
		 //alert(htmlSelect);
		 //alert(option);
		 $("td#area"+id+"").html(htmlSelect);
		 
			 
			 
		 $(".mutiSelect").multiselect({
			   header: false
			});
		 
		 
		 
		 
		 
	 };
	 var callAjaxForDropDrowListMitiDefault= function(fileName,option){
		 
		 //alert("dropDrownListSelectMutiDefault");
		 
		 $.ajax({
			url:"../Model/"+fileName+".jsp",
			type:"get",
			async:false,
			dataType:"json",
			success:function(data){
				createDropdrownListMutiDefault("param"+fileName+"",data,option);
			}
		 });
	 };