Class {
	#name : #KMLSchemaElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLSchemaElement class >> kmlElementName [ 
	^ 'Schema'
]

{ #category : #visiting }
KMLSchemaElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitSchemaElement: self
]
