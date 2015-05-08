<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
OrderStatus

SELECT ORDER_STATUS_CODE
,ORDER_STATUS_NAME
FROM
(SELECT 
'All' as ORDER_STATUS_CODE
,'All' as ORDER_STATUS_NAME
from dual
UNION
SELECT DISTINCT ORDER_STATUS_CODE
,ORDER_STATUS_NAME
FROM DIM_ORDER_STATUS
)ORDER_STATUS_CODE
ORDER BY ORDER_STATUS_CODE

*/
String  query=" select ORDER_STATUS_CODE";
  query+=" ,ORDER_STATUS_NAME";
  query+=" from";
  query+=" (SELECT ";
  query+=" 'All' as ORDER_STATUS_CODE ,0 as sq1";
  query+="  ,'All' as ORDER_STATUS_NAME";
  query+=" from dual";
  query+=" UNION";
  query+=" SELECT";
  query+=" ORDER_STATUS_CODE,1 as sq1";
  query+="  ,ORDER_STATUS_NAME";
  query+=" FROM DIM_ORDER_STATUS";
  query+=" )ORDER_STATUS_CODE";
  query+=" ORDER BY sq1,ORDER_STATUS_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
