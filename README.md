# Local environment for check Lexer & Parser implementation

This project is based https://github.com/amazeeio/drupal-example and is a base for test the module https://github.com/jacintocapote/lexer-parser

## Requirements

* [docker](https://docs.docker.com/install/).
* [pygmy](https://docs.amazee.io/local_docker_development/pygmy.html) `gem install pygmy` (you might need sudo for this depending on your ruby configuration)

## Local environment setup

1. Checkout project repo and confirm the path is in docker's file sharing config - https://docs.docker.com/docker-for-mac/#file-sharing

```
git clone git@github.com:jacintocapote/amazee-lexer-parser.git amazee-lexer-parse && cd $_
```

2. Make sure you don't have anything running on port 80 on the host machine (like a web server) then run `pygmy up`

3. Build and start the build images

```
docker-compose up -d
./scripts/install.sh
```

4. Visit the new site @ `http://amazee-lexer-parser.docker.amazee.io`
**NOTE**: If you can't resolve domain please add to /etc/hosts the line `127.0.0.1 amazee-lexer-parser.docker.amazee.io`

* If any steps fail you're safe to rerun from any point,
starting again from the beginning will just reconfirm the changes.


## Testing Lexer and Parser module

Follow the steps below:

1. Run `docker-compose exec cli drush uli` You will get a link for access as admin user to the site.
2. Go to http://amazee-lexer-parser.docker.amazee.io/node/add/test and add a title and a Mathematical string (For example 10 + 20 - 30 + 15 * 5).
3. You will get an example formatter in the node view. Original string (With hover you can see an expand token tree) and result after process the string.
4. Try to create more nodes with errors, ...
5. Go to http://amazee-lexer-parser.docker.amazee.io/admin/config/development/testing for execute unit testing.
6. Select Lexer & Parser section and execute tests (Should be green)
