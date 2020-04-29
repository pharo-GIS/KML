Class {
	#name : #KMLReader,
	#superclass : #Object,
	#instVars : [
		'doc',
		'stream',
		'document'
	],
	#category : #'KML-Reader'
}

{ #category : #'instance creation' }
KMLReader class >> file: aFileReference [ 
	^ self on: aFileReference asFileReference readStream
]

{ #category : #'instance creation' }
KMLReader class >> on: aStream [
	^ self new 
		stream: aStream
]

{ #category : #parsing }
KMLReader class >> parse: aStringOrStream [
	^ (self on: aStringOrStream readStream)
		parse
]

{ #category : #'as yet unclassified' }
KMLReader >> buildModel [
	^ KMLModelBuilderVisitor new 
		visit: self document;
		model
]

{ #category : #accessing }
KMLReader >> document [
	^ document ifNil: [ 
		document := self parseDocument  ]
]

{ #category : #parsing }
KMLReader >> parse [ 	
	^ self buildModel
]

{ #category : #'as yet unclassified' }
KMLReader >> parseDocument [
	^ (XMLDOMParser on: stream)  
		nodeFactory: KMLNodeFactory new;
		parseDocument
]

{ #category : #accessing }
KMLReader >> stream: aStream [
	stream := aStream
]
