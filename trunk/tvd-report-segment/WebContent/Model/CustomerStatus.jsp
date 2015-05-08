<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select CUSTOMER_STATUS_CODE
,CUSTOMER_STATUS_NAME
from
(SELECT 
'All' as CUSTOMER_STATUS_CODE
,'All' as CUSTOMER_STATUS_NAME
from dual
UNION
SELECT CUSTOMER_STATUS_CODE,
CUSTOMER_STATUS_NAME
FROM DIM_CUSTOMER
group by CUSTOMER_STATUS_CODE,
CUSTOMER_STATUS_NAME
)CUSTOMER_STATUS
order by CUSTOMER_STATUS_NAME
*/
  /* String  query=" select CUSTOMER_STATUS_CODE,CUSTOMER_STATUS_NAME";
  query+=" from";
  query+=" (SELECT ";
  query+=" 'All' as CUSTOMER_STATUS_CODE,0 as sq";
  query+=" ,'All' as CUSTOMER_STATUS_NAME";
  query+=" from dual";
  query+=" UNION"; 
  query+=" SELECT DISTINCT";
  query+=" CUSTOMER_STATUS_CODE,1 as sq";
  query+=" ,CUSTOMER_STATUS_NAME";
  query+=" FROM DIM_CUSTOMER";
  query+=" )CUSTOMER_STATUS";
  query+=" ORDER BY sq,CUSTOMER_STATUS_NAME"; */
  
  String query="SELECT CUSTOMER_STATUS_CODE, CUSTOMER_STATUS_CODE||'-'||CUSTOMER_STATUS_NAME AS CUSTOMER_STATUS_NAME";
  query+=" FROM (";
  query+="  SELECT "; 
  query+="    'All' as CUSTOMER_STATUS_CODE, ";
  query+="    0 AS SQ, ";
  query+="    'All' as CUSTOMER_STATUS_NAME" ;
  query+="  FROM DUAL ";
  query+=" UNION "; 
  query+="  SELECT DISTINCT ";
  query+="    CUSTOMER_STATUS_CODE, ";
  query+="    1 AS SQ, ";
  query+="    CUSTOMER_STATUS_NAME ";
  query+=" FROM DIM_CUSTOMER ";
  query+=" )CUSTOMER_STATUS ";
  query+=" WHERE CUSTOMER_STATUS_CODE <> 'N/A' ";
  query+=" ORDER BY SQ, CASE "; 
  query+="  WHEN CUSTOMER_STATUS_CODE = 'All' THEN 0 ";
  query+="  else TO_NUMBER(CUSTOMER_STATUS_CODE) end ";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
