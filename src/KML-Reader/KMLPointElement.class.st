Class {
	#name : #KMLPointElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #testing }
KMLPointElement class >> kmlElementName [ 
	^ 'Point'
]

{ #category : #visiting }
KMLPointElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitPointElement: self
]
