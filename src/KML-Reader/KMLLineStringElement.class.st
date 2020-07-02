Class {
	#name : #KMLLineStringElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLLineStringElement class >> kmlElementName [ 
	^ 'LineString'
]

{ #category : #visiting }
KMLLineStringElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitLineStringElement: self 
]
