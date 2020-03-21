<%@ page  import="java.sql.Connection" import="java.sql.PreparedStatement" import="java.sql.Statement" import="java.sql.ResultSet" import="java.text.*"  import="java.util.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%
try{
 String lid=request.getParameter("lid");
 String d2=request.getParameter("d2");
 String res=request.getParameter("res");
 String sub=request.getParameter("sub");
 System.out.println("st-1");
 //int tot=Integer.parseInt(request.getParameter("tot"));
 
 int count=0;
 System.out.println("st-1");
 String d1=request.getParameter("d1");
 String m = (String)request.getParameter("d1").substring(0,10);
 System.out.println(m);

 String Month = (String)request.getParameter("d1").substring(0,2);
String Day = (String)request.getParameter("d1").substring(3, 5);
String Year = (String)request.getParameter("d1").substring(6, 10);

System.out.println(Day+" "+Month+" "+Year);
int mon=Integer.parseInt(Month);
int dd=Integer.parseInt(Day);
int yr=Integer.parseInt(Year);
SimpleDateFormat format1=new SimpleDateFormat("MM/dd/yyyy");
  Date dt1=format1.parse(d1);
  DateFormat format2=new SimpleDateFormat("EE"); 
  String finalDay=format2.format(dt1);
System.out.println(finalDay);
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");

	Calendar cal1 = new GregorianCalendar();
	Calendar cal2 = new GregorianCalendar();
	
	Date date = sdf.parse(d1);
     cal1.setTime(date);
     date = sdf.parse(d2);
     cal2.setTime(date);
     
Date dd1=cal1.getTime();
Date dd2=cal2.getTime();

int days=(int)( (dd2.getTime() - dd1.getTime()) / (1000 * 60 * 60 * 24));






String user=(String)session.getAttribute("hall");

Connection con = databasecon.getconnection();
Statement st2=con.createStatement();
Statement st1=con.createStatement();
/*PreparedStatement ps=con.prepareStatement("insert into faculty22 values(fd.nextval,?,?,?,?,?,?,?)");
ps.setString(1,user);
ps.setInt(2,dd);
ps.setInt(3,mon);
ps.setInt(4,yr);
ps.setString(5,finalDay);
ps.setString(6,sub);
ps.setString(7,"Process");
ps.executeUpdate();*/
				
				String sql="insert into leaveletters values('"+lid+"','"+user+"','"+d1+"','"+d2+"','"+days+"','"+res+"','Process','"+sub+"')";
				
				
				System.out.println(sql);
				int i=st2.executeUpdate(sql);
				if(i>0)
				{ 
					
					response.sendRedirect("leaveapply.jsp?id=null");

				}
		//}
//st2.executeUpdate("update leaves set leaves="+count+"  where userid='"+user+"'");



	
	

//}


}
catch(Exception e){
e.printStackTrace();
}
%>
