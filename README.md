# Docker compose setup for moonmoon

This is a docker-compose setup for [moonmoon][moonmoon repo], the image uses
[`php:apache`][php apache dockerhub].

Moonmoon's installation and admin page are removed, configurations are done via
the `people.opml` and `config.yml` file.

A `cron` daemon with a `crontab` is setup to refresh the feeds every 30 mins,
you can modify it via the `crontab` file.

You can modify the port it uses via the `docker-compose.yml` file

Licensed under Do What The Fuck You Want Public License version 2

[moonmoon repo]: https://github.com/mauricesvay/moonmoon
[php apache dockerhub]: https://hub.docker.com/_/php/
