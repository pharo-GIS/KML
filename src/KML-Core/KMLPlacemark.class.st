Class {
	#name : #KMLPlacemark,
	#superclass : #KMLFeature,
	#instVars : [
		'geometry',
		'description'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLPlacemark >> addGeometry: aKMLGeometry [
	geometry := aKMLGeometry
]

{ #category : #converting }
KMLPlacemark >> asGeoPolygons [
	^ geometry asGeoPolygons 
]

{ #category : #accessing }
KMLPlacemark >> description: aString [ 
	description := aString
]

{ #category : #accessing }
KMLPlacemark >> geometry [
	^ geometry
]

{ #category : #'as yet unclassified' }
KMLPlacemark >> placemarks [
	^ Array with: self
]

{ #category : #printing }
KMLPlacemark >> printOn: aStream [
	aStream << 'Placemark: ' << name asString
]
