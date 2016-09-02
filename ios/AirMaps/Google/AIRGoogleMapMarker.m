//
//  AIRGoogleMapMarker.m
//  AirMaps
//
//  Created by Gil Birman on 9/2/16.
//  Copyright © 2016 Christopher. All rights reserved.
//

#import "AIRGoogleMapMarker.h"

@implementation AIRGoogleMapMarker

@synthesize realMarker = _realMarker;

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate {
  self.realMarker.position = coordinate;
}

- (CLLocationCoordinate2D)coordinate {
  return self.realMarker.position;
}

@end
