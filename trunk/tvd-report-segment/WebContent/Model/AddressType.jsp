<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
AddressType

select ADDRESS_TYPE
from
(SELECT 
'All' as ADDRESS_TYPE
from dual
UNION
SELECT DISTINCT
ADDRESS_TYPE
FROM DIM_ADDRESS
)ADDRESS_TYPE
ORDER BY ADDRESS_TYPE


*/
    	  String  query=" select ADDRESS_TYPE";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as ADDRESS_TYPE ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" ADDRESS_TYPE,1 as sq1";
    	  		  query+=" FROM DIM_ADDRESS";
    	  		  query+=" )ADDRESS_TYPE";
    	  		  query+=" ORDER BY sq1,ADDRESS_TYPE";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
