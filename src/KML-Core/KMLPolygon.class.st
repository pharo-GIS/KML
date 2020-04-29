Class {
	#name : #KMLPolygon,
	#superclass : #KMLGeometry,
	#instVars : [
		'outerBoundary',
		'innerBoundaries'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLPolygon >> addInnerBoundary: aGeometryObject [  
	self innerBoundaries add: aGeometryObject 
]

{ #category : #converting }
KMLPolygon >> asGeoPolygons [
	| poly |
	poly := Array with: outerBoundary.
	innerBoundaries ifNotNil: [ 
		poly := poly copyWithAll: innerBoundaries ].
	^ poly collect: [ :each |
		 (GJLinearRing new
			coordinates: each coordinates) asGJPolygon ]
]

{ #category : #accessing }
KMLPolygon >> innerBoundaries [
	^ innerBoundaries ifNil: [ 
		innerBoundaries := OrderedCollection new ]
]

{ #category : #accessing }
KMLPolygon >> outerBoundary: aGeometryObject [ 
	outerBoundary := aGeometryObject 
]
