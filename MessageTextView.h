//
//  MessageTextView.h
//  TalentTribe
//
//  Created by Mendy on 22/11/2015.
//  Copyright © 2015 OnOApps. All rights reserved.
//

#import "TextViewRegular.h"

@interface MessageTextView : UITextView
/**
 * Creates a UITextView Designed to be message on empty table views
 */
- (instancetype)init;

/**
 * create text view and pass it back to block
 */
+ (void)textViewWithHeader:(NSString *)header message:(NSString *)message onView:(UIView *)view completion:(SimpleResultBlock)completion;

/**
 * remove all object instances from view
 */
+ (void)removeFromView:(UIView *)superView;

@end
