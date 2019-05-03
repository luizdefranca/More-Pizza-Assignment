//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Luiz on 5/2/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    unknown = 0,
    small,
    medium,
    large
} PizzaSize;

@interface Pizza : NSObject
@property PizzaSize size;
@property NSArray<NSString*> * toppings;

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings;
@end

NS_ASSUME_NONNULL_END
