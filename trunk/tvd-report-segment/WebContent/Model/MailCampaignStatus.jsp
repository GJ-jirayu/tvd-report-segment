<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
MailCampaignStatus

SELECT MAIL_CAMPAIGN_STATUS
FROM
(SELECT 
'All' as MAIL_CAMPAIGN_STATUS
from dual
UNION
SELECT DISTINCT MAIL_CAMPAIGN_STATUS
FROM DIM_MAIL_CAMPAIGN
)MAIL_CAMPAIGN_STATUS
ORDER BY MAIL_CAMPAIGN_STATUS

*/
    	  String  query=" select MAIL_CAMPAIGN_STATUS";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as MAIL_CAMPAIGN_STATUS ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" DISTINCT MAIL_CAMPAIGN_STATUS,1 as sq1";
    	  		  query+=" FROM DIM_MAIL_CAMPAIGN";
    	  		  query+=" )MAIL_CAMPAIGN_STATUS";
    	  		  query+=" ORDER BY sq1,MAIL_CAMPAIGN_STATUS";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
