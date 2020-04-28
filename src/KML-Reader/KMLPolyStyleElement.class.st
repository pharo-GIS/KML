Class {
	#name : #KMLPolyStyleElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLPolyStyleElement class >> kmlElementName [ 
	^ 'PolyStyle'
]

{ #category : #visiting }
KMLPolyStyleElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitPolyStyleElement: self 
]
