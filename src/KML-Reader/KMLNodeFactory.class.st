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
		ifFalse: [ KMLUnsupportedNamespaceElement ]
]

{ #category : #'as yet unclassified' }
KMLNodeFactory >> classForElementNamed: aString [ 

	^ KMLElement allSubclasses
		detect: [ :each | each matchesElementName: aString  ]
		ifNone: [ KMLNotImpementedElement ]
]

{ #category : #accessing }
KMLNodeFactory >> documentClass [

	^ KMLXMLDocument
]

{ #category : #'as yet unclassified' }
KMLNodeFactory >> matchesElementName: aString [
	^ self kmlElementName = aString
]
