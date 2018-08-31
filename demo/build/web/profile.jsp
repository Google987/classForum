<%-- 
    Document   : profile
    Created on : Aug 19, 2018, 1:19:08 PM
    Author     : khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%!
    Connection conn = null;
    Statement st = null;
    ResultSet rs = null;
%>
<%@ include file="partials/header.jsp" %> 
<!--<link rel="stylesheet" href="styles/showClassPosts.css"/>-->
<div class="row" style="display:flex; flex-wrap: wrap;">
    <!--<h1>Profile page</h1>-->
    <%

String user, pass;

user = session.getAttribute("uEmail").toString();
//pass = request.getParameter("password");
//out.print(user);

try{
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root", "nothing");
    st = conn.createStatement();
    String sql = "SELECT fname,lname,email from users where email='"+user+"'";
    rs = st.executeQuery(sql);
    rs.next();
    %>
            <div class="col-md-4 col-sm-6">
                <div class="thumbnail text-center shadow" id="userInfo">
                    <img src="styles/assets/background.jpg">
                   
                   <div class="caption">
                       <h3 style="text-transform: uppercase;"><%=rs.getString(1)%> <%=rs.getString(2)%></h3>
                   
                   </div>
                   <p>
                       <%=rs.getString(3)%>
                   </p>
                   <p>
                       <a href="#" class="btn btn-primary shadow">Edit Profile</a>
                   </p>
                </div>
            </div> 
            <div class="col-md-4 col-sm-6">
                   <div id="posts">
                       <h2>Posts</h2>
                       <ul>
                       <%
                            sql = "SELECT topic from classPosts where email='"+user+"'";
                            rs = st.executeQuery(sql);
                            while(rs.next()){
                       %>
                       
                       <a href="showClassPost.jsp"><li><%=rs.getString(1)%></li></a>
                       
                       <%}%>
                       </ul>
                   </div>
            </div> 
            <div class="col-md-4 col-sm-6">
                   <div id="questions">
                       <h2>Questions</h2>
                       <ul>
                           <li></li>
                           <li></li>
                           <li></li>
                           <li></li>
                       </ul>
                   </div>
            </div>      
<%  
    //out.println("  ===  "+pass);
    conn.close();
}catch(Exception ex){
    out.println(ex);
    //response.sendRedirect("resister.jsp");
} %>
</div>
        
<%@ include file="partials/footer.jsp" %> 