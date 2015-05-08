<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();

/*
PaymentTerm

SELECT PAYMENT_TERM_CODE
,PAYMENT_TERM_NAME
FROM
(SELECT 
'All' as PAYMENT_TERM_CODE
,'All' as PAYMENT_TERM_NAME
from dual
UNION
SELECT DISTINCT PAYMENT_TERM_CODE
,PAYMENT_TERM_NAME
FROM DIM_PAYMENT_TERM
)PAYMENT_TERM_CODE
ORDER BY PAYMENT_TERM_CODE

*/

    	  String  query=" select PAYMENT_TERM_CODE";
    	  		  query+=" ,PAYMENT_TERM_NAME";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as PAYMENT_TERM_CODE ,0 as sq1";
    	  		  query+=" ,'All' as PAYMENT_TERM_NAME";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" DISTINCT PAYMENT_TERM_CODE,1 as sq1";
    	  		  query+=" ,PAYMENT_TERM_NAME";
    	  		  query+=" FROM DIM_PAYMENT_TERM";
    	  		  query+=" )CUSTOMER_SEGMENT";
    	  		  query+=" ORDER BY sq1,PAYMENT_TERM_CODE";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
