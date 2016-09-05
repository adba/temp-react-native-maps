//
//  AIRGoogleMapMarker.m
//  AirMaps
//
//  Created by Gil Birman on 9/2/16.
//

#import "AIRGoogleMapMarker.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation AIRGoogleMapMarker

- (instancetype)init
{
  if ((self = [super init])) {
    _realMarker = [[GMSMarker alloc] init];
    _realMarker.title = @"AAAAA";
    _realMarker.snippet = @"BBBBBB";
  }
  return self;
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate {
  printf("setCoordinate\n");
  _realMarker.position = coordinate;
}

- (CLLocationCoordinate2D)coordinate {
  return _realMarker.position;
}

@end
