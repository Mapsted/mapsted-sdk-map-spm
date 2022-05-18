//
//  MapPackageManagerWrapper.h
//  MapViewer
//
//  Created by Mapsted on 2019-02-01.
//  Copyright © 2019 Mapsted. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPackageManagerWrapper : NSObject
- (void)mergePackage:(NSString *) packagePath forPropertyId:(int)propertyId;
- (void)updatePackage:(int) propertyId withPackageStatus:(int) status;
- (void)setBaseMapLayer:(NSString *)path;
- (int)getPackageStatus:(int) propertyId;
@end

NS_ASSUME_NONNULL_END
