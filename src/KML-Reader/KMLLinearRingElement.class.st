Class {
	#name : #KMLLinearRingElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLLinearRingElement class >> kmlElementName [ 
	^ 'LinearRing'
]

{ #category : #visiting }
KMLLinearRingElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitLinearRingElement: self 
]
