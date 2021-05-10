#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
   
    if (number == nil) {
            return @[];
        } else {
            NSMutableArray *a = [[NSMutableArray alloc] init];
            int b = [number intValue];
            b = b < 0 ? -b : b;
            while (b > 0) {
                [a addObject: [NSString stringWithFormat:@"%d", b % 10]];
                b = b / 10;
            }
            return a;
        }
}

@end
