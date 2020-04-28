Class {
	#name : #KMLPlacemarkElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLPlacemarkElement class >> kmlElementName [ 
	^ 'Placemark'
]

{ #category : #visiting }
KMLPlacemarkElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitPlacemarkElement: self 
]
