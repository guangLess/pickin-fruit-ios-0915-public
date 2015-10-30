//
//  FISViewControllerSpec.m
//  pickinFruit
//
//  Created by Zachary Drossman on 9/16/14.
//  Copyright 2014 Joe Burgess. All rights reserved.
//

#import "Specta.h"
#import "FISViewController.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "FISAppDelegate.h"
#import "Swizzlean.h"
#import "KIF.h"

SpecBegin(FISViewController)

describe(@"FISViewController", ^{
    
    // beforeAll(^{
        
    //     UIPickerView *pickerView = (UIPickerView *)[tester waitForViewWithAccessibilityLabel:@"FruitSpinner"];
        
    //     Swizzlean *swizzle = [[Swizzlean alloc] initWithClassToSwizzle:[FISViewController class]];
    //     [swizzle swizzleInstanceMethod:@selector(fruitsArray) withReplacementImplementation:^NSArray *(id _self) {
    //         return @[@"Apple",@"Banana"];
    //     }];
        
    //     [pickerView reloadAllComponents];
    // });

    
    // beforeEach(^{

    // });
    
    // describe(@"spinButton", ^{
       
    //     it(@"should display UIAlertView when clicked", ^{
            
    //         [tester tapViewWithAccessibilityLabel:@"SpinButton"];
            
    //         [tester waitForViewWithAccessibilityLabel:@"Drumroll please..."];
    //     });
        
    // });
    
    // describe(@"spinnerAlertView", ^{
        
    //     FISAppDelegate *appDelegate = (FISAppDelegate *)[UIApplication sharedApplication].delegate;
        
    //     FISViewController *viewController = (FISViewController *)appDelegate.window.rootViewController;
        
    //     it(@"should have the appropriate title", ^{
    //         //Does this need to be here given the way UIAlertView is setup?
    //         [tester waitForViewWithAccessibilityLabel:@"Drumroll please..."];
    //     });
        
    //     it(@"should have a cancel button that dismisses the alertview", ^{
            
    //         [tester waitForViewWithAccessibilityLabel:@"Drumroll please..."];
    //         [tester tapViewWithAccessibilityLabel:@"Cancel"];
    //         [tester waitForAbsenceOfViewWithAccessibilityLabel:@"Cancel"];
    //     });
        
        
    //     it(@"should have a spin button that re-spins the slot machine", ^{
    //         [tester tapViewWithAccessibilityLabel:@"SpinButton"];
    //         [tester waitForViewWithAccessibilityLabel:@"Drumroll please..."];
    //         [tester tapViewWithAccessibilityLabel:@"Re-spin"];
    //         [tester waitForViewWithAccessibilityLabel:@"Drumroll please..."];
    //         [tester tapViewWithAccessibilityLabel:@"Cancel"];
    //         [tester waitForAbsenceOfViewWithAccessibilityLabel:@"Cancel"];
    //     });
        
    //     it(@"should say 'You lost!' when you do not get three of the same fruit across the spinner", ^{

    //         UIPickerView *fruitPicker = (UIPickerView *)[tester waitForViewWithAccessibilityLabel:@"FruitSpinner"];
            
    //         [tester tapViewWithAccessibilityLabel:@"SpinButton"];

            
    //         NSString *fruitOne = viewController.fruitsArray[[fruitPicker selectedRowInComponent:0]];
    //         NSString *fruitTwo = viewController.fruitsArray[[fruitPicker selectedRowInComponent:1]];
    //         NSString *fruitThree = viewController.fruitsArray[[fruitPicker selectedRowInComponent:2]];
            
    //         while ( [fruitOne isEqualToString:fruitTwo] && [fruitTwo isEqualToString:fruitThree])
    //         {
    //             [tester tapViewWithAccessibilityLabel:@"Re-spin"];
    //             [tester waitForViewWithAccessibilityLabel:@"Drumroll please..."];
                
    //             fruitOne = viewController.fruitsArray[[fruitPicker selectedRowInComponent:0]];
    //             fruitTwo = viewController.fruitsArray[[fruitPicker selectedRowInComponent:1]];
    //             fruitThree = viewController.fruitsArray[[fruitPicker selectedRowInComponent:2]];

    //         }
            
    //         [tester waitForViewWithAccessibilityLabel:@"You lost!"];
    //         [tester tapViewWithAccessibilityLabel:@"Cancel"];
    //         [tester waitForAbsenceOfViewWithAccessibilityLabel:@"Cancel"];

    //     });
        
    //     it(@"should say 'You won!' when you do get three of the same fruit across the spinner", ^{

    //         UIPickerView *fruitPicker = (UIPickerView *)[tester waitForViewWithAccessibilityLabel:@"FruitSpinner"];
            
    //         [tester tapViewWithAccessibilityLabel:@"SpinButton"];

    //         NSString *fruitOne = viewController.fruitsArray[[fruitPicker selectedRowInComponent:0]];
    //         NSString *fruitTwo = viewController.fruitsArray[[fruitPicker selectedRowInComponent:1]];
    //         NSString *fruitThree = viewController.fruitsArray[[fruitPicker selectedRowInComponent:2]];
           
    //         while ( ![fruitOne isEqualToString:fruitTwo] || ![fruitTwo isEqualToString:fruitThree] || ![fruitOne isEqualToString:fruitThree])
    //         {
    //             [tester tapViewWithAccessibilityLabel:@"Re-spin"];
    //             [tester waitForViewWithAccessibilityLabel:@"Drumroll please..."];
                
    //             fruitOne = viewController.fruitsArray[[fruitPicker selectedRowInComponent:0]];
    //             fruitTwo = viewController.fruitsArray[[fruitPicker selectedRowInComponent:1]];
    //             fruitThree = viewController.fruitsArray[[fruitPicker selectedRowInComponent:2]];
    //         }
            
    //         [tester waitForViewWithAccessibilityLabel:@"You Won!"];

    //         [tester tapViewWithAccessibilityLabel:@"Cancel"];
    //         [tester waitForAbsenceOfViewWithAccessibilityLabel:@"Cancel"];

        
    //     });
    // });
});

SpecEnd
