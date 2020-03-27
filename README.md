![xhidon image](./resources/xhidon-title.png)

# Welcome

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="display: block; border-width:0; float: right" align="left" src="https://i.creativecommons.org/l/by/4.0/88x31.png"/></a><br/>

Welcome to the Xhidon project. This image is part of the [k8sb](https://github.com/v8tix/k8sb) project.

#### Prerequisites
* Docker Engine installed.

## What this guide covers
1. Xhidon configuration.
2. Common operations.
### 1. Xhidon configuration.
* Xhidon configuration lets you run a Spring microservice called [Social](https://github.com/v8tix/social).
* :exclamation: Under the configuration directory you will find a file called const.sh. Please review this file carefully and make the necessary changes.  
* Each constant is described below:
  * HOST: The domain where your microservice will be allocated. If you are using a termination point, use localhost instead.
  * HOST_PORT: The TCP port on the Docker host. By default, this setting is 8080.
  * CNTR_PORT: The TCP port on the Docker container. By default, this setting is 8080.
  * :warning: CNTR_MICROSERVICE_CONF_DIR and CONFIG_TEMPLATE_DIR: Please don't modify them. They are used by the container to generate your custom configurations.  
  * SPRING_PROFILE: There are only two possible values: 'prod' and 'dev'. For more information about which one to use, please refer to the [Social]("github.com/v8tix/social") microservice project.
  * DB_HOST_CONN_DIR: Indicates the host directory where you created a file called db_con with your MongoDB database connection URL inside.
  * DB_CNTR_CONN_DIR: The directory where the DB_HOST_CONN_DIR will be mounted inside the container. 
  * :warning: CNTR_MICROSERVICE_DIR: Please don't modify it. It contains the fatjar generated in the multi-stage Docker file.
  * FATJAR_NAME: The fatjar name must be included here (e.g. social-1.0.0.v20200309.jar). 
  * VERSION: Contains the Social microservice version (e.g. 1.0.0.v20200309). 
  * :warning: JAVA_IO_DIR: The [Java temporary directory](https://examples.javacodegeeks.com/core-java/io/java-io-tmpdir-example/) needed by the JVM. Take a look to the Docker file before modifying this constant.
### 2. Common operations.
* At the root directory you will find the following directories.
  * configuration:
    * Here you can change the image name and its tag. 
  * build.
    * The Docker file, and the container artifacts need must be included here.
    * Also in this directory you can find the build.sh script. Execute it if you plan to build this image. 
    * Once the image was built, you can go to the executables directory.
  * executables.
    * Each script under this directory wraps a useful Docker command.
    * To give it a try:
      * Be sure you accomplished all the requirements described in step 1.
      * Now, you can execute the run.sh script. This will start a detached container.
        * To get a console, execute the attach.sh script.
        * :bulb: Like in SSH connections, type 'exit' and then press Enter to close the console.
      * When you are done, there are two ways to stop it:
        * If you want to stop it, and keep this image, execute the stop.sh script,         
        * Otherwise execute the delete.sh script instead.
## Authors
* Initial work

![v8tix logo](resources/v8tix-logo.jpg) <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Contact us](mailto:info@v8tix.com)</p>  
## License  
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="display: block; border-width:0; float: right" align="left" src="https://i.creativecommons.org/l/by/4.0/88x31.png"/>&nbsp;</a>This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).  
  













 