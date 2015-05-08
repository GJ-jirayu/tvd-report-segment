<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  

/*
CalloutCampaign

select CALLOUT_CAMPAIGN_KEY
,CAMPAIGN_NAME
from
(SELECT 
-1 as CALLOUT_CAMPAIGN_KEY
,'All' as CAMPAIGN_NAME
from dual
UNION
select dcallpro.CALLOUT_CAMPAIGN_KEY 
, dcallpro.CALLOUT_CAMPAIGN_CODE||' - '||dcallpro.CALLOUT_CAMPAIGN_NAME as CAMPAIGN_NAME
from DIM_CALLOUT_CAMPAIGN dcallpro
inner join (
			select fcallpro.CALLOUT_CAMPAIGN_KEY
			from FACT_CALLOUT_PROGRAM fcallpro
			inner join DIM_DATE dd on DD.DATE_KEY = fcallpro.PROGRAM_CREATED_DATE_KEY	
			-- where (DD.CALENDAR_DATE between to_date(${CallOutCampaignCerateDateStartParam},'yyyy-MM-dd') and to_date(${CallOutCampaignCerateDateEndParam},'yyyy-MM-dd'))
			GROUP BY fcallpro.CALLOUT_CAMPAIGN_KEY
			) factcallout on factcallout.CALLOUT_CAMPAIGN_KEY = dcallpro.CALLOUT_CAMPAIGN_KEY 
order by CAMPAIGN_NAME
)CALLOUT_CAMPAIGN
order by CAMPAIGN_NAME

*/
String CallOutCampaignCerateDateStartParam = request.getParameter("CallOutCampaignCerateDateStartParam");
//CallOutCampaignCerateDateStartParam="All";
String CallOutCampaignCerateDateEndParam = request.getParameter("CallOutCampaignCerateDateEndParam");
    	  String  query=" select CALLOUT_CAMPAIGN_KEY";
    	  		  query+=" ,CAMPAIGN_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" -1 as CALLOUT_CAMPAIGN_KEY";
    	  		  query+=" ,'All' as CAMPAIGN_NAME";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" select dcallpro.CALLOUT_CAMPAIGN_KEY ";
    	  		  query+=" , dcallpro.CALLOUT_CAMPAIGN_CODE||' - '||dcallpro.CALLOUT_CAMPAIGN_NAME as CAMPAIGN_NAME";
    	  		  query+=" from DIM_CALLOUT_CAMPAIGN dcallpro";
    	  		  query+=" inner join (";
    	  		  query+=" 			select fcallpro.CALLOUT_CAMPAIGN_KEY";
    	  		  query+=" 			from FACT_CALLOUT_PROGRAM fcallpro";

    	  		  query+=" 			inner join DIM_DATE dd on DD.DATE_KEY = fcallpro.PROGRAM_CREATED_DATE_KEY	";
    	  		  
    	  		//query+=" 			where (DD.CALENDAR_DATE between to_date('2014-03-01','yyyy-MM-dd') and to_date('2014-03-01','yyyy-MM-dd'))";
    	  		if(CallOutCampaignCerateDateStartParam.equals("All") || CallOutCampaignCerateDateEndParam.equals("All")){
    	  			
    	  		}else{
    	  		  query+=" 			where (DD.CALENDAR_DATE between to_date('"+CallOutCampaignCerateDateStartParam+"','yyyy-MM-dd') and to_date('"+CallOutCampaignCerateDateEndParam+"','yyyy-MM-dd'))"; 
    	  		}
    	  		  query+=" GROUP BY fcallpro.CALLOUT_CAMPAIGN_KEY";
    	  		  query+=" ) factcallout on factcallout.CALLOUT_CAMPAIGN_KEY = dcallpro.CALLOUT_CAMPAIGN_KEY ";
    	  		  query+=" order by CAMPAIGN_NAME";
    	  		  query+=" )CALLOUT_CAMPAIGN";
    	  		  query+=" order by CAMPAIGN_NAME";
    	  		
    	  		  
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
