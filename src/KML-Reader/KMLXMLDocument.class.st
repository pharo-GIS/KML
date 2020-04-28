Class {
	#name : #KMLXMLDocument,
	#superclass : #XMLDocument,
	#category : #'KML-Reader-Model'
}

{ #category : #visiting }
KMLXMLDocument >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitDocument: self 
]
