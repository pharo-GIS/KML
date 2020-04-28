Class {
	#name : #KMLObject,
	#superclass : #Object,
	#instVars : [
		'id'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLObject >> id [
	^ id
]

{ #category : #accessing }
KMLObject >> id: anObject [
	id := anObject
]
