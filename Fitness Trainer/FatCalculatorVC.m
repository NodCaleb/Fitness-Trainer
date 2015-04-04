//
//  FatCalculatorVC.m
//  Fitness Trainer
//
//  Created by Eugene Rozhkov on 31.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "FatCalculatorVC.h"

@interface FatCalculatorVC ()

@end

@implementation FatCalculatorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateLabels];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)weightSliderChanged:(id)sender
{
    [self updateLabels];
}
- (IBAction)heightSliderChanged:(id)sender
{
    [self updateLabels];
}

- (IBAction)genderChanged:(id)sender
{
    [self updateLabels];
}

- (IBAction)ageChanged:(id)sender
{
    [self updateLabels];
}

- (void)updateLabels
{
    int gender;
    
    if (self.genderSelector.selectedSegmentIndex == 0) gender = 1;
    else gender = 0; //Самая быстрая операция по смене пола в мире!
    
    self.bodyWieghtLabel.text = [NSString stringWithFormat:@"%.f кг.", self.weightSlider.value];
    self.heightLabel.text = [NSString stringWithFormat:@"%.f см.", self.heightSlider.value];
    self.ageLabel.text = [NSString stringWithFormat:@"%.f лет", self.ageSlider.value];
    float FAT = [self getFatforWeight:self.weightSlider.value andHeight:self.heightSlider.value andAge:self.ageSlider.value andGender:gender];
    self.weihtPercentageLabel.text = [NSString stringWithFormat:@"%.02f%%", FAT];
    self.commentLabel.text = [self getCommentForFAT:FAT];
}

- (float)getFatforWeight:(float)weight andHeight:(float)height andAge:(float)age andGender:(int)gender
{
    // (1.20 x BMI) + (0.23 x age) – (10.8 x gender) – 5.4
    return (1.2f * [self getBMIforWeight:weight andHeight:height]) + (0.23f * age) - (10.8f * gender) - 5.4;
}

- (float)getBMIforWeight:(float)weight andHeight:(float)height
{
    return weight / (height * height / 10000);
}

- (NSString *)getCommentForFAT:(float)FAT
{
    return @"Жира много не бывает";
}

@end
