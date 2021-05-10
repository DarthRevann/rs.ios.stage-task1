#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
   
    if ([self isEqual:@[]]) {
            return nil;
        }
        
        NSInteger min = [self[0] integerValue];
        
        for (NSNumber *number in self) {
            NSInteger item = [number integerValue];
            if (item < min) {
                min = item;
            }
        }
        
        return [NSNumber numberWithLong: min];
}

@end
