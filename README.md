# docker-static-site vars

> Solution for accepting dynamic variables in a statically compiled site.

# Overview

Using `envsubst` to replace template variables in static files with corresponding environment variable values.

Configuration values are specified in `dot-env` file and passed to container by environment variables mapping in `docker-compose.yml`.

# Usage

```
$ docker-compose up -d
$ open http://localhost
$ docker-compose down
```

## Example setup

```
# dot-env
VAR_1=val-1
VAR_2=val-2
```

```
# docker-compose.yml
version: "2"
services:
  nginx:
    build: .
    ports:
      - "80:80"
    environment:
      VAR_1: "${VAR_1}"
      VAR_2: "${VAR_2}"

```

```
# index.html
<pre>
  $VAR_1=${VAR_1}
  $VAR_2=${VAR_2}
</pre>
```

## Result (screenshot)

![image](https://user-images.githubusercontent.com/5339042/30239334-ac178006-955a-11e7-9f40-2b4784d22b87.png)
