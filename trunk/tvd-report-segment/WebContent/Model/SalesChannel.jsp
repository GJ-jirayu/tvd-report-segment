<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
SalesChannel

SELECT SALES_CHANNEL_CODE
,SALES_CHANNEL_NAME
FROM
(SELECT 
'All' as SALES_CHANNEL_CODE
,'All' as SALES_CHANNEL_NAME
from dual
UNION
SELECT DISTINCT SALES_CHANNEL_CODE
,SALES_CHANNEL_NAME
FROM DIM_SALES_CHANNEL
)SALES_CHANNEL_CODE
ORDER BY SALES_CHANNEL_CODE

*/
    	  String  query=" select SALES_CHANNEL_CODE";
    	  		  query+=" ,SALES_CHANNEL_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as SALES_CHANNEL_CODE ,0 as sq1";
    	  		  query+="  ,'All' as SALES_CHANNEL_NAME";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" SALES_CHANNEL_CODE,1 as sq1";
    	  		  query+="  ,SALES_CHANNEL_NAME";
    	  		  query+=" FROM DIM_SALES_CHANNEL";
    	  		  query+=" )SALES_CHANNEL_CODE";
    	  		  query+=" ORDER BY sq1,SALES_CHANNEL_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
