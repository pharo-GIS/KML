Class {
	#name : #KMLNameElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLNameElement class >> kmlElementName [ 
	^ 'name'
]

{ #category : #visiting }
KMLNameElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitNameElement: self 
]
