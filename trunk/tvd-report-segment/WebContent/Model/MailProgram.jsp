<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
MailProgram

select MAIL_PROGRAM_KEY
,MAIL_PROGRAM_NAME
from
(SELECT 
-1 as MAIL_PROGRAM_KEY
,'All' as MAIL_PROGRAM_NAME
from dual
UNION
SELECT MAIL_PROGRAM_KEY , MAIL_PROGRAM_NAME
FROM FACT_MAIL_PROGRAM
where (MAIL_CAMPAIGN_KEY in (${MailCampaignParam}))
GROUP by MAIL_PROGRAM_KEY , MAIL_PROGRAM_NAME
)MAIL_PROGRAM
order by MAIL_PROGRAM_Name

*/
    	  String  query=" select MAIL_PROGRAM_KEY";
    	          query+=" ,MAIL_PROGRAM_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT  ";
    	  		  query+=" -1 as MAIL_PROGRAM_KEY, 0 as sq";
    	  		  query+=" ,'All' as MAIL_PROGRAM_NAME";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT MAIL_PROGRAM_KEY ,1 as sq , MAIL_PROGRAM_NAME";
    	  		  query+=" FROM FACT_MAIL_PROGRAM";
    	  		  query+=" where (MAIL_CAMPAIGN_KEY in ('-1'))";
    	  		  query+=" GROUP by MAIL_PROGRAM_KEY , MAIL_PROGRAM_NAME";
    	  		  query+=" )MAIL_PROGRAM";
    	  		  query+=" ORDER BY sq,MAIL_PROGRAM_Name";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
