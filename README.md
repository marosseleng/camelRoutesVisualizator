#Silverspoon Camel Routes Visualizator

Current Status
[![Build Status](https://travis-ci.org/maroselo/visualizator.svg?branch=master)](https://travis-ci.org/maroselo/visualizator)

[13-06-2015] Fixed minor bugs in transformations (backend + documentation done).

[15-06-2015] Added reports and presentation. FINAL VERSION

School project for seminar **#PB138(Modern markup languages)** at Masaryk University, Brno, Czech Republic

##Table of contents
- [Summary](#summary)
- [Installation] (#installation)
- [Documentation] (#documentation)
- [Team] (#team)

##Summary

Our task in this project is to develop a web application, which uses the Extensible Stylesheet Language Transformation (XSLT) to transform [Apache Camel Routes] (http://camel.apache.org/routes.html), written in an `.xml` file, into a `.svg` picture.
Eventually, the produced picture will be shown on a webpage.

This transformation should cover the needs of the [Silverspoon.io project] (https://silverspoon.io).

Original task assignment in Czech language:
```
Cílem práce je vizualizovat Apache Camel routes pomocí SVG.
K tomu bude využito XSLT transformace.
Obecné prvky zadání dané vizualizace jsou dostupné na tomto odkazu:
https://docs.google.com/document/d/1VYe_K9NvOXHtS-R-9H3xywKGm6uvraHk8RWuXHH7qSQ/pub
```

##Installation

As this is a maven project, you should be able to open it in every maven-supporting IDE. But we recommend IntelliJ IDEA Ultimate and Netbeans with JAVA EE bundle.

1. First of all you need to download the zip with the sources. To do this, just press the `Download ZIP` button on the right side.
2. As this is a web application, you will need the [Apache Tomcat] (https://tomcat.apache.org/download-80.cgi).
3. Now it's time to extract downloaded files. Don't forget locations of extracted files.
4. Open your favorite IDE and open the project by opening `.pom` file.
5. Configure the tomcat server, especially the `CATALINA_BASE` location.
6. Build and run the project.

More pleasant way to use the application you can find in project's [wiki] (https://github.com/maroselo/visualizator/wiki).

After all these steps, please proceed to [Instructions] (https://github.com/maroselo/visualizator/wiki/How-to-use-it).

##Documentation

The documentation to sources can be found in directory `documentation`.

Read the detailed documentation, with the description of every single thing in application and pictures, as well, on our [wiki pages] (https://github.com/maroselo/visualizator/wiki).

##Team

- [Maroš Šeleng] (https://github.com/maroselo) *developer*
- [Jaroslav Bončo] (https://github.com/jarkojefamozny) *developer*
- [Jan Grundmann] (https://github.com/jangrundmann) *developer*
- [Adam Vondráček] (https://github.com/Adam144) *developer*

***
- [Filip Nguyen] (https://github.com/nguyenfilip) *developer*
- [Tomáš Pitner] (https://github.com/tpitner) *developer*
- [Luděk Bártek] (https://github.com/ludekbartek) *developer*
- [Adam Rambousek] (https://github.com/rambousek) *developer*

