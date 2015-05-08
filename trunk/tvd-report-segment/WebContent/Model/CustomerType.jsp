<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";

/* String  query=" select CUSTOMER_TYPE_CODE,CUSTOMER_TYPE_NAME";
   query+=" from";
   query+=" (SELECT ";
   query+=" 'All' as CUSTOMER_TYPE_CODE,0 as sq";
   query+=" ,'All' as CUSTOMER_TYPE_NAME";
   query+=" from dual";
   query+=" UNION";
   query+=" SELECT DISTINCT";
   query+=" CUSTOMER_TYPE_CODE,1 as sq";
   query+=" ,CUSTOMER_TYPE_NAME";
   query+=" FROM DIM_CUSTOMER";
   query+=" )CUSTOMER_TYPE";
   query+=" ORDER BY sq,CUSTOMER_TYPE_CODE"; */
		    	 
   String  query="SELECT CUSTOMER_TYPE_CODE, CUSTOMER_TYPE_CODE||'-'||CUSTOMER_TYPE_NAME as CUSTOMER_TYPE_NAME";
		   query+=" FROM ";
		   query+="  (SELECT 'All' AS CUSTOMER_TYPE_CODE, ";
		   query+="   0           AS sq , ";
		   query+="   'All'       AS CUSTOMER_TYPE_NAME ";
		   query+="  FROM dual ";
		   query+="  UNION ";
		   query+="   SELECT DISTINCT CUSTOMER_TYPE_CODE, ";
		   query+="     1 AS sq , ";
		   query+="     CUSTOMER_TYPE_NAME ";
		   query+="   FROM DIM_CUSTOMER ";
		   query+="   )CUSTOMER_TYPE ";
		   query+=" ORDER BY SQ, "; 
		   query+="   CASE CUSTOMER_TYPE_CODE ";
		   query+="     WHEN 'All' THEN 0 ";
		   query+="     WHEN 'N/A' THEN 0 ";
		   query+="     WHEN '-99' THEN 0 ";
		   query+="     ELSE TO_NUMBER(CUSTOMER_TYPE_CODE) ";
		   query+="   END ";
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
