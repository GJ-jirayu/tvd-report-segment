<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
MailProgramStatus

SELECT MAIL_PROGRAM_STATUS
FROM
(SELECT 
'All' as MAIL_PROGRAM_STATUS
from dual
UNION
SELECT DISTINCT MAIL_PROGRAM_STATUS
FROM FACT_MAIL_PROGRAM
)MAIL_PROGRAM_STATUS
ORDER BY MAIL_PROGRAM_STATUS

*/
    	  String  query=" select MAIL_PROGRAM_STATUS";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as MAIL_PROGRAM_STATUS ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" DISTINCT MAIL_PROGRAM_STATUS,1 as sq1";
    	  		  query+=" FROM FACT_MAIL_PROGRAM";
    	  		  query+=" )MAIL_PROGRAM_STATUS";
    	  		  query+=" ORDER BY sq1,MAIL_PROGRAM_STATUS";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
