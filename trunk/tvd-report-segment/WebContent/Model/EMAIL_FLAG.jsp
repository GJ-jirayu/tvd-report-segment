<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select EMAIL_FLAG
from
(SELECT 
'All' as EMAIL_FLAG
from dual
UNION
SELECT DISTINCT
EMAIL_FLAG
FROM DIM_CUSTOMER
)EMAIL_FLAG
ORDER BY EMAIL_FLAG
*/
    	  String  query=" select EMAIL_FLAG";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as EMAIL_FLAG,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" EMAIL_FLAG,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )EMAIL_FLAG";
    	  		  query+=" ORDER BY sq,EMAIL_FLAG";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
