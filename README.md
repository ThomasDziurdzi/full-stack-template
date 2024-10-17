*[Lire en français](README.fr.md)*

# Full-Stack Project: React + Vite / Express

Welcome to this full-stack project using **React** with **Vite** for the frontend and **Express** for the backend. This README provides all the necessary information to install, configure, and run the project.

## 📋 Table of Contents

1.  [Prerequisites](#prerequisites)
2.  [Installation](#installation)
3.  [Project Initialization](#project-initialization)
4.  [Running the Project](#running-the-project)
5.  [Project Structure](#project-structure)
6.  [Technologies Used](#technologies-used)
7.  [Contributing](#contributing)
8.  [License](#license)


## Prerequisites

Before you begin, ensure you have the following installed:

-   [Node.js](https://nodejs.org/) (v18 or higher)
-   [npm](https://www.npmjs.com/)



## Installation

Clone the repository and install dependencies for both the frontend and backend:

```bash
# Clone the repository
git clone https://github.com/your-username/your-project.git
cd your-project
```
## Project Initialization

After cloning the repository, you need to run the initialization script to set up the project according to your needs.

You have the option to choose:

-   **Client only**: Use only the frontend (React + Vite).
-   **Server only**: Use only the backend (Express).
-   **Both**: Use both the frontend and the backend.

### Running the Initialization Script

#### Option 1: Use the Bash script (macOS/Linux users)


```bash
./init.sh
```

If you encounter a "Permission denied" error, you may need to make the script executable. Run the following command to grant execute permissions:

```bash
chmod +x init.sh
```
#### Option 2: Use the Batch script (Windows users)

```batch
init.bat
``` 

Follow the on-screen instructions to select the option that suits your project.


## 🏃 Running the Project

**Note**: The `npm install` command has already been executed during the initialization script. If you **did not** run the initialization script or encountered issues, you can follow the instructions below to install dependencies and run the project manually.

#### Install Dependencies (if not already installed)

```bash
# Install root dependencies (Biome)
npm install

# Install dependencies for the frontend
cd client
npm install

# Install dependencies for the backend
cd ../server
npm install
```

#### Run the Project

Open two terminals:

1.  **Terminal 1**: Run the backend
    
```bash
cd server
npm run start
```
    
2.  **Terminal 2**: Run the frontend
    
```bash
cd client
npm run dev 
```

-   The frontend should be accessible at `http://localhost:3000`.
-   The backend should be accessible at `http://localhost:3310` or `http://localhost:5000`.

## Project Structure

Depending on your initialization choice, the project structure will vary.

### Client Only or Server Only

The project files are located at the root:

#### For **Client Only**

```bash

`your-project/
├── src/
│   ├── App.jsx         # Main React component
│   ├── components/     # Application components
│   ├── pages/          # Application pages
│   ├── styles/         # Application styles
├── package.json        # Frontend dependencies
├── .env                # Environment variables
├── README.md           # Project documentation
└── .gitignore          # Files ignored by Git
```

#### For **Server Only**

```bash
your-project/
├── src/
│   ├── app.js          # Backend entry point
│   ├── routes/         # API routes definitions
│   ├── controllers/    # Business logic controllers
│   └── models/         # Data models
├── package.json        # Backend dependencies
├── .env                # Environment variables
├── README.md           # Project documentation
└── .gitignore          # Files ignored by Git
```

### Both Client and Server

```bash

your-project/
├── client/                # React application
│   ├── src/
│   │   ├── App.jsx        # Main React component
│   │   ├── components/    # Application components
│   │   ├── pages/         # Application pages
│   │   ├── styles/        # Application styles
│   ├── package.json       # Frontend dependencies
│   └── .env               # Frontend environment variables
│
├── server/                # Backend API using Express
│   ├── src/
│   │   ├── app.js         # Backend entry point
│   │   ├── routes/        # API routes definitions
│   │   ├── controllers/   # Business logic controllers
│   │   └── models/        # Data models
│   ├── package.json       # Backend dependencies
│   └── .env               # Backend environment variables
│
├── init.sh                # Initialization script for macOS/Linux
├── init.bat               # Initialization script for Windows
├── README.md              # Project documentation
└── .gitignore             # Files ignored by Git`
```

## Technologies Used

-   **Frontend**: React, Vite
-   **Backend**: Express, Node.js
-   **Database**: SQLite (using `sqlite3`)
-   **Others**:
    -   **dotenv**: To manage environment variables.
    -   **cors**: To handle Cross-Origin Resource Sharing.
    -   **Nodemon**: For hot-reloading during development.
    -   **Biome**: For code formatting and linting.




## Contributing

Feel free to use this template by forking the repository and adapting it to your needs.


## License

This project is licensed under the MIT License. See the LICENSE file for more information.

-----
-----

**Additional Notes**:
    
-   Ensure you have the correct version of Node.js installed.
    
-   If you encounter any issues during the initialization or installation process, please check that you have the necessary permissions and that your environment is properly configured.
    
-   The initialization scripts (`init.sh`, `init.bat`) are designed to help you set up the project according to your needs.