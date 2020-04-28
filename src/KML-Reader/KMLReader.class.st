Class {
	#name : #KMLReader,
	#superclass : #Object,
	#instVars : [
		'doc'
	],
	#category : #'KML-Reader'
}

{ #category : #'instance creation' }
KMLReader class >> file: aFileReference [ 
	^ self on: aFileReference readStream
]

{ #category : #'instance creation' }
KMLReader class >> on: aStream [
	^ self new 
		initializeFromStream: aStream
]

{ #category : #'as yet unclassified' }
KMLReader >> initializeFromStream: aReadStream [ 
	doc := (XMLDOMParser on: aReadStream)  
		nodeFactory: KMLNodeFactory new;
		parseDocument
]
