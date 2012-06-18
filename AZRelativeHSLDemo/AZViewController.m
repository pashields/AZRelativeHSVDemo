//
//  AZViewController.m
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

#import "AZViewController.h"
#import "UIColor+AZRelativeHSV.h"
@interface AZViewController ()

@end

@implementation AZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (IBAction)increaseHue:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addHue:0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}

- (IBAction)decreaseHue:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addHue:-0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}

- (IBAction)increaseSat:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addSaturation:0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}

- (IBAction)decreaseSat:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addSaturation:-0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}

- (IBAction)increaseValue:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addValue:0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}

- (IBAction)decreaseValue:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addValue:-0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}

- (IBAction)increaseAlpha:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addAlpha:0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}

- (IBAction)decreaseAlpha:(id)sender
{
    self.view.backgroundColor = [self.view.backgroundColor addAlpha:-0.01];
    NSLog(@"Background Color is: %@", self.view.backgroundColor);
}
@end
