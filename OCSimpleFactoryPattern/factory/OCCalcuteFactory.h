//
//  OCCalcuteFactory.h
//  OCSimpleFactoryPattern
//
//  Created by Billie Ji on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import "OCCalculate.h"
NS_ASSUME_NONNULL_BEGIN

@interface OCCalcuteFactory : NSObject
+ (id<OCCalculate>)createCalcute:(NSString *)calculateType;
@end

NS_ASSUME_NONNULL_END
