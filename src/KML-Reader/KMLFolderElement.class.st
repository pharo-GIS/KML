Class {
	#name : #KMLFolderElement,
	#superclass : #KMLElement,
	#category : #'KML-Reader-Model'
}

{ #category : #'as yet unclassified' }
KMLFolderElement class >> kmlElementName [ 
	^ 'Folder'
]

{ #category : #visiting }
KMLFolderElement >> acceptKMLVisitor: aKMLVisitor [ 
	^ aKMLVisitor visitFolderElement: self 
]
