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

{ #category : #accessing }
KMLPolygon >> innerBoundaries [
	^ innerBoundaries ifNil: [ 
		innerBoundaries := OrderedCollection new ]
]

{ #category : #accessing }
KMLPolygon >> outerBoundary: aGeometryObject [ 
	outerBoundary := aGeometryObject 
]
