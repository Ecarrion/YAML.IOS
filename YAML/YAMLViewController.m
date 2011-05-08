//
//  YAMLViewController.m
//  YAML
//
//  Created by Ernesto Carrión on 5/5/11.
//  Copyright 2011 Kogi Mobile. All rights reserved.
//

#import "YAMLViewController.h"
#import "YAMLSerialization.h"

@implementation YAMLViewController

- (void)dealloc
{
    [super dealloc];
}


- (IBAction) yamlButtonPressed {
    
    //NSInputStream * stream = [[NSInputStream alloc] initWithFileAtPath: @"basic.yaml"];
    NSError * error = nil;
    
    NSURL * url = [NSURL fileURLWithPath:[[NSBundle mainBundle] 
                                         pathForResource:@"basic" ofType:@"yaml"]];
    
    
    NSInputStream * stream = [[NSInputStream alloc] initWithURL:url];
    
    NSMutableArray * yaml = [YAMLSerialization YAMLWithStream: stream
                                        options: kYAMLReadOptionStringScalars
                                          error: &error];
    
    NSLog(@"count: %d\n", [yaml count]);
    for (NSDictionary * data in yaml) {
        for (NSString * key in [data allKeys]) {
            NSLog(@"Key: %@  Value: %@\n", [key description], [data valueForKey:key]);
        }
    }
    
    
    
    // Dump Objective-C object description
    //NSLog(@"%@", [yaml description]);
    NSLog(@"Error: %@\n", error);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
