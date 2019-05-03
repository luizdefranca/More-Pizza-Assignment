//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@class Kitchen;
@protocol KitchenDelegate <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

//Optional Methods
@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;
@end

@interface Kitchen : NSObject
//Properties

//Delegates
@property (nonatomic, strong) id<KitchenDelegate> delegate;

//Methods
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

//Convenients Methods
+(Pizza *)largePepperoni;
+(Pizza *)meatLoversWithSize:(PizzaSize)size;
@end
