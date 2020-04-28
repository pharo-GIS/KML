Class {
	#name : #KMLStyleElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLStyleElement class >> kmlElementName [ 
	^ 'Style'
]

{ #category : #visiting }
KMLStyleElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitStyleElement: self 
]
