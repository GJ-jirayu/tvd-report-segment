<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  

/*
CalloutCampaignCreatedYear

select DD.CALENDAR_YEAR
from FACT_CALLOUT_PROGRAM fcallpro
inner join DIM_DATE dd on DD.DATE_KEY = fcallpro.PROGRAM_CREATED_DATE_KEY			
GROUP BY DD.CALENDAR_YEAR

*/
    	  
/*String  query=" select DD.CALENDAR_YEAR";
    	  		  query+=" from FACT_CALLOUT_PROGRAM fcallpro";
    	  		  query+=" inner join DIM_DATE dd on DD.DATE_KEY = fcallpro.PROGRAM_CREATED_DATE_KEY ";
    	  		  query+=" GROUP BY DD.CALENDAR_YEAR";
*/
String query=" select CALENDAR_YEAR from(";
query+=" select 'All' as CALENDAR_YEAR,0 AS sq from dual";
query+=" UNION";
query+=" select \"TO_CHAR\"(DD.CALENDAR_YEAR) ,1 as sq";
query+=" from FACT_CALLOUT_PROGRAM fcallpro";
query+=" inner join DIM_DATE dd on DD.DATE_KEY = fcallpro.PROGRAM_CREATED_DATE_KEY ";
query+=" GROUP BY DD.CALENDAR_YEAR";
query+=" )queryA";
query+=" ORDER BY sq";


		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
