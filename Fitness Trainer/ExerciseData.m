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
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @1, MUSCLE_GROUP_NAME: @"Грудные мышцы", MUSCLE_GROUP_PICTURE: @"Chest.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @2, MUSCLE_GROUP_NAME: @"Бицепсы", MUSCLE_GROUP_PICTURE: @"Biceps.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @3, MUSCLE_GROUP_NAME: @"Спина", MUSCLE_GROUP_PICTURE: @"Back.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @4, MUSCLE_GROUP_NAME: @"Плечи", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @5, MUSCLE_GROUP_NAME: @"Предплечья", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @6, MUSCLE_GROUP_NAME: @"Ноги", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @7, MUSCLE_GROUP_NAME: @"Голеностоп", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    [muscleArray addObject:@{MUSCLE_GROUP_NUMBER: @8, MUSCLE_GROUP_NAME: @"Трицепсы", MUSCLE_GROUP_PICTURE: @"Abdomen.png"}];
    
    return [muscleArray copy];
}

+ (NSArray *) getAllExercises
{
    NSMutableArray *exerciseArray = [@[] mutableCopy];
    //Мышцы пресса
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Подъем ног", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Подъем ног из положения сидя", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Подъем туловища на наклонной скамье", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Подъем бедер с поворотом", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Скручивания с  утяжелением", EXERCISE_DESCRIPTION: @""}];
    
//Грудные мышцы
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @5, EXERCISE_NAME: @"Жим лежа ", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @6, EXERCISE_NAME: @"Жим гантелей", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @7, EXERCISE_NAME: @"Кроссоверы", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @8, EXERCISE_NAME: @"Разводка гантелей", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @9, EXERCISE_NAME: @"Отжимания", EXERCISE_DESCRIPTION: @""}];

//Бицепсы
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @10, EXERCISE_NAME: @"Подъем гантелей", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @11, EXERCISE_NAME: @"Подъем штанги стоя", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @12, EXERCISE_NAME: @"Подъем обратным хватом стоя", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @13, EXERCISE_NAME: @"Целевой подъем на бицепс сидя", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @14, EXERCISE_NAME: @"Подъем гантелей на бицепс'Молот'", EXERCISE_DESCRIPTION: @""}];

//Спина
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Становая тяга", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Вертикальная тяга блока", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Тяга штанги в наклоне", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Шраги со штангой", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Шраги с гантелями", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Подтягивания", EXERCISE_DESCRIPTION: @""}];
    
//Плечи
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Тяга штанги к подбородку", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Жим гантелей сидя", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Жим штанги на наклонной скамье", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Боковые подъемы гантелей", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Жим гантелей сидя", EXERCISE_DESCRIPTION: @""}];

//Предплечья
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @5, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Сгибания на запястья со штангой", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @5, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Сгибания на запястья с гантелей", EXERCISE_DESCRIPTION: @""}];


//Ноги
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Присед  со штангой", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Жим ногами на тренажере", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Выпады с гантелями", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Приседания с гантелями", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Гакк-приседания", EXERCISE_DESCRIPTION: @""}];

//Голеностоп
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @7, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Подъемы на носках", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @7, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Разгибание голени сидя в тренажере", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @7, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Подъемы на тренажере стоя", EXERCISE_DESCRIPTION: @""}];
    

//Трицепсы
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Французский жим", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Жим на блоках", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Обратный жим на блоках", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Трицепс на скамье", EXERCISE_DESCRIPTION: @""}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Разгибания гантели из за головы", EXERCISE_DESCRIPTION: @""}];






    
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
