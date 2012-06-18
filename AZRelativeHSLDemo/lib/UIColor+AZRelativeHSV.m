//
//  UIColor+AZRelativeHSV.m
//  AZRelativeHSVDemo
//
//  Created by Patrick Shields on 6/18/12.
//  Copyright 2012 Patrick Shields
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "UIColor+AZRelativeHSV.h"

typedef enum {
    HUE,
    SATURATION,
    VALUE,
    ALPHA
} HSVTypes;

#define BETWEEN(min, val, max) MIN(max, MAX(min, val))

@implementation UIColor (AZRelativeHSV)
- (CGFloat *)getHSV
{
    CGFloat hue, sat, value, alpha;
    [self getHue:&hue saturation:&sat brightness:&value alpha:&alpha];
    CGFloat *HSV = calloc(4, sizeof(CGFloat));
    HSV[HUE] = hue;
    HSV[SATURATION] = sat;
    HSV[VALUE] = value;
    HSV[ALPHA] = alpha;
    return HSV;
}

+ (void)validateHSV:(CGFloat *)HSV
{
    for (int i=0; i<=ALPHA; i++) {
        HSV[i] = BETWEEN(0, HSV[i], 1);
    }
}

+ (UIColor *)colorWithHSV:(CGFloat *)HSV
{
    [UIColor validateHSV:HSV];
    UIColor *color = [UIColor colorWithHue:HSV[HUE]
                                saturation:HSV[SATURATION]
                                brightness:HSV[VALUE]
                                     alpha:HSV[ALPHA]];    
    free(HSV);
    return color;
}

- (UIColor *)addHue:(CGFloat)hue
{
    CGFloat *HSV = [self getHSV];
    HSV[HUE]+=hue;
    return [UIColor colorWithHSV:HSV];
}

- (UIColor *)addSaturation:(CGFloat)saturation
{
    CGFloat *HSV = [self getHSV];
    HSV[SATURATION]+=saturation;
    return [UIColor colorWithHSV:HSV];
}

- (UIColor *)addValue:(CGFloat)value
{
    CGFloat *HSV = [self getHSV];
    HSV[VALUE]+=value;
    return [UIColor colorWithHSV:HSV];
}

- (UIColor *)addAlpha:(CGFloat)alpha
{
    CGFloat *HSV = [self getHSV];
    HSV[ALPHA]+=alpha;
    return [UIColor colorWithHSV:HSV];
}

- (UIColor *)addHue:(CGFloat)hue addSaturation:(CGFloat)saturation addValue:(CGFloat)value addAlpha:(CGFloat)alpha
{
    CGFloat *HSV = [self getHSV];
    HSV[HUE]+=hue;
    HSV[SATURATION]+=saturation;
    HSV[VALUE]+=value;
    HSV[ALPHA]+=alpha;
    return [UIColor colorWithHSV:HSV];
}
@end
