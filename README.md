# Docker compose setup for moonmoon

This is a docker-compose setup for [moonmoon][moonmoon repo], the image uses
[`php:apache`][php apache dockerhub].

Moonmoon's installation and admin page are removed, configurations are done via
the `people.opml` and `config.yml` file.

A `cron` daemon with a `crontab` is setup to refresh the feeds every 30 mins,
you can modify it via the `crontab` file.

You can modify the port it uses via the `docker-compose.yml` file

## How-to

0. Install [Docker Engine][engine install] and [Docker Compose][compose install]
1. Clone this repository recursively`

        $ git clone --recursive https://github.com/yukiisbored/moonmoon-compose

2. Customize the `config.yml` and `people.opml` files
3. Build and start the containers (Make sure you're inside the repository `cd moonmoon-compose`)

        $ docker-compose up

4. Open `http://127.0.0.1:8080` on your web browser

## License

Licensed under Do What The Fuck You Want Public License version 2

[moonmoon repo]: https://github.com/mauricesvay/moonmoon
[php apache dockerhub]: https://hub.docker.com/_/php/
[engine install]: https://docs.docker.com/engine/installation/
[compose install]: https://docs.docker.com/compose/install/
