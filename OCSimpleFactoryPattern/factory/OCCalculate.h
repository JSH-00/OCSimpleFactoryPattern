//
//  OCCalculate.h
//  OCSimpleFactoryPattern
//
//  Created by Billie Ji on 2021/5/11.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@protocol OCCalculate <NSObject>
@property (nonatomic)CGFloat numberA;
@property (nonatomic)CGFloat numberB;

-(CGFloat)calculate;
@end

NS_ASSUME_NONNULL_END
