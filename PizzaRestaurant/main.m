    //
    //  main.m
    //  PizzaRestaurant
    //
    //  Created by Steven Masuch on 2014-07-19.
    //  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
    //

    #import <Foundation/Foundation.h>

    #import "Kitchen.h"
    #import "InputOutputController.h"
    #import "Pizza.h"
    #import "MainManager.h"
    #import "SecondManager.h"
    #import "DeliveryService.h"
    #import "DeliveryCar.h"

    int main(int argc, const char * argv[])
    {

        @autoreleasepool {

            NSLog(@"Please pick your pizza size and toppings:");
            NSString *choseManagerMessage = @"Please, chose your manager:\n \"first\" or \"second\" or anything to no manager";

            Kitchen *restaurantKitchen = [Kitchen new];
            MainManager* noAnch;
            SecondManager* second;
            DeliveryService * deliveryService;


            while (TRUE) {
                // Loop forever

                NSString *managerOption = [InputOutputController inputForPrompt: choseManagerMessage];

                if ([managerOption isEqualToString: @"first"]) {
                    if (!noAnch) {
                        noAnch = [MainManager new];
                        if(!deliveryService){
                            deliveryService = [DeliveryService new];
                            noAnch.delivery = deliveryService;
                        }
                    }
                    restaurantKitchen.delegate = noAnch;
                }else if ( [managerOption isEqualToString: @"second"]) {
                    if (!second) {
                        second = [SecondManager new];
                        if(!deliveryService){
                            deliveryService = [DeliveryService new];
                            second.delivery = deliveryService;
                        }
                    }
                    restaurantKitchen.delegate = second;
                }

                NSLog(@"> ");
                char str[100];
                fgets (str, 100, stdin);

                NSString *inputString = [[NSString alloc] initWithUTF8String:str];
                inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

                NSLog(@"Input was %@", inputString);

                // Take the first word of the command as the size, and the rest as the toppings
                NSArray *commandWords = [inputString componentsSeparatedByString:@" "];

                Pizza *pizza = [Pizza new];
                // And then send some message to the kitchen...
                if(commandWords.count > 0){

                    if([commandWords[0] isEqualToString:@"pepperoni" ]){
                        pizza = [Kitchen largePepperoni];

                    } else if([commandWords[0] isEqualToString:@"large"]
                              || [commandWords[0] isEqualToString:@"medium"]
                              || [commandWords[0] isEqualToString:@"small"]){



                        if([commandWords[1] isEqualToString: @"meatlovers"]){

                                PizzaSize size = [InputOutputController convertStringToPizzaSize: commandWords[0]];
                                pizza = [Kitchen meatLoversWithSize: size];} else {
                                NSString * sizeString = [[NSString alloc]initWithString:commandWords[0]];
                                PizzaSize size = [InputOutputController convertStringToPizzaSize:sizeString];
                                NSArray<NSString*>* toppings = [commandWords subarrayWithRange: NSMakeRange(1, commandWords.count  - 1)];
                                pizza = [restaurantKitchen makePizzaWithSize: size toppings:toppings];

                            }
                    }
                }

                NSLog(@"%@", pizza);

                NSString *recordOptionString = [InputOutputController inputForPrompt: @"Would you like to see the delivery records - YES or NO"];
                if(recordOptionString.boolValue){
                    NSLog(@"%@", deliveryService.descriptionOfDeliveredPizzas);
                }
            }

        }
        return 0;
    }

