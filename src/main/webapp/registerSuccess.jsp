<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
        }
        .container {
            background: white;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            text-align: center;
            width: 350px;
        }
        h2 {
            color: #28a745;
            margin-bottom: 20px;
        }
        p {
            font-size: 1.1em;
            color: #333;
            margin: 10px 0;
        }

        /* Toast styles */
        #toast {
            visibility: hidden;
            min-width: 250px;
            margin-left: -125px;
            background-color: #28a745;
            color: white;
            text-align: center;
            border-radius: 4px;
            padding: 16px;
            position: fixed;
            z-index: 1;
            left: 50%;
            bottom: 30px;
            font-size: 17px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.3);
        }

        #toast.show {
            visibility: visible;
            animation: fadein 0.5s, fadeout 0.5s 3s;
        }

        @keyframes fadein {
            from {bottom: 0; opacity: 0;}
            to {bottom: 30px; opacity: 1;}
        }

        @keyframes fadeout {
            from {bottom: 30px; opacity: 1;}
            to {bottom: 0; opacity: 0;}
        }
    </style>
</head>
<body>
<%
    String u = (String) request.getAttribute("username");
    String e = (String) request.getAttribute("email");
%>

<div class="container">
    <h2>Registered Successfully!</h2>
    <p>Username : <%= u %></p>
    <p>Email    : <%= e %></p>
</div>

<div id="toast">Registration Successful!</div>

<script>
    window.onload = function() {
        var toast = document.getElementById("toast");
        toast.className = "show";
        setTimeout(function(){
            toast.className = toast.className.replace("show", "");
        }, 3500);
    }
</script>

</body>
</html>
