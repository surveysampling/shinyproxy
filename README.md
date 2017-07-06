<pre>
               _____ _     _             _____
              / ____| |   (_)           |  __ \
             | (___ | |__  _ _ __  _   _| |__) | __ _____  ___   _
              \___ \| '_ \| | '_ \| | | |  ___/ '__/ _ \ \/ / | | |
              ____) | | | | | | | | |_| | |   | | | (_) >  <| |_| |
             |_____/|_| |_|_|_| |_|\__, |_|   |_|  \___/_/\_\\__, |
                                    __/ |                     __/ |
                                   |___/                     |___/

</pre>

surveysampling/shinyproxy
-------------------------
This project was forked from openanalytics/shinyproxy at the 0.9.2 release and
might be periodically updated to suit our needs. Everything is happening in the
`ssi-custom` branch, to retain the ability to merge upstream features/fixes.

## Change Log
 * Use a config file at `/home/appuser/shinyproxy/application.yml` (added absolute path)

## Deployment via Docker-Pull-Run
Some extra files were added to allow ShinyProxy to be deployed via Docker-Pull-Run.


<!-- Original README.md continues below -->
# ShinyProxy

Middleware to Deploy Shiny Applications in an Enterprise Context

Learn more at http://shinyproxy.io

#### (c) Copyright Open Analytics NV, 2016-2017 - Apache License 2.0

## Building from source

Clone this repository and run

```
mvn -U clean install
```

The build will result in a single `.jar` file that is made available in the `target` directory.

## Running the application

```
java -jar shinyproxy-0.9.2.jar
```

Navigate to http://localhost:8080 to access the application.  If the default configuration is used, authentication will be done against the LDAP server at *ldap.forumsys.com*; to log in one can use the user name "tesla" and password "password".


## Further information

http://shinyproxy.io
