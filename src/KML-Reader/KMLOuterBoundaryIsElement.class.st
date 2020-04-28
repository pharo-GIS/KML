Class {
	#name : #KMLOuterBoundaryIsElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLOuterBoundaryIsElement class >> kmlElementName [ 
	^ 'outerBoundaryIs'
]

{ #category : #visiting }
KMLOuterBoundaryIsElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitOuterBoundaryIs: self 
]
