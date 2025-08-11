# README

Sample application using node modules but without NodeJS as a system dependency.

This is an alternative to simplify the setup of the application, using [Bun](https://github.com/oven-sh/bun/tree/bun-v1.2.20) to both process the dependencies resolution and fetching the files, and building the final static assets.

This uses a standalone binary of Bun that works on Linux x64 to be used inside the provided Docker image, to run outside Docker on a different OS you'll need a different binary.

We are using a basic Docker setup to show NodeJS is not available in any way inside the container, only Ruby and the standalone Bun binary.
