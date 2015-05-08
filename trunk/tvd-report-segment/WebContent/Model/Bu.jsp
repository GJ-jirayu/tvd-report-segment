<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select CALLCENTER_BU_NAME
from
(SELECT 
'All' as CALLCENTER_BU_NAME
from dual
UNION
select CALLCENTER_BU_NAME
from DIM_SALES_REP
GROUP BY CALLCENTER_BU_NAME
)CUSTOMER_SEGMENT
ORDER BY CALLCENTER_BU_NAME

*/
    	  String  query=" select CALLCENTER_BU_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CALLCENTER_BU_NAME ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" CALLCENTER_BU_NAME,1 as sq1";
    	  		  query+=" FROM DIM_SALES_REP";
    	  		  query+=" GROUP BY CALLCENTER_BU_NAME";
    	  		  query+=" )CUSTOMER_SEGMENT";
    	  		  query+=" ORDER BY sq1,CALLCENTER_BU_NAME";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
