//
//  AIRGoogleMapMarker.h
//  AirMaps
//
//  Created by Gil Birman on 9/2/16.
//  Copyright © 2016 Christopher. All rights reserved.
//

#import <GoogleMaps/GoogleMaps.h>

@interface AIRGoogleMapMarker : UIView

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, assign) GMSMarker* realMarker;

@end
