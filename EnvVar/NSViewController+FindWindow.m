//
// Created by Glenn R. Martin on 5/6/15.
// Copyright (c) 2015 Glenn R. Martin. All rights reserved.
//

#import "NSViewController+FindWindow.h"

@implementation NSViewController (FindWindow)
-(NSWindow*) findWindow {
    return [[self view] window];
}
@end