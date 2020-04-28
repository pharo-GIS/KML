Class {
	#name : #KMLDescriptionElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #testing }
KMLDescriptionElement class >> kmlElementName [ 
	^ #description
]

{ #category : #visiting }
KMLDescriptionElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitDescriptionElement: self
]
