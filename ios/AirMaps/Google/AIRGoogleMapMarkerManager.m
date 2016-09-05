//
//  AIRGoogleMapMarkerManager.m
//  AirMaps
//
//  Created by Gil Birman on 9/2/16.
//  Copyright © 2016 Christopher. All rights reserved.
//

#import "AIRGoogleMapMarkerManager.h"
#import "AIRGoogleMapMarker.h"

@implementation AIRGoogleMapMarkerManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  AIRGoogleMapMarker *marker = [AIRGoogleMapMarker new];
//  UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(_handleTap:)];
//  // setting this to NO allows the parent MapView to continue receiving marker selection events
//  tapGestureRecognizer.cancelsTouchesInView = NO;
//  [marker addGestureRecognizer:tapGestureRecognizer];
//  marker.bridge = self.bridge;
  return marker;
}

RCT_EXPORT_VIEW_PROPERTY(coordinate, CLLocationCoordinate2D)

@end
