<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select ADDRESS_GRADE
from
(SELECT 
'All' as ADDRESS_GRADE
from dual
UNION
SELECT DISTINCT
ADDRESS_GRADE

FROM DIM_ADDRESS
)ADDRESS_GRADE
ORDER BY ADDRESS_GRADE

*/
    	  String  query=" select ADDRESS_GRADE";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as ADDRESS_GRADE ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" ADDRESS_GRADE,1 as sq1";
    	  		  query+=" FROM DIM_ADDRESS";
    	  		  query+=" )ADDRESS_GRADE";
    	  		  query+=" ORDER BY sq1,ADDRESS_GRADE";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
