//
//  SecondManager.m
//  PizzaRestaurant
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "SecondManager.h"



@implementation SecondManager
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return  YES;
}


-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Yippee Ki-Yay");
    [super.delivery deliverPizza: pizza];
}
@end
