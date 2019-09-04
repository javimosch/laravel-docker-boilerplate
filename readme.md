# Laravel+Docker

You need to develop with laravel but you don't want to install dependencies in your workstation?
Use this boilerplate to develop a laravel project using docker for serving during develpement and deployment.

## Development

### - yarn generate

Generates a new laravel project in laravel foldel. Folder should not exists.
If you already have a project, clone the repo and skip this step.

### - yarn deps

This command will run yarn in the laravel folder, installing node dependencies.

### - yarn serve

Runs artisan serve (php development server).

### - yarn bash:install

Installs bash in the 'serve' running docker container.

### - yarn bash

Run interactive terminal in the 'serve' running container. Here you can use commands like:

- php artisan make:something

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

     yarn prod -n laravelProdTest -p 8080 

## Database

Database is external for this project. You need to configurate it yourself.

## Domain

Domain (Reverse proxy) is outside the scope of this project. You can either use Ngix or Caddy.

## Known issues

- docker containers keep alive (sometimes) after shutdown with CTRL+C. You need to manually kill them.

## Credits

You need help with your project?

## misitoba.com
