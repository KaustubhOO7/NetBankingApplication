<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserNotExist.css">
</head>
<body>
    <div class="mainLeft">
        <h1>Sirius Ventures</h1>
        <div class="selectColumn">
            <a href="dashboard">
                <div class="dashboard">
                    Dashboard
                </div>
            </a>
            <a href="transaction">
                <div class="transaction">
                    Transaction
                </div>
            </a>
            <a href="SendMoney">
                <div class="payment">
                    Payments
                </div>
            </a>
            <a href="settings">
                <div class="settings">
                    Settings
                </div>
            </a>
            <a href="signout">
                <div class="signout">
                    Sign Out
                </div>
            </a>
            <div class="name">
                Welcome ${name}
             </div>
        </div>
    </div>

    <div class="mainRight">
        <h1>User Not Exist with Entered ${type}.</h1>
    </div>
    
</body>
</html>