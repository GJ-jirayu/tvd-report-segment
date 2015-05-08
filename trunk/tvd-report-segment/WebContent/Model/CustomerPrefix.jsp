<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";

    	  String  query=" select CUSTOMER_PREFIX";
    	  		  query+=" from";
    	  		  query+=" (SELECT ";
    	  		  query+=" 'All' as CUSTOMER_PREFIX, 0 as sq";
    	  		  query+=" from dual";
    	  		  query+=" UNION";
    	  		  query+=" SELECT DISTINCT";
    	  		  query+=" CUSTOMER_PREFIX,1 as sq";
    	  		  query+=" FROM DIM_CUSTOMER";
    	  		  query+=" )CUSTOMER_PREFIX";
    	  		  query+=" ORDER BY sq,CUSTOMER_PREFIX";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
