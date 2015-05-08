<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
MailCampaignCreatedYear

SELECT DD.CALENDAR_YEAR
from FACT_MAIL_PROGRAM mailpro
inner join DIM_DATE dd on DD.DATE_KEY = mailpro.PROGRAM_CREATED_DATE_KEY
-- where (DD.CALENDAR_DATE BETWEEN to_date(${MailCampaignCerateDateStartParam},'yyyy-MM-dd') and to_date(${MailCampaignCerateDateEndParam},'yyyy-MM-dd'))
GROUP BY DD.CALENDAR_YEAR

*/
/*
    	  String  query=" SELECT DD.CALENDAR_YEAR";
    	  		  query+=" from FACT_MAIL_PROGRAM mailpro";
    	  		  query+=" inner join DIM_DATE dd on DD.DATE_KEY = mailpro.PROGRAM_CREATED_DATE_KEY";
    	  		  query+=" GROUP BY DD.CALENDAR_YEAR";
    	
*/
String  query=" select CALENDAR_YEAR from(";
query+=" select 'All' as CALENDAR_YEAR,0 AS sq from dual";
query+=" UNION";
query+=" SELECT \"TO_CHAR\"(DD.CALENDAR_YEAR),1 as sq";
query+=" from FACT_MAIL_PROGRAM mailpro";
query+=" inner join DIM_DATE dd on DD.DATE_KEY = mailpro.PROGRAM_CREATED_DATE_KEY";
query+=" GROUP BY DD.CALENDAR_YEAR";
query+=" )queryA";
query+=" ORDER BY sq";

		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
