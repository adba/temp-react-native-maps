//
//  AIRGoogleMap.m
//  AirMaps
//
//  Created by Gil Birman on 9/1/16.
//  Copyright © 2016 Christopher. All rights reserved.
//

#import "AIRGoogleMap.h"
#import "AIRGoogleMapMarker.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation AIRGoogleMap
{
  NSMutableArray<UIView *> *_reactSubviews;
}

- (instancetype)init
{
  if ((self = [super init])) {
    _reactSubviews = [NSMutableArray new];
  }
  return self;
}

- (void)insertReactSubview:(id<RCTComponent>)subview atIndex:(NSInteger)atIndex {
  // Our desired API is to pass up markers/overlays as children to the mapview component.
  // This is where we intercept them and do the appropriate underlying mapview action.
  if ([subview isKindOfClass:[AIRGoogleMapMarker class]]) {
    AIRGoogleMapMarker *marker = (AIRGoogleMapMarker*)subview;
    marker.realMarker.map = self;
//    [self addAnnotation:(id <MKAnnotation>) subview];
//  } else if ([subview isKindOfClass:[AIRMapPolyline class]]) {
//    ((AIRMapPolyline *)subview).map = self;
//    [self addOverlay:(id<MKOverlay>)subview];
//  } else if ([subview isKindOfClass:[AIRMapPolygon class]]) {
//    ((AIRMapPolygon *)subview).map = self;
//    [self addOverlay:(id<MKOverlay>)subview];
//  } else if ([subview isKindOfClass:[AIRMapCircle class]]) {
//    [self addOverlay:(id<MKOverlay>)subview];
  }
  [_reactSubviews insertObject:(UIView *)subview atIndex:(NSUInteger) atIndex];
}

@end
