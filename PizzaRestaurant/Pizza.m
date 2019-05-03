//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Luiz on 5/2/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

-(NSString *)description{
    
    NSString *desc = [NSString stringWithFormat: @"Pizza - size: @%@\n Toppings: %@", @[@"unknown" ,                                                                    @"small",@"medium", @"large"] [_size], _toppings ];
    return desc;
}
@end
