<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select CREDITCARD_FLAG
from
(SELECT 
'All' as CREDITCARD_FLAG
from dual
UNION
SELECT DISTINCT
CREDITCARD_FLAG
FROM DIM_CUSTOMER
)CREDITCARD_FLAG
ORDER BY CREDITCARD_FLAG

*/
    	  String  query=" select CREDITCARD_FLAG";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CREDITCARD_FLAG,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" CREDITCARD_FLAG ,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )CREDITCARD_FLAG";
    	  		  query+=" ORDER BY sq,CREDITCARD_FLAG";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
