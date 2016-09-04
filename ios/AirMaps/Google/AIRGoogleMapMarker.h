//
//  AIRGoogleMapMarker.h
//  AirMaps
//
//  Created by Gil Birman on 9/2/16.
//

#import <GoogleMaps/GoogleMaps.h>

@interface AIRGoogleMapMarker : UIView

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, strong) GMSMarker* realMarker;

@end
