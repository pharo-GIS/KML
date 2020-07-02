Class {
	#name : #KMLStyle,
	#superclass : #KMLObject,
	#instVars : [
		'color',
		'width'
	],
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLStyle >> color: aString [ 
	color := aString
]

{ #category : #accessing }
KMLStyle >> width: aString [ 
	width := aString asNumber 
]
