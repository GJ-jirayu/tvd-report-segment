<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  

/*
CalloutProgram

SELECT CALLOUT_PROGRAM_NAME
FROM
(SELECT 
'All' as CALLOUT_PROGRAM_NAME
from dual
UNION
SELECT DISTINCT CALLOUT_PROGRAM_NAME
FROM FACT_CALLOUT_PROGRAM
-- where CALLOUT_CAMPAIGN_KEY = ${param}
)CALLOUT_PROGRAM_NAME
ORDER BY CALLOUT_PROGRAM_NAME

*/
String CalloutCampaignParam = request.getParameter("CalloutCampaignParam");

    	  String  query=" select CALLOUT_PROGRAM_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CALLOUT_PROGRAM_NAME ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" DISTINCT CALLOUT_PROGRAM_NAME,1 as sq1";
    	  		  query+=" FROM FACT_CALLOUT_PROGRAM";
				if(CalloutCampaignParam.equals("All")){
    	  			
    	  		}else{
    	  		  query+=" where CALLOUT_CAMPAIGN_KEY in("+CalloutCampaignParam+")";
    	  		}
    	  		 // query+=" where CALLOUT_CAMPAIGN_KEY in(-1,4543)";
    	  		  query+=" )CALLOUT_PROGRAM_NAME";
    	  		  query+=" ORDER BY sq1,CALLOUT_PROGRAM_NAME";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());

  %>
