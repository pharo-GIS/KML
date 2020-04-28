Class {
	#name : #KMLMultiGeometryElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLMultiGeometryElement class >> kmlElementName [ 
	^ 'MultiGeometry'
]

{ #category : #visiting }
KMLMultiGeometryElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitMultiGeometryElement: self 
]
