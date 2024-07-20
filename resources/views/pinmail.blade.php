<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f6f6;
            margin: 0;
            padding: 0;
        }
        .email-container {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border: 1px solid #e6e6e6;
            padding: 20px;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        .content {
            padding: 20px;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .button {
            background-color: #007bff;
            color: white !important;
            padding: 10px 20px;
            font-weight:700 !important;
            text-decoration: none;
            border-radius: 5px;
        }
        .footer {
            padding: 10px 20px;
            text-align: center;
            font-size: 12px;
            color: #777777;
        }
    </style>
</head>
<body>
    <div class="email-container">
        <div class="header">
            <h1>Businessplus</h1>
        </div>
        <div class="content">
            <h2>Forgot Password ?</h2>
            <p>Hi {{$name}},</p>
            <p>This is your tempory account Pin that has been issued to your email account  <a href="mailto:{{ $email }}">{{ $email }}</a>.   </p>
            <p>Please don't share your Pin with someone else and change the pin quickly</p>
            <div class="button-container">
                <a href="#" class="button">{{$pin}}</a>
            </div>
        </div>
        <div class="footer">
            &copy; 2024 businessplus.com
        </div>
    </div>
</body>
</html>
