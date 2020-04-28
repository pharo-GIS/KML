Class {
	#name : #KMLCoordinatesElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLCoordinatesElement class >> kmlElementName [ 
	^ 'coordinates'
]

{ #category : #visiting }
KMLCoordinatesElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitCoordinatesElement: self 
]
