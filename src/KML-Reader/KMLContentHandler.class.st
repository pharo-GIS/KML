Class {
	#name : #KMLContentHandler,
	#superclass : #SAX2ContentHandler,
	#instVars : [
		'elementRootClass'
	],
	#category : #'KML-Reader'
}

{ #category : #'as yet unclassified' }
KMLContentHandler >> elementRootClass [
	^ TriasObject
]

{ #category : #'handling - content' }
KMLContentHandler >> startElement: element attributes: attributes [ 
	| o |
	o := (self elementRootClass elementWithName: element) new.
	(self parser = self parser parsingResult)
		ifTrue: [ self parser parsingResult: o ]
		ifFalse: [ self parser parsingResult perform: element with: o ]
]
