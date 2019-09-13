<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AMGrads</title>
    <meta name="description" content="AMGrads" >
    <meta name="author" content="Jewel Theme">
    <style>
        .tuna {
          /* steps causes the animation to chunk into 12 equal pieces */
          animation: walk-cycle 1s steps(12) infinite;
          background: url(http://stash.rachelnabors.com/img/codepen/tuna_sprite.png) 0 0 no-repeat; 
          height: 200px;
          width: 400px;
          margin: 100px auto 0;
        }
        
        @keyframes walk-cycle {  
          0% {background-position: 0 0; } 
          100% {background-position: 0 -2391px; } /* Must be full height of sprite or skipping will happen.*/
        }
        aaa
        p {text-align: center;}
        </style>

</head>
<body>

    <div class="tuna"></div>

    <p>Linuxiii</p>
    
</body>
</html>
