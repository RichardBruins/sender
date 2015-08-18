<%--
/**
 * Copyright (c) 2000-2011 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<!-- This is the <b>sender</b>. -->
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
    	var userInput = $('input:text').val();
      
        $('#msg').html(userInput);
        Liferay.fire('sendText', {getUserInput: userInput});
		return false;
        
    });
});
</script>
</head>
<body>

<p>Please enter text to send to next portlet <input type="text" name="user"></p>

<button>Send Text</button>
<!-- <h2>TextBox value : <label id="msg"></label></h2> -->
</body>
</html>
