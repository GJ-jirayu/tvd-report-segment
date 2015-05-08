<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select SMS_FLAG
from
(SELECT 
'All' as SMS_FLAG
from dual
UNION
SELECT DISTINCT
SMS_FLAG
FROM DIM_CUSTOMER
)SMS_FLAG
ORDER BY SMS_FLAG
*/
    	  String  query=" select SMS_FLAG";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as SMS_FLAG ,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" SMS_FLAG ,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )SMS_FLAG";
    	  		  query+=" ORDER BY sq,SMS_FLAG";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
