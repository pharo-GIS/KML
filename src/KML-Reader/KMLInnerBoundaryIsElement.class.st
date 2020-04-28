Class {
	#name : #KMLInnerBoundaryIsElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLInnerBoundaryIsElement class >> kmlElementName [ 
	^ 'innerBoundaryIs'
]

{ #category : #visiting }
KMLInnerBoundaryIsElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitInnerBoundayIsElement: self 
]
