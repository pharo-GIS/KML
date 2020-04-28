Class {
	#name : #KMLLineStyleElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLLineStyleElement class >> kmlElementName [ 
	^ 'LineStyle'
]

{ #category : #visiting }
KMLLineStyleElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitLineStyleElement: self 
]
