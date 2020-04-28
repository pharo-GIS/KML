Class {
	#name : #KMLParameterElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #testing }
KMLParameterElement class >> matchesElementName: aString [
	^ self parameterNames includes: aString
]

{ #category : #testing }
KMLParameterElement class >> parameterNames [
	^ #( color width fill outline )
]

{ #category : #visiting }
KMLParameterElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitParameterElement: self 
]
