//
//  OCCalcuteFactory.m
//  OCSimpleFactoryPattern
//
//  Created by Billie Ji on 2021/5/11.
//

#import "OCCalcuteFactory.h"
#import "OCCalculateAdd.h"
#import "OCCalculateMinus.h"
#import "CommonTool.h"
@implementation OCCalcuteFactory
+ (id<OCCalculate>)createCalcute:(NSString *)calculateType {
    NSArray *calculateArray = @[@"+", @"-"];
    CalculateType calType = [calculateArray indexOfObject:calculateType];
    switch (calType) {
        case calcuteTypeAdd:
            return [[OCCalculateAdd alloc]init];
            break;
        case calculateTypeMinus:
            return [[OCCalculateMinus alloc]init];
            break;
        default:
            break;
    }
}
@end
