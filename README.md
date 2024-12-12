<p align="center">
  <img src="./resources/shiny-svelte.svg" height="150" />
</p>

# Shiny Svelte

A project that integrates R Shiny with a modern UI framework using Svelte and ViteJS.

## Table of Contents

- [About](#about)
- [Getting Started](#getting-started)
- [Scripts](#scripts)
- [Dependencies](#dependencies)
- [Development Workflow](#development-workflow)
- [Building for Production](#building-for-production)

## About

This project combines the power of R Shiny for server-side computations with Svelte for creating modern, interactive front-end user interfaces. The development setup is powered by ViteJS for fast bundling and hot-module reloading.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Node.js](https://nodejs.org/) (v18 or later recommended)
- [Yarn](https://classic.yarnpkg.com/) (v1.22.x)
- [R](https://www.r-project.org/) (v4.0 or later)

### Installation

Clone the repository and install dependencies:

```bash
# Clone the repository
git clone https://github.com/your-repo/shiny-svelte.git

# Navigate into the project directory
cd shiny-svelte

# Install dependencies
yarn install
```

## Scripts

### Development

- **`yarn dev`**
  Starts both the UI and Shiny server in development mode. This allows you to develop the front-end and back-end simultaneously with hot reloading.

- **`yarn dev:ui`**
  Starts the Vite development server for the Svelte UI.

- **`yarn dev:shiny`**
  Launches the Shiny server by running the `global.R` script.

### Production

- **`yarn build:ui`**
  Builds the Svelte UI for production.

- **`yarn preview`**
  Previews the production build locally.

### Code Checks

- **`yarn check:ui`**
  Runs static type checks for the Svelte components and TypeScript files.

## Dependencies

### Core

- [Svelte](https://svelte.dev/) (UI framework)
- [R Shiny](https://shiny.rstudio.com/) (Server-side framework for R)

### DevDependencies

- [Vite](https://vitejs.dev/) (Bundler)
- [TypeScript](https://www.typescriptlang.org/) (Static type-checking)
- [Svelte Check](https://github.com/sveltejs/language-tools) (Svelte diagnostics tool)
- [Concurrently](https://github.com/open-cli-tools/concurrently) (Run multiple commands concurrently)
- [Cross-Env](https://github.com/kentcdodds/cross-env) (Set environment variables)

## Development Workflow

1. Start the development servers:
   ```bash
   yarn dev
   ```
   This will start the UI and Shiny servers in parallel.

2. Open the application in your browser:
   - Frontend: `http://localhost:5173` — **do not open this one**.
   - Shiny Backend: `http://localhost:7000`

3. Make changes to the Svelte components or R scripts, and the application will reload automatically.

## Building for Production

1. Build the UI for production:
   ```bash
   yarn build:ui
   ```
   The production-ready files will be in the `dist` directory.

2. Deploy the `dist` directory alongside your Shiny server for full integration.