Class {
	#name : #KMLDocumentElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLDocumentElement class >> kmlElementName [ 
	^ 'Document'
]

{ #category : #visiting }
KMLDocumentElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitDocumentElement: self 
]
