//
//  OpenPano.h
//  OpenPano-iOS
//
//  Created by a on 2020/1/11.
//  Copyright © 2020 a. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OpenPano : NSObject

+ (OpenPano*)instance;

- (void)stitchImageFiles:(NSArray *)pathFiles;

@end

NS_ASSUME_NONNULL_END
