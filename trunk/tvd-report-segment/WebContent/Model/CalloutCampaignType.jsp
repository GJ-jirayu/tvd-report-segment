<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
CalloutCampaignType

SELECT CALLOUT_CAMPAIGN_TYPE_CODE
,CALLOUT_CAMPAIGN_TYPE_NAME
FROM
(SELECT 
'All' as CALLOUT_CAMPAIGN_TYPE_CODE
,'All' as CALLOUT_CAMPAIGN_TYPE_NAME
from dual
UNION
SELECT DISTINCT CALLOUT_CAMPAIGN_TYPE_CODE
,CALLOUT_CAMPAIGN_TYPE_NAME
FROM DIM_CALLOUT_CAMPAIGN
)CALLOUT_CAMPAIGN_TYPE_CODE
ORDER BY CALLOUT_CAMPAIGN_TYPE_CODE

*/
    	  String  query=" select CALLOUT_CAMPAIGN_TYPE_CODE";
    	  		  query+=" ,CALLOUT_CAMPAIGN_TYPE_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CALLOUT_CAMPAIGN_TYPE_CODE ,0 as sq1";
    	  		 query+=" ,'All' as CALLOUT_CAMPAIGN_TYPE_NAME";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" CALLOUT_CAMPAIGN_TYPE_CODE,1 as sq1";
    	  		  query+=" ,CALLOUT_CAMPAIGN_TYPE_NAME";
    	  		  query+=" FROM DIM_CALLOUT_CAMPAIGN";
    	  		  query+=" )CALLOUT_CAMPAIGN_TYPE_CODE";
    	  		  query+=" ORDER BY sq1,CALLOUT_CAMPAIGN_TYPE_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
