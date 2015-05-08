<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
MailCampaignType

SELECT MAIL_CAMPAIGN_TYPE_CODE
,MAIL_CAMPAIGN_TYPE_NAME
FROM
(SELECT 
'All' as MAIL_CAMPAIGN_TYPE_CODE
,'All' as MAIL_CAMPAIGN_TYPE_NAME
from dual
UNION
SELECT DISTINCT MAIL_CAMPAIGN_TYPE_CODE
,MAIL_CAMPAIGN_TYPE_NAME
FROM DIM_MAIL_CAMPAIGN
)MAIL_CAMPAIGN_TYPE_CODE
ORDER BY MAIL_CAMPAIGN_TYPE_CODE


*/
String  query=" select MAIL_CAMPAIGN_TYPE_CODE";
query+=" ,MAIL_CAMPAIGN_TYPE_NAME";
  query+=" from";
  query+=" (SELECT  ";
  query+=" 'All' as MAIL_CAMPAIGN_TYPE_CODE, 0 as sq";
  query+=" ,'All' as MAIL_CAMPAIGN_TYPE_NAME";
  query+=" from dual";
  query+=" UNION";
  query+=" SELECT MAIL_CAMPAIGN_TYPE_CODE ,1 as sq , MAIL_CAMPAIGN_TYPE_NAME";
  query+=" FROM DIM_MAIL_CAMPAIGN";
  query+=" )MAIL_CAMPAIGN_TYPE_CODE";
  query+=" ORDER BY sq,MAIL_CAMPAIGN_TYPE_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
