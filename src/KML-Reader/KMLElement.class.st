Class {
	#name : #KMLElement,
	#superclass : #XMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #testing }
KMLElement class >> kmlElementName [
	self subclassResponsibility 
]

{ #category : #testing }
KMLElement class >> matchesElementName: aString [
	^ self kmlElementName = aString
]
