Class {
	#name : #KMLVisitor,
	#superclass : #Object,
	#category : #'KML-Reader'
}

{ #category : #visiting }
KMLVisitor >> visit: aKMLElement [ 
	^ aKMLElement acceptKMLVisitor: self 
]

{ #category : #visiting }
KMLVisitor >> visitAll: aCollection [ 
	^ aCollection collect: [ :each |
		self visit: each ]
]

{ #category : #visiting }
KMLVisitor >> visitCoordinatesElement: aKMLCoordinatesElement [ 
	^ self visitElementWithChildren: aKMLCoordinatesElement 
]

{ #category : #visiting }
KMLVisitor >> visitDescriptionElement: aKMLDescriptionElement [ 
	^ self visitElementWithChildren: aKMLDescriptionElement 
]

{ #category : #'as yet unclassified' }
KMLVisitor >> visitDocument: aKMLDocument [ 
	^ self visitElementWithChildren: aKMLDocument 
]

{ #category : #visiting }
KMLVisitor >> visitDocumentElement: aKMLDocumentElement [ 
	^ self visitElementWithChildren: aKMLDocumentElement 
]

{ #category : #visiting }
KMLVisitor >> visitElementWithChildren: aKMLElement [
	^ self visitAll: aKMLElement elements
]

{ #category : #visiting }
KMLVisitor >> visitFolderElement: aKMLFolderElement [ 
	^ self visitElementWithChildren: aKMLFolderElement 
]

{ #category : #visiting }
KMLVisitor >> visitIgnoredElement: aKMLIgnoredElement [ 
	"if the names says so just let's ignore it"
	^ nil
]

{ #category : #visiting }
KMLVisitor >> visitInnerBoundayIsElement: aKMLInnerBoundaryIsElement [ 
	^ self visitElementWithChildren: aKMLInnerBoundaryIsElement 
]

{ #category : #visiting }
KMLVisitor >> visitLineStyleElement: aKMLLineStyleElement [ 
	^ self visitElementWithChildren: aKMLLineStyleElement 
]

{ #category : #visting }
KMLVisitor >> visitLinearRingElement: aKMLLinearRingElement [ 
	^ self visitElementWithChildren: aKMLLinearRingElement 
]

{ #category : #visiting }
KMLVisitor >> visitMultiGeometryElement: aKMLMultiGeometryElement [ 
	^ self visitElementWithChildren: aKMLMultiGeometryElement 
]

{ #category : #visiting }
KMLVisitor >> visitNameElement: aKMLNameElement [ 
	^ self visitElementWithChildren: aKMLNameElement 
]

{ #category : #visiting }
KMLVisitor >> visitOuterBoundaryIs: aKMLOuterBoundaryIsElement [ 
	^ self visitElementWithChildren: aKMLOuterBoundaryIsElement 
]

{ #category : #visiting }
KMLVisitor >> visitParameterElement: aKMLParameterElement [ 
	^ self visitElementWithChildren: aKMLParameterElement 
]

{ #category : #visiting }
KMLVisitor >> visitPlacemarkElement: aKMLPlacemarkElement [ 
	^ self visitElementWithChildren: aKMLPlacemarkElement 
]

{ #category : #visiting }
KMLVisitor >> visitPointElement: aKMLPointElement [ 
	^ self visitElementWithChildren: aKMLPointElement 
]

{ #category : #visiting }
KMLVisitor >> visitPolyStyleElement: aKMLPolyStyleElement [ 
	^ self visitElementWithChildren: aKMLPolyStyleElement 
]

{ #category : #visiting }
KMLVisitor >> visitPolygonElement: aKMLPolygonElement [ 
	^ self visitElementWithChildren: aKMLPolygonElement 
]

{ #category : #visiting }
KMLVisitor >> visitRootElement: aKMLElement [ 
	^ self visitElementWithChildren: aKMLElement 
]

{ #category : #visiting }
KMLVisitor >> visitSchemaElement: aKMLSchemaElement [ 
	^ self visitElementWithChildren: aKMLSchemaElement 
]

{ #category : #visiting }
KMLVisitor >> visitStyleElement: aKMLStyleElement [ 
	^ self visitElementWithChildren: aKMLStyleElement 
]
