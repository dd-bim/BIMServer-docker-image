# BIMServer docker image

Very basic docker image for local testing. No runtime optimizations have been added. 

To create and run a new build:

* Download a current WAR of BIMServer into the cloned project dir
* Run `docker build --build-arg BIMSERVER_WAR=[WARFILE] -t latest .` to build a new image tagged `latest`
* Run `docker run -p 8080:8080 -v [VOL]:/var/bimserver/home` to run the image   
or
* use the `docker-compose.yml` by editing WAR file, image name, port and other

BIMServer can be initialized via the web onboarding available at http://localhost:8080.
