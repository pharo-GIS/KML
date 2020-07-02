Class {
	#name : #KMLReaderTest,
	#superclass : #TestCase,
	#category : #'KML-Reader-Tests'
}

{ #category : #'as yet unclassified' }
KMLReaderTest >> simplePlacemarkString [
	^ '<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">

  <Placemark>

    <name>A simple placemark on the ground</name>

    <Point>
			<coordinates>8.542952335953721,47.36685263064198,0</coordinates>
    </Point>

  </Placemark>

</kml>'
]

{ #category : #'as yet unclassified' }
KMLReaderTest >> testSimplePlacemark [
	| model geometry |
	model := KMLReader parse: self simplePlacemarkString.
	self assert: model features size equals: 1.
	geometry := model features first geometry.
	self assert: geometry x equals: 8.542952335953721.
	self assert: geometry y equals: 47.36685263064198.
	
]
