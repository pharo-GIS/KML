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

{ #category : #accessing }
KMLPlacemark >> description: aString [ 
	description := aString
]
