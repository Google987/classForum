<%-- 
    Document   : classPostForm
    Created on : Aug 21, 2018, 8:29:49 PM
    Author     : khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="partials/header.jsp" %> 

        <div class="row">
        <h1 style="text-align: center;">Create a new post</h1>
        <div style="width: 30%; margin: 25px auto;">
            <form action="" method="POST">
                <div class="form-group">
                    <input class="form-control" type="text" name="name" placeholder="Title or Topic">    
                </div>
<!--                <div class="form-group">
                    <input class="form-control" type="text" name="image" placeholder="image url">    
                </div>-->
                <div class="form-group">
                    <input class="form-control" type="text" name="description" placeholder="description">    
                </div>
<!--                <div class="form-group">
                    <label for="location">Location</label>
                    <input class="form-control" type="text" name="location" id="location" placeholder="Yosemite National Park, CA">
                </div>-->
                <div class="form-group">
                    <button class="btn btn-lg btn-primary btn-block">Submit!</button>
                </div>
            </form>
             <a href="classPosts.jsp">Go back</a>
        </div>
    </div>

<%@ include file="partials/footer.jsp" %> 