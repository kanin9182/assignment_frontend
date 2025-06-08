# Demo Banking Dashboard with Nginx and Docker

This project serves a static banking dashboard website using Nginx in a Docker container.

## Features

- Serves static HTML, CSS, and JS files via Nginx
- Dockerized for easy deployment and local development
- Includes Docker Compose configuration

## Project Structure
.
├── Dockerfile
├── docker-compose.yml
├── html/
│   ├── splash.html
│   ├── pin.html
│   └── bank_main.html
├── css/
│   └── styles.css
└── README.md


## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

1. git clone <your-repo-url> cd <project-directory>
2. docker-compose up --build
3. **Access the website:**
    - [http://localhost:3010/](http://localhost:3010/)
    - Example pages:
        - [http://localhost:3010/splash.html](http://localhost:3010/splash.html)
        - [http://localhost:3010/pin.html](http://localhost:3010/pin.html)
        - [http://localhost:3010/bank_main.html](http://localhost:3010/bank_main.html)

## Dockerfile

- Uses `nginx:alpine` as the base image
- Copies static files to `/usr/share/nginx/html`

## docker-compose.yml

- Builds the image from the local `Dockerfile`
- Maps port `3010` on the host to port `80` in the container
- Restarts automatically unless stopped

## Customization

- Add or modify HTML/CSS/JS files in the `html/` and `css/` directories.
- Update the `Dockerfile` if you add new asset folders.

## License

MIT License