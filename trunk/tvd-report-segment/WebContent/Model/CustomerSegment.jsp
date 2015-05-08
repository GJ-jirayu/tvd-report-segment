<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
CustomerSegment

select CUSTOMER_SEGMENT
from
(SELECT 
'All' as CUSTOMER_SEGMENT
from dual
UNION
select CUSTOMER_SEGMENT
from DIM_CUSTOMER
GROUP BY CUSTOMER_SEGMENT
)CUSTOMER_SEGMENT
ORDER BY CUSTOMER_SEGMENT
*/
    	  String  query=" select CUSTOMER_SEGMENT";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CUSTOMER_SEGMENT,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" CUSTOMER_SEGMENT,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" GROUP BY CUSTOMER_SEGMENT";
    	  		  query+=" )CUSTOMER_SEGMENT";
    	  		  query+=" ORDER BY sq,CUSTOMER_SEGMENT";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
