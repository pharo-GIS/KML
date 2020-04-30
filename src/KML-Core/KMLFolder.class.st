Class {
	#name : #KMLFolder,
	#superclass : #KMLContainer,
	#category : #'KML-Core'
}

{ #category : #accessing }
KMLFolder >> placemarks [
	^ self allPlacemarks 
]
