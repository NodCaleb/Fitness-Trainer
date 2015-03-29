//
//  BMICalculatorVC.h
//  Fitness Trainer
//
//  Created by Eugene Rozhkov on 29.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BMICalculatorVC : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *bodyMassLabel;
@property (strong, nonatomic) IBOutlet UILabel *heightLabel;
@property (strong, nonatomic) IBOutlet UILabel *BMILabel;
@property (strong, nonatomic) IBOutlet UILabel *commentLabel;
@property (strong, nonatomic) IBOutlet UISlider *weightSlider;
@property (strong, nonatomic) IBOutlet UISlider *heightSlider;


- (IBAction)massChanged:(id)sender;
- (IBAction)heightCahnged:(id)sender;

@end
