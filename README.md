# Sample web app

A sample Web Application with a Demo Servlet for Tomcat

### How to run

1. create war file

    - use maven **clean** task to remove the **target** folder 
    (where the class files are generated after compilation).
    
    - use maven **install** task to compile, run tests, and build the **war** file.
    This will be generated in the **target** folder.

2. deploy war file to Tomcat

    - start the tomcat server
    
    either use a saved session of mobaxterm to start the server or just go to the
    **tomcat\bin** and run the **startup.bat** command
    
    - open admin console
    
    in your browser go to http://localhost:8080 and open the admin console
    
    - deploy war file
    
    click **deploy** and select your war file or just **copy the war** to the 
    **tomcat\webapps** folder