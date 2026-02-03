@echo off
echo ========================================
echo    SECURE PASSWORD MANAGER STARTER
echo ========================================
echo.

echo Checking for Node.js...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed!
    echo.
    echo Please install Node.js from: https://nodejs.org/
    echo Then run this script again.
    echo.
    pause
    exit /b 1
)

echo ✅ Node.js found
echo.

echo Starting Password Manager Server...
echo.
echo 🚀 Server will start on http://localhost:3000
echo 📱 Open your browser and navigate to the URL above
echo 🔐 Your secure password manager will be ready to use!
echo.
echo 💡 Press Ctrl+C to stop the server when done
echo.

node server.js

echo.
echo 🛑 Server stopped
pause
