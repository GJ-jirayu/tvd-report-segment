<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  

/*
CalloutCampaignStatus

SELECT CALLOUT_CAMPAIGN_STATUS
FROM
(SELECT 
'All' as CALLOUT_CAMPAIGN_STATUS
from dual
UNION
SELECT DISTINCT CALLOUT_CAMPAIGN_STATUS
FROM DIM_CALLOUT_CAMPAIGN
)CALLOUT_CAMPAIGN_STATUS
ORDER BY CALLOUT_CAMPAIGN_STATUS

*/
    	  String  query=" select CALLOUT_CAMPAIGN_STATUS";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CALLOUT_CAMPAIGN_STATUS ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" CALLOUT_CAMPAIGN_STATUS,1 as sq1";
    	  		  query+=" FROM DIM_CALLOUT_CAMPAIGN";
    	  		  query+=" GROUP BY CALLOUT_CAMPAIGN_STATUS";
    	  		  query+=" )CALLOUT_CAMPAIGN_STATUS";
    	  		  query+=" ORDER BY sq1,CALLOUT_CAMPAIGN_STATUS";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
