Class {
	#name : #KMLGeometryHolder,
	#superclass : #KMLObject,
	#instVars : [
		'geometry'
	],
	#category : #'KML-Core'
}

{ #category : #adding }
KMLGeometryHolder >> addGeometry: aGeometry [
	geometry := aGeometry 
]

{ #category : #accessing }
KMLGeometryHolder >> geometry [
	^ geometry
]
