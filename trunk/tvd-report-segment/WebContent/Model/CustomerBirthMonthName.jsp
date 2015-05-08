<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	
  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select CUSTOMER_BIRTH_MONTH_NO,
CUSTOMER_BIRTH_MONTH_NAME
from
(
SELECT 
13 as CUSTOMER_BIRTH_MONTH_NO,
'All' as CUSTOMER_BIRTH_MONTH_NAME
from dual
UNION
SELECT
CUSTOMER_BIRTH_MONTH_NO,
CUSTOMER_BIRTH_MONTH_NAME
FROM DIM_CUSTOMER
group by CUSTOMER_BIRTH_MONTH_NO,
CUSTOMER_BIRTH_MONTH_NAME
)BIRTH_MONTH
ORDER BY CUSTOMER_BIRTH_MONTH_NO
*/
    	  String  query=" select CUSTOMER_BIRTH_MONTH_NO,";
    	  		  query+=" CUSTOMER_BIRTH_MONTH_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 13 as CUSTOMER_BIRTH_MONTH_NO,0 as sq,";
    	  		  query+=" 'All' as CUSTOMER_BIRTH_MONTH_NAME";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" CUSTOMER_BIRTH_MONTH_NO ,1 as sq,";
    	  		  query+=" CUSTOMER_BIRTH_MONTH_NAME";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" group by CUSTOMER_BIRTH_MONTH_NO,CUSTOMER_BIRTH_MONTH_NAME";
    	  		  query+=" )BIRTH_MONTH";
    	  		  query+=" ORDER BY sq,CUSTOMER_BIRTH_MONTH_NO";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
