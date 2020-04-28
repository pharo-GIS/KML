Class {
	#name : #KMLNodeFactory,
	#superclass : #XMLNodeFactory,
	#category : #'KML-Reader'
}

{ #category : #accessing }
KMLNodeFactory >> classForElement: aQualifiedName attributes: anAssociationCollection [
self halt.
	^ self elementClass
]

{ #category : #accessing }
KMLNodeFactory >> classForElement: aQualifiedName namespaceURI: aURI [
	self halt.
	^ self elementClass
]

{ #category : #accessing }
KMLNodeFactory >> classForElement: aQualifiedName namespaceURI: aURI attributes: anAssociationCollection [
	self halt.
	^ self elementClass
]

{ #category : #accessing }
KMLNodeFactory >> classForElement: aQualifiedName namespaceURI: aURI localName: aLocalName attributes: anAssociationCollection [
	^ (aURI = 'http://www.opengis.net/kml/2.2')
		ifTrue: [ self classForElementNamed: aLocalName "attributes: anAssociationCollection" ]
		ifFalse: [ self elementClass ]
]

{ #category : #'as yet unclassified' }
KMLNodeFactory >> classForElementNamed: aString [ 
	^ (KMLObject allSubclasses, KMLElement allSubclasses) 
		detect: [ :each | (each respondsTo: #kmlElementName) and: [ each kmlElementName = aString ] ]
		ifNone: [ Error signal: 'Cannot find element class for ', aString ]
]

{ #category : #accessing }
KMLNodeFactory >> documentClass [

	^ KMLDocument
]
