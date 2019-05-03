//
//  ManagerThatHateAnchovies.m
//  PizzaRestaurant
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "ManagerThatHateAnchovies.h"

@implementation ManagerThatHateAnchovies

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    BOOL containAnchovies = [self thereIsAnchovie: toppings];
    if(containAnchovies){
        return NO;
    }
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return  NO;
}


-(void)kitchenDidMakePizza:(Pizza *)pizza{
    
}

//Private Methods
-(BOOL) thereIsAnchovie: (NSArray*) toppings {
    for (NSString *topping in toppings) {
        if([topping isEqualToString: @"anchovies"] ){
            return YES;
        }
    }
    return NO;
}
@end
