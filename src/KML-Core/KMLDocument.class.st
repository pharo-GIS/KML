Class {
	#name : #KMLDocument,
	#superclass : #KMLContainer,
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLDocument >> allPlacemarks [
	^ features flatCollect: #placemarks
]
