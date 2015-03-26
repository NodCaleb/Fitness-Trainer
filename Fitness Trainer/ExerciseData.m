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
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Подъем ног"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Подъем ног из положения сидя"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Подъем туловища на наклонной скамье"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Подъем бедер с поворотом"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @0, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Скручивания с  утяжелением"}];
    
//Грудные мышцы
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Жим лежа "}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Жим гантелей"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Кроссоверы"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Разводка гантелей"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @1, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Отжимания"}];

//Бицепсы
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Подъем гантелей"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Подъем штанги стоя"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Подъем обратным хватом стоя"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Целевой подъем на бицепс сидя"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @2, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Подъем гантелей на бицепс'Молот'"}];

//Спина
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Становая тяга"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Вертикальная тяга блока"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Тяга штанги в наклоне"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Шраги со штангой"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Шраги с гантелями"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @3, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Подтягивания"}];
    
//Плечи
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Тяга штанги к подбородку"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Жим гантелей сидя"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Жим штанги на наклонной скамье"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Боковые подъемы гантелей"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @4, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Жим гантелей сидя"}];

//Предплечья
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @5, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Сгибания на запястья со штангой"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @5, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Сгибания на запястья с гантелей"}];


//Ноги
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Присед  со штангой"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Жим ногами на тренажере"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Выпады с гантелями"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @3, EXERCISE_NAME: @"Приседания с гантелями"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @6, EXERCISE_NUMBER: @4, EXERCISE_NAME: @"Гакк-приседания"}];

//Голеностоп
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @7, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Подъемы на носках"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @7, EXERCISE_NUMBER: @1, EXERCISE_NAME: @"Разгибание голени сидя в тренажере"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @7, EXERCISE_NUMBER: @2, EXERCISE_NAME: @"Подъемы на тренажере стоя"}];
    

//Трицепсы
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Французский жим"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Жим на блоках"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Обратный жим на блоках"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Трицепс на скамье"}];
    [exerciseArray addObject:@{MUSCLE_GROUP_NUMBER: @8, EXERCISE_NUMBER: @0, EXERCISE_NAME: @"Разгибания гантели из за головы"}];






    
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
