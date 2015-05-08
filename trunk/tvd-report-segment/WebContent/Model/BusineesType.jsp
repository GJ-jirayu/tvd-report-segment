<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select BUSINESS_TYPE_CODE
,BUSINESS_TYPE_NAME
from
(SELECT 
'All' as BUSINESS_TYPE_CODE
,'All' as BUSINESS_TYPE_NAME
from dual
UNION
SELECT DISTINCT
BUSINESS_TYPE_CODE,
BUSINESS_TYPE_NAME
FROM DIM_CUSTOMER
)BUSINESS_TYPE
order by BUSINESS_TYPE_NAME

*/
    	  String  query=" select BUSINESS_TYPE_CODE";
    	  		  query+="  ,BUSINESS_TYPE_CODE||'-'||BUSINESS_TYPE_NAME AS BUSINESS_TYPE_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as BUSINESS_TYPE_CODE ,0 as sq1,";
    	  		  query+=" 'All' as BUSINESS_TYPE_NAME ,0 as sq2";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" BUSINESS_TYPE_CODE,1 as sq1,";
    	  		  query+=" BUSINESS_TYPE_NAME,1 as sq2";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )BUSINESS_TYPE";
    	  		  query+=" ORDER BY SQ1, ";
    	  		  query+="  CASE BUSINESS_TYPE_CODE ";
    	  		  query+="   WHEN 'All' THEN 0" ;
    	  		  query+="   WHEN 'N/A' THEN 99 ";
    	  		  query+="   ELSE TO_NUMBER(BUSINESS_TYPE_CODE) ";
    	  		  query+="  END ";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
