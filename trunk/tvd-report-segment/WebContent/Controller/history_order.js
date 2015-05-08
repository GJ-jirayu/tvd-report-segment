	 //history order
	 var callParameterHitoryOrderInfo = function(){
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("SalesChannel",option);
	 
	 option=[];
	 option['filed']=1;
	 callAjaxForDropDrowList("BuOrderType",option);
	 
	 
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("OrderStatus",option);
	 option=[];
	 option['filed']=2;
	 callAjaxForDropDrowList("ShipmentStatus",option);
	 };