<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select CUSTOMER_GENDER
from
(SELECT 
'All' as CUSTOMER_GENDER
from dual
UNION
SELECT DISTINCT
CUSTOMER_GENDER
FROM DIM_CUSTOMER
)CUSTOMER_GENDER
ORDER BY CUSTOMER_GENDER
 */

    	  String  query=" select CUSTOMER_GENDER";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CUSTOMER_GENDER,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" CUSTOMER_GENDER,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )CUSTOMER_GENDER";
    	  		  query+=" ORDER BY sq,CUSTOMER_GENDER";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
