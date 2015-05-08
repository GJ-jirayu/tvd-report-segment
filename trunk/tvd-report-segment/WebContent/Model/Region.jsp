<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select PROVINCE_CODE
,PROVINCE_NAME
from
(SELECT 
'All' as PROVINCE_CODE
,'All' as PROVINCE_NAME
from dual
UNION
SELECT DISTINCT
PROVINCE_CODE
,PROVINCE_NAME
FROM DIM_ADDRESS
)PROVINCE_CODE
ORDER BY PROVINCE_CODE

*/

    	  String  query=" select REGION_CODE";
    	  		  query+="  ,REGION_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as REGION_CODE ,0 as sq1,";
    	  		  query+=" 'All' as REGION_NAME ,0 as sq2";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" REGION_CODE,1 as sq1,";
    	  		  query+=" REGION_NAME,1 as sq2";
    	  		  query+=" FROM DIM_ADDRESS";
    	  		  query+=" )REGION_CODE";
    	  		  query+=" ORDER BY sq1,REGION_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
