<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
Rating

select RATING
from
(SELECT 
'All' as RATING
from dual
UNION
SELECT DISTINCT RATING
FROM DIM_CUSTOMER_RATING
)CUSTOMER_RATING
ORDER BY RATING

*/
    	  String  query=" select RATING";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as RATING ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" DISTINCT RATING,1 as sq1";
    	  		  query+=" FROM DIM_CUSTOMER_RATING";
    	  		  query+=" )CUSTOMER_RATING";
    	  		  query+=" ORDER BY sq1,RATING";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
