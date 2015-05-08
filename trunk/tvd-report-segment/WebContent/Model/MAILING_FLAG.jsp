<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select MAILING_FLAG
from
(SELECT 
'All' as MAILING_FLAG
from dual
UNION
SELECT DISTINCT
MAILING_FLAG
FROM DIM_CUSTOMER
)MAILING_FLAG
ORDER BY MAILING_FLAG
*/
    	  String  query=" select MAILING_FLAG";
    	  		  query+=" from";
    	  		  query+=" (SELECT";
    	  		  query+=" 'All' as MAILING_FLAG ,0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" MAILING_FLAG,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )MAILING_FLAG";
    	  		  query+=" ORDER BY sq,MAILING_FLAG";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
