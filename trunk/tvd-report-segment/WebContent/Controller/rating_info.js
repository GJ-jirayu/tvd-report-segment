	 //rating info
	 var callParameterRatingInfo = function(){
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("ProductRatingGroup",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("Rating",option);
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("NotRating",option);
	 };
	 