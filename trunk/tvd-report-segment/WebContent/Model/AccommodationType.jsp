<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select ACCOMMODATION_TYPE_CODE
,ACCOMMODATION_TYPE_NAME
from
(SELECT 
'All' as ACCOMMODATION_TYPE_CODE
,'All' as ACCOMMODATION_TYPE_NAME
from dual
UNION
SELECT DISTINCT
ACCOMMODATION_TYPE_CODE
,ACCOMMODATION_TYPE_NAME
FROM DIM_ADDRESS
)ACCOMMODATION_TYPE_CODE
ORDER BY ACCOMMODATION_TYPE_CODE

*/
    	  String  query=" select ACCOMMODATION_TYPE_CODE";
    	  		  query+="  ,ACCOMMODATION_TYPE_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as ACCOMMODATION_TYPE_CODE ,0 as sq1,";
    	  		  query+=" 'All' as ACCOMMODATION_TYPE_NAME ,0 as sq2";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" ACCOMMODATION_TYPE_CODE,1 as sq1,";
    	  		  query+=" ACCOMMODATION_TYPE_NAME,1 as sq2";
    	  		  query+=" FROM DIM_ADDRESS";
    	  		  query+=" )ACCOMMODATION_TYPE_CODE";
    	  		  query+=" ORDER BY sq1,ACCOMMODATION_TYPE_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
