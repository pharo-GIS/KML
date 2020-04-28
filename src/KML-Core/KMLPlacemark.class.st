Class {
	#name : #KMLPlacemark,
	#superclass : #KMLFeature,
	#instVars : [
		'geometry'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLPlacemark >> addGeometry: aKMLGeometry [
	geometry := aKMLGeometry
]
