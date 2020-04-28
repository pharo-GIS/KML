Class {
	#name : #KMLObject,
	#superclass : #Object,
	#instVars : [
		'id',
		'properties'
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

{ #category : #accessing }
KMLObject >> properties [
	^ properties ifNil: [ 
		properties := Dictionary new ]
]

{ #category : #accessing }
KMLObject >> propertyAt: key put: value [ 
	self properties
		at: key
		put: value
]
