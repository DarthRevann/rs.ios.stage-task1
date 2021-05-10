#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    if (playerArray.count == 0) {
            return @[];
        }
        if (rankedArray.count == 0) {
            NSMutableArray *a = [NSMutableArray new];
            while ([a count] < playerArray.count)
                [a addObject: @(1)];
            return a;
        }
        NSMutableArray *c = [NSMutableArray array];

        for (id obj in rankedArray) {
            if (![c containsObject:obj]) {
                [c addObject:obj];
            }
        }
        NSMutableArray *b = [NSMutableArray new];
        for (NSNumber *i in playerArray) {
            int q = 1;
            for (NSNumber *j in c) {
                if ([j intValue] > [i intValue]) {
                    q += 1;
                }
            }
            [b addObject:@(q)];
        }
        return b;
}

@end
