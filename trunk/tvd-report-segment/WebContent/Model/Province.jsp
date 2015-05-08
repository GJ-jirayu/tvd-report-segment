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
String regionParam = request.getParameter("regionParam");

    	  String  query=" select PROVINCE_CODE";
    	  		  query+="  ,PROVINCE_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as PROVINCE_CODE ,0 as sq1,";
    	  		  query+=" 'All' as PROVINCE_NAME ,0 as sq2";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" PROVINCE_CODE,1 as sq1,";
    	  		  query+=" PROVINCE_NAME,1 as sq2";
    	  		  query+=" FROM DIM_ADDRESS";
    	  		  //query+=" WHERE REGION_CODE IN(1,10)";
    	  		  query+=" WHERE (REGION_CODE IN("+regionParam+") or "+regionParam+" in('All'))";
    	  		  query+=" )PROVINCE_CODE";
    	  		  query+=" ORDER BY sq1,PROVINCE_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
