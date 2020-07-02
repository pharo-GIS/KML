KML for pharo [![Build Status](https://travis-ci.com/zweidenker/KML.svg?branch=master)](https://travis-ci.com/zweidenker/KML)
-------------

KML for pharo is a reader for KML files that supports basic element types to mainly extract geometries. For geometric objects it uses the OGC geo model from [OGC-Pharo](https://github.com/Pharo-GIS/OGC-Pharo/)

It can be loaded with


``` 
Metacello new
	repository: 'github://zweidenker/KML';
	baseline: #KML;
	load
  
```

After loading KML markup can be parsed with 

```
kmlString := '<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
  <Placemark>
    <name>A simple placemark on the ground</name>
    <Point>
			<coordinates>8.542952335953721,47.36685263064198,0</coordinates>
    </Point>
  </Placemark>
</kml>'.
reader := KMLReader on: kmlString readStream.
document := reader parse
```
