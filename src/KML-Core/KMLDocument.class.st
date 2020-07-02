Class {
	#name : #KMLDocument,
	#superclass : #KMLContainer,
	#instVars : [
		'style'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLDocument >> style: aKMLStyle [ 
	style := aKMLStyle 
]
