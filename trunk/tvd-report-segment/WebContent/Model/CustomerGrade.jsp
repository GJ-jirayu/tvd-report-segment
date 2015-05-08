<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select CUSTOMER_GRADE
from
(SELECT 
'All' as CUSTOMER_GRADE
from dual
UNION
SELECT DISTINCT
CUSTOMER_GRADE
FROM DIM_CUSTOMER
)CUSTOMER_GRADE
ORDER BY CUSTOMER_GRADE
*/
    	  String  query=" select CUSTOMER_GRADE";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CUSTOMER_GRADE,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" CUSTOMER_GRADE,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )CUSTOMER_GRADE";
    	  		  query+=" ORDER BY sq,CUSTOMER_GRADE";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
