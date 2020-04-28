Class {
	#name : #KMLPolygon,
	#superclass : #KMLGeometry,
	#instVars : [
		'geometries'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLPolygon >> addGeometry: aGeometryObject [ 
	self geometries add: aGeometryObject 
]

{ #category : #accessing }
KMLPolygon >> geometries [
	^ geometries ifNil: [ 
		geometries := OrderedCollection new ]
]
