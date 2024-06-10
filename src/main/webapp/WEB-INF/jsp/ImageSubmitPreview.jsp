<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ImageSubmitPreview.css">
</head>
<body>

    <div class="main">
        <img src="${pageContext.request.contextPath}/images/background.png" id="head">
        <h2>
            <b>Sirius Ventures</b>
         </h2>
        
            <div class="sign">
                <p>Signature Preview</p>
                <a href="setPassword">
                   <button type="button" id="upload">NEXT</button>
                </a>
                
            </div>
        <div class="imagepreview">
            <img src="${pageContext.request.contextPath}/images/UserImages/${imageFile}">
        </div>

    </div>
    
</body>
</html>
