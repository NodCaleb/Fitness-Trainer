//
//  ExerciseData.m
//  Fitness Trainer
//
//  Created by Eugene Rozhkov on 25.03.15.
//  Copyright (c) 2015 Nord Point. All rights reserved.
//

#import "ExerciseData.h"

@implementation ExerciseData

+ (NSArray *) getMuscleGroups
{
    NSMutableArray *muscleArray = [@[] mutableCopy];
    
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @0, MUSCLE_GROUP_NAME: @"Мышцы пресса", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @1, MUSCLE_GROUP_NAME: @"Грудные мышцы", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @2, MUSCLE_GROUP_NAME: @"Бицепсы", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @3, MUSCLE_GROUP_NAME: @"Спина", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    
    return [muscleArray copy];
}

+ (NSArray *) getAllExercises
{
    NSMutableArray *exerciseArray = [@[] mutableCopy];
    
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Подъем ног"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Подъем туловища на наклонной скамье"}];
    
    return [exerciseArray copy];
}

+ (NSArray *) getExercisesForGroup:(int)groupNumber
{
    NSMutableArray *exerciseArray = [@[] mutableCopy];
    
    for (NSDictionary *currentExercise in [self getAllExercises])
    {
        if ([currentExercise[MUSCLE_GROUP_NUMBER] integerValue] == groupNumber)
        {
            [exerciseArray addObject:currentExercise];
        }
    }
    
    return [exerciseArray copy];
}
+ (NSArray *) getAllExercisePictures
{
    NSMutableArray *pictureArray = [@[] mutableCopy];
    
    [pictureArray addObject:@{EXERCISE_NUMBER: @0, EXERCISE_PICTURE: @"Legs01.png"}];
    [pictureArray addObject:@{EXERCISE_NUMBER: @0, EXERCISE_PICTURE: @"Legs02.png"}];
    
    return [pictureArray copy];
}
+ (NSArray *) getPicturesForExercise:(int)exerciseNumber
{
    NSMutableArray *pictureArray = [@[] mutableCopy];
    
    for (NSDictionary *currentPictureDictionary in [self getAllExercisePictures])
    {
        if ([currentPictureDictionary[EXERCISE_NUMBER] integerValue] == exerciseNumber)
        {
            [pictureArray addObject:[UIImage imageNamed:currentPictureDictionary[EXERCISE_PICTURE]]];
        }
    }
    
    return [pictureArray copy];
}

@end
