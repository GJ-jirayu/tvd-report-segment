<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
ProductRatingGroup

SELECT PRODUCT_RATING_GROUP
FROM
(SELECT 
'All' as PRODUCT_RATING_GROUP
from dual
UNION
SELECT DISTINCT PRODUCT_RATING_GROUP
FROM DIM_CUSTOMER_RATING
)PRODUCT_RATING_GROUP
ORDER BY PRODUCT_RATING_GROUP

*/
    	  String  query=" select PRODUCT_RATING_GROUP";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as PRODUCT_RATING_GROUP ,0 as sq1";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT";
    	  		  query+=" DISTINCT PRODUCT_RATING_GROUP,1 as sq1";
    	  		  query+=" FROM DIM_CUSTOMER_RATING";
    	  		  query+=" )PRODUCT_RATING_GROUP";
    	  		  query+=" ORDER BY sq1,PRODUCT_RATING_GROUP";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
