# 🚀 Setup Instructions

## Prerequisites

Before you begin, ensure you have the following installed:

1. **Node.js** (version 16 or higher)
   - Download from: https://nodejs.org/
   - Verify installation: Open Command Prompt and run `node --version`

2. **npm** (Node Package Manager)
   - Usually comes with Node.js
   - Verify installation: Run `npm --version`

## Installation Steps

### Step 1: Navigate to Project Directory

Open Command Prompt or PowerShell and navigate to the project folder:

```bash
cd "C:\Users\pradn\OneDrive\Desktop\syntaxhub\Password_manager"
```

### Step 2: Install Dependencies

Run the following command to install all required packages:

```bash
npm install
```

If you don't have npm installed, you can:
1. Install Node.js from https://nodejs.org/ (npm comes included)
2. Or use yarn as an alternative: `yarn install`

### Step 3: Start the Application

Once dependencies are installed, start the development server:

```bash
npm start
```

This will:
- Compile the React application
- Start a local development server
- Open your default browser to `http://localhost:3000`

## Alternative: Using Yarn

If you prefer using Yarn instead of npm:

1. **Install Yarn** (if not already installed):
   ```bash
   npm install -g yarn
   ```

2. **Install dependencies**:
   ```bash
   yarn install
   ```

3. **Start the application**:
   ```bash
   yarn start
   ```

## Troubleshooting

### Common Issues

#### "npm is not recognized"
- **Solution**: Install Node.js from https://nodejs.org/
- **Alternative**: Use yarn instead of npm

#### Port 3000 already in use
- **Solution**: The application will automatically try the next available port (3001, 3002, etc.)
- **Manual fix**: Kill the process using port 3000:
  ```bash
  netstat -ano | findstr :3000
  taskkill /PID <PID> /F
  ```

#### Permission errors
- **Solution**: Run Command Prompt as Administrator
- **Alternative**: Change folder permissions

#### Installation fails
- **Solution**: Clear npm cache:
  ```bash
  npm cache clean --force
  ```
- **Alternative**: Delete node_modules folder and try again

### Node.js Installation Guide

1. **Download**: Go to https://nodejs.org/
2. **Select**: Download the LTS (Long Term Support) version
3. **Install**: Run the installer with default settings
4. **Verify**: Open Command Prompt and run:
   ```bash
   node --version
   npm --version
   ```

## Project Structure

```
Password_manager/
├── public/                 # Static files
│   └── index.html         # Main HTML file
├── src/                   # Source code
│   ├── components/        # React components
│   │   ├── Login.js       # Login screen
│   │   ├── Setup.js       # Initial setup
│   │   ├── Dashboard.js   # Main dashboard
│   │   └── PasswordGenerator.js
│   ├── crypto/            # Encryption modules
│   │   └── encryption.js  # AES-256 encryption
│   ├── storage/           # Data storage
│   │   └── storage.js     # Local storage management
│   ├── auth/              # Authentication
│   │   └── auth.js        # Master password handling
│   ├── utils/             # Utilities
│   │   └── security.js    # Security utilities
│   ├── App.js             # Main React app
│   ├── index.js           # App entry point
│   └── index.css          # Global styles
├── docs/                  # Documentation
│   ├── USER_GUIDE.md      # User guide
│   └── SECURITY_GUIDE.md  # Security information
├── package.json           # Project dependencies
├── tailwind.config.js     # Tailwind CSS config
└── README.md              # Project overview
```

## Development

### Running in Development Mode

```bash
npm start
```

This starts the development server with hot reloading. Changes to source files will automatically refresh the browser.

### Building for Production

```bash
npm run build
```

This creates an optimized production build in the `build` folder.

### Running Tests

```bash
npm test
```

## Browser Compatibility

The password manager works with modern browsers:
- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+

## Security Notes

- All data is stored locally in your browser
- No data is sent to external servers
- Master password is never stored anywhere
- All passwords are encrypted with AES-256

## Getting Help

If you encounter issues:

1. Check the troubleshooting section above
2. Read the User Guide in the `docs/` folder
3. Ensure you're using a supported browser
4. Verify Node.js and npm are properly installed

## Next Steps

Once the application is running:

1. **First-time setup**: Create a master password
2. **Add passwords**: Start storing your credentials
3. **Explore features**: Try the password generator and search
4. **Read documentation**: Check the User Guide for detailed instructions

---

**Need help?** Check the `docs/USER_GUIDE.md` for detailed usage instructions.
