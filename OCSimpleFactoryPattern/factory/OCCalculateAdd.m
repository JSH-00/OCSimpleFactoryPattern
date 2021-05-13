//
//  OCCalculateAdd.m
//  OCSimpleFactoryPattern
//
//  Created by Billie Ji on 2021/5/11.
//

#import "OCCalculateAdd.h"

@implementation OCCalculateAdd
@synthesize numberA = _numberA;
@synthesize numberB = _numberB;

- (CGFloat)calculate {
    return self.numberA + self.numberB;
}
@end
