Class {
	#name : #KMLCoordinatesObject,
	#superclass : #KMLGeometry,
	#instVars : [
		'coordinates'
	],
	#category : #'KML-Core'
}

{ #category : #ccessing }
KMLCoordinatesObject >> coordinates: aCollection [ 
	coordinates := aCollection 
]
