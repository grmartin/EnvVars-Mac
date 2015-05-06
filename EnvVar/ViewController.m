//
//  ViewController.m
//  EnvVar
//
//  Created by Glenn R. Martin on 5/6/15.
//  Copyright (c) 2015 Glenn R. Martin. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "NSViewController+FindWindow.h"

#include <stdio.h>

extern char **environ;

@interface ViewController()
@property (strong, nonatomic) IBOutlet NSTextView* textView;
@property(nonatomic, strong) NSDate *date;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.date = [[NSDate alloc] init];
}

- (void)viewWillAppear {
    [super viewWillAppear];

    NSMutableString* mut = [[NSMutableString alloc] init];

    [[self findWindow] setTitle:[NSString stringWithFormat:@"Environment Variables as of %@", self.date]];

    [mut appendFormat:@"Environment Variables as of %@:\n\n", self.date];

    for (char **env = environ; *env; ++env)
        [mut appendFormat:@"%s\n", *env];

    self.textView.string = mut;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end