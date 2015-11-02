//
//  FISViewController.m
//  pickinFruit
//
//  Created by Joe Burgess on 7/3/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController () <UIPickerViewDelegate, UIPickerViewDataSource>
@property(strong, nonatomic) NSMutableArray *pickerArray;
@property(strong, nonatomic) NSString * sameFruit;

-(IBAction)spin:(id)sender;


@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.fruitPicker.delegate = self;
    self.fruitPicker.dataSource = self;
    
    self.fruitsArray = @[@"Apple 🍎",
                         @"Orange 🍅",
                         @"Banana 🍑",
                         @"Pear 🍊",
                         @"Grape 🍓 ",
                         @"Kiwi 🍈 ",
                         @"Mango 🍇 ",
                         @"Blueberry 🍆",
                         @"Raspberry 🍡"];
    self.pickerArray = self.fruitsArray.mutableCopy;
    [self shufferFruits];
}

-(void)viewDidAppear:(BOOL)animated{

}

-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.pickerArray.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return self.pickerArray[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    [self checkSame];
}


-(IBAction)spin:(id)sender {

    for (NSUInteger i = 0 ; i < self.fruitPicker.numberOfComponents; i++) {
        NSUInteger random = arc4random_uniform ((unsigned int)self.fruitsArray.count);
        [self.fruitPicker selectRow:random inComponent:i animated:YES];
    }
    [self checkSame];
}

-(void)shufferFruits{
    
    // NSString * randomFruit = [self.fruitsArray objectAtIndex:random];
    // [self.pickerArray addObject:randomFruit];
    // if the random is the same number ob object added into that, it might have dublicate.  exchangeObject is better to use.
    
    NSUInteger countFruits = self.fruitsArray.count;
    for (NSUInteger i = 0 ; i < countFruits ; i++)
    {
        NSUInteger random = arc4random_uniform ((unsigned int)countFruits);
        [self.pickerArray exchangeObjectAtIndex:i withObjectAtIndex:random];
    }
}

-(void)checkSame{
    
    NSString *selectedFruitInRow0 = self.pickerArray[[self.fruitPicker selectedRowInComponent:0]];
    NSString *selectedFruitInRow1 = self.pickerArray[[self.fruitPicker selectedRowInComponent:1]];
    NSString *selectedFruitInRow2 = self.pickerArray[[self.fruitPicker selectedRowInComponent:2]];
    
    NSLog(@"0:%@, 1:%@, 2:%@", selectedFruitInRow0, selectedFruitInRow1, selectedFruitInRow2);
    
    if ([selectedFruitInRow0 isEqualToString:selectedFruitInRow1] && [selectedFruitInRow1 isEqualToString:selectedFruitInRow2]){
        self.sameFruit = selectedFruitInRow0;
        [self fruitAlert];
    }
}

-(void)fruitAlert{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Fruits greets!" message: [NSString stringWithFormat:@"same %@",self.sameFruit] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    }];
    UIAlertAction * respin = [UIAlertAction actionWithTitle:@"respin" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        [self spin:nil];//send does not matter here, so it is nil.
    }];
    [alertController addAction:cancelAction];
    [alertController addAction:respin];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
