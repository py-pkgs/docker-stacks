# docker-stacks

## Usage:

### Starting the container

1. Copy this [docker-compose.yml](docker-compose.yml) file to the root of your project

2. Run `docker-compose up`

3. Copy the unique URL from the terminal (that looks like this: `http://127.0.0.1:8888/lab?token=45d53a348580b3acfafaa830e99b37d51a501d125663a5c0`)  to a URL in your browser

4. Navigate to the `work` directory in Jupyter Lab container

5. Get to work 😜

### Shutting down the container
(this removes dangling containers which may block the running of other containers in the future)

1. Hit Cntrl + C in the terminal

2. Type `docker-compose down` 
