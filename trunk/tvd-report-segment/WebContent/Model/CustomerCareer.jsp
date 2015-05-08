<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*

select CUSTOMER_CAREER
from
(SELECT 
'All' as CUSTOMER_CAREER
from dual
UNION
SELECT DISTINCT
CUSTOMER_CAREER
FROM DIM_CUSTOMER
)CUSTOMER_CAREER
ORDER BY CUSTOMER_CAREER


*/

    	  String  query=" select CUSTOMER_CAREER";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CUSTOMER_CAREER,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" CUSTOMER_CAREER,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )CUSTOMER_CAREER";
    	  		  query+=" ORDER BY sq,CUSTOMER_CAREER";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
