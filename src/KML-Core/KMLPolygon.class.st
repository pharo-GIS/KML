Class {
	#name : #KMLPolygon,
	#superclass : #OGCPolygon,
	#instVars : [
		'altitudeMode'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLPolygon >> addInnerBoundary: anOGCLinearRing [ 
	self interiorRings add: anOGCLinearRing 
]

{ #category : #accessing }
KMLPolygon >> altitudeMode [
	^ altitudeMode
]

{ #category : #accessing }
KMLPolygon >> altitudeMode: anObject [
	altitudeMode := anObject
]

{ #category : #accessing }
KMLPolygon >> outerBoundary [
	^ self exteriorRing
]

{ #category : #accessing }
KMLPolygon >> outerBoundary: anOGCLinearRing [ 
	self exteriorRing: anOGCLinearRing 
]
