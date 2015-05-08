<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
//String query="SELECT current date FROM sysibm.sysdummy1";
/*
select PHONE_FLAG
from
(SELECT 
'All' as PHONE_FLAG
from dual
UNION
SELECT DISTINCT
PHONE_FLAG
FROM DIM_CUSTOMER
)PHONE_FLAG
ORDER BY PHONE_FLAG
*/
    	  String  query=" select PHONE_FLAG";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as PHONE_FLAG ,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" PHONE_FLAG ,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )PHONE_FLAG";
    	  		  query+=" ORDER BY PHONE_FLAG";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
