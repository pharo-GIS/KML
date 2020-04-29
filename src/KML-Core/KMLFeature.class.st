Class {
	#name : #KMLFeature,
	#superclass : #KMLObject,
	#instVars : [
		'name'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLFeature >> name: aString [ 
	
	name := aString
]

{ #category : #'as yet unclassified' }
KMLFeature >> placemarks [
	self shouldBeImplemented.
]
