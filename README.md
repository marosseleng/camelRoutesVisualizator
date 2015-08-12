#Silverspoon Camel Routes Visualizator

[![Build Status](https://travis-ci.org/maroselo/visualizator.svg?branch=master)](https://travis-ci.org/maroselo/visualizator)

Originally a school project for **#PB138(Modern markup languages) seminar** at Faculty of Informatics at Masaryk University, Brno, Czech Republic

##Table of contents
- [Summary](#summary)
- [Installation] (#installation)
- [Documentation] (#documentation)
- [Team] (#team)
- [Lecturers] (#lecturers)

##Summary

Our task in this project is to develop a web application, which uses the Extensible Stylesheet Language Transformation (XSLT) to transform [Apache Camel Routes] (http://camel.apache.org/routes.html), written in an `.xml` file, into a `.svg` picture.
Eventually, the produced picture will be shown on a webpage.

This transformation should cover the needs of the [Silverspoon.io project] (https://silverspoon.io).

The application is currently running in the cloud. You can find a link to it in project's [wiki](https://github.com/maroselo/visualizator/wiki).

If you want to build the application by yourself, or change some stuff, proceed to [Installation] (#installation).

##Installation

If you want to build the application by yourself feel free to do so by using your favorite Maven-supporting IDE.
Remember to use the [Apache Tomcat](https://tomcat.apache.org/download-80.cgi) as your web server.

1. Download the sources. To do this, just press the `Download ZIP` button on the right side.
2. Extract downloaded file.
3. Open the `.pom` file from project's directory in your IDE.
4. Configure the tomcat server, especially the `CATALINA_BASE` location.
5. Build and run the project.

##Documentation

The javadoc can be found in directory `documentation`.

The detailed documentation, with the description of every single thing in application and pictures, as well, can be found on our [wiki pages] (https://github.com/maroselo/visualizator/wiki).

##Team

- [Maroš Šeleng] (https://github.com/maroselo) *developer & team leader*
- [Jaroslav Bončo] (https://github.com/jarkojefamozny) *developer*
- [Jan Grundmann] (https://github.com/jangrundmann) *developer*
- [Adam Vondráček] (https://github.com/Adam144) *developer*

##Lecturers
- [Filip Nguyen] (https://github.com/nguyenfilip)
- [Tomáš Pitner] (https://github.com/tpitner)
- [Luděk Bártek] (https://github.com/ludekbartek)
- [Adam Rambousek] (https://github.com/rambousek)
