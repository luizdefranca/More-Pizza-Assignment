//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

//singleton
+ (instancetype)sharedInstance {
    static DeliveryCar *sharedInstance = nil;
    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        sharedInstance = [[DeliveryCar alloc] init];
    });
    return sharedInstance;
}

-(void) deliverPizza:(Pizza *)pizza {
    
    Car *car = [Car new];
    [car deliverPizza];
}
@end
