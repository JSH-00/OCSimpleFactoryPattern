//
//  CommonTool.h
//  OCSimpleFactoryPattern
//
//  Created by Billie Ji on 2021/5/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, CalculateType) {
    calcuteTypeAdd = 0,
    calculateTypeMinus
};
@interface CommonTool : NSObject

@end

NS_ASSUME_NONNULL_END
