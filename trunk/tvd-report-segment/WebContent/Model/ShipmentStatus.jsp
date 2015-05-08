<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
ShipmentStatus

SELECT SHIPMENT_STATUS_CODE
,SHIPMENT_STATUS_NAME
FROM
(SELECT 
'All' as SHIPMENT_STATUS_CODE
,'All' as SHIPMENT_STATUS_NAME
from dual
UNION
SELECT DISTINCT SHIPMENT_STATUS_CODE
,SHIPMENT_STATUS_NAME
FROM DIM_SHIPMENT_STATUS
)SHIPMENT_STATUS_CODE
ORDER BY SHIPMENT_STATUS_CODE


*/
String  query=" select SHIPMENT_STATUS_CODE";
query+=" ,SHIPMENT_STATUS_NAME";
query+=" from";
query+=" (SELECT ";
query+=" 'All' as SHIPMENT_STATUS_CODE ,0 as sq1";
query+="  ,'All' as SHIPMENT_STATUS_NAME";
query+=" from dual";
query+=" UNION";
query+=" SELECT";
query+=" DISTINCT SHIPMENT_STATUS_CODE,1 as sq1";
query+="  ,SHIPMENT_STATUS_NAME";
query+=" FROM DIM_SHIPMENT_STATUS";
query+=" )SHIPMENT_STATUS_CODE";
query+=" ORDER BY sq1,SHIPMENT_STATUS_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
