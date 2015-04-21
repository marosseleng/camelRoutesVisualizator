#Silverspoon Camel Routes Visualizator

School project for seminar **#PB138(Modern markup languages)** at Masaryk University, Brno, Czech Republic

##Table of contents
- [Summary](#summary)
- [Usage] (#usage)
  - [IntelliJ IDEA] (#IDEA)
  - [NetBeans] (#netbeans)
- [Documentation] (#documentation)
- [Issues] (#issues)
- [Team] (#team)

##Summary

Our task in this project is to develop a web application, which uses the Extensible Stylesheet Language Transformation (XSLT) to transform [Apache Camel Routes] (http://camel.apache.org/routes.html), written in an `.xml` file, into a `.svg` picture.
Eventually, the produced picture will be shown on webpage.

This transformation should cover the needs of the [Silverspoon.io project] (https://silverspoon.io).

Original task assignment in Czech language:
```
Cílem práce je vizualizovat Apache Camel routes pomocí SVG. K tomu bude využito XSLT transformace. Obecné prvky zadání dané vizualizace jsou dostupné na tomto odkazu: https://docs.google.com/document/d/1VYe_K9NvOXHtS-R-9H3xywKGm6uvraHk8RWuXHH7qSQ/pub
```

##Usage

As this is a maven project, you should be able to open it in every maven-supporting IDE. But we recommend IntelliJ IDEA Ultimate and Netbeans with JAVA EE bundle.

1. First of all you need to download the zip with the sources. To do this, just press the `Download ZIP` button on the right side.
2. As this is a web application, you will need a server to run it on. We recommend you to download and use the [Apache Tomcat] (https://tomcat.apache.org/download-80.cgi).
3. Now it's time to extract downloaded files. When extracting Apache Tomcat, remember, that it is usefull to extract it into folder, that you have write permission on.

####IDEA
1. Open the IntelliJ IDEA.
2. Click on File-->Open.
3. In dialog shown, go to folder, where the project is unpacked, and choose the file `pom.xml` from project folder.

####Netbeans
1. Open the Netbeans IDE.
2. Click on File-->Open project, or press `Ctrl+Shift+O`.
3. In dialog shown, go to folder, where the project is unpacked, and you should see project folder with little maven icon.
4. Click on folder and press the `Open Project` button.

##Documentation

Read the full documentation on our [wiki pages] (https://github.com/maroselo/visualizator/wiki).

##Team

- [Maroš Šeleng] (https://github.com/maroselo) *developer*
- [Jaroslav Bončo] (https://github.com/jarkojefamozny) *developer*
- [Jan Grundmann] (https://github.com/jangrundmann) *developer*
- [Adam Vondráček] () *developer*

