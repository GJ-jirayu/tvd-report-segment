<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
SaleRep

select 'All' as Emp
from dual
union
select 'Y' as Emp
from dual
union
select 'N' as Emp
from dual

*/
    	  String  query="";
    	  query+="select 'All' as Emp";
    	  query+=" 	  from dual";
    	  query+=" 	  union";
    	  query+="	  select 'Y' as Emp";
    	  query+="	  from dual";
    	  query+="	  union";
    	  query+="	  select 'N' as Emp";
    	  query+="	  from dual";
    	  		 
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
