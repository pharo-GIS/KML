Class {
	#name : #KMLCoordinatesObject,
	#superclass : #KMLGeometry,
	#instVars : [
		'coordinates'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLCoordinatesObject >> coordinates [
	^ coordinates
]

{ #category : #ccessing }
KMLCoordinatesObject >> coordinates: aCollection [ 
	coordinates := aCollection 
]
