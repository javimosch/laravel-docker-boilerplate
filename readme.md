# Laravel+Docker

You need to develop with laravel but you don't want to install dependencies in your workstation?
Use this boilerplate to develop a laravel project using docker for serving during develpement and deployment.

## Development

### - yarn generate

Generates a new laravel project in laravel foldel. Folder should not exists.
If you already have a project, clone the repo and skip this step.

### - yarn deps

This command will run yarn in the laravel folder, installing node dependencies.

### - yarn watch

Will run a docker container for running yarn watch (laravel task for frontend assets).

## Deployment

You should clone the git project containing the larvel folder with the production version.

### - yarn serve:prod

Will compose the project using prod.yml compose file. The project folder laravel will be cloned into a dist folder to apply optimzations. The production folder for the project will be 'dist'. Don't save anything inside as it is a runtime, temporal folder.

### - yarn clean

Removes dist folder

Arguments:

- -n: Docker container name
- -p: Docker exposed port (php server)

Example:

     yarn serve:prod -n blog_production -p 8080 

## Artisan commands

In orden to run artisan commands, you need to open a bash terminal inside the running container.

     docker exec -ti CONTAINER_NAME bash

CONTAINER_NAME will be the name you specified with -n when you runned the serve or serve:prod task. You can also check the container name with:

     docker ps

Then, you can run commands from the project directory.

     cd /app/laravel //or 'dist' for production
     php artisan migrate

## Database

Database is external for this project. You need to configurate it yourself.

## Domain

Domain (Reverse proxy) is outside the scope of this project. You can either use Ngix or Caddy.

## Known issues

- docker containers keep alive (sometimes) after shutdown with CTRL+C. You need to manually kill them.

## Credits

You need help with your project?

## misitoba.com
