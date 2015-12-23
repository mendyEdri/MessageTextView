//
//  MessageTextView.m
//  TalentTribe
//
//  Created by Mendy on 22/11/2015.
//  Copyright © 2015 OnOApps. All rights reserved.
//

#import "MessageTextView.h"

@implementation MessageTextView

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

+ (void)textViewWithHeader:(NSString *)header message:(NSString *)message onView:(UIView *)view completion:(SimpleResultBlock)completion {
    MessageTextView *messageTextView = [[MessageTextView alloc] init];
    messageTextView.backgroundColor = [UIColor clearColor];
    messageTextView.scrollEnabled = NO;
    messageTextView.selectable = NO;
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:[self attributedTextWithHeader:header]];
    [attributedString appendAttributedString:[self attributedTextWithContent:message]];
    messageTextView.attributedText = attributedString;
    messageTextView.textAlignment = NSTextAlignmentCenter;
    messageTextView.textColor = [UIColor lightGrayColor];
    CGSize actualSize = [messageTextView sizeThatFits:CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds) - (CGRectGetWidth(view.bounds) * 0.1) , MAXFLOAT)];
    messageTextView.frame = CGRectMake(CGRectGetMidX(view.bounds) - (actualSize.width/2), CGRectGetHeight(view.bounds) * 0.1, actualSize.width, actualSize.height);
    if (completion) {
        completion(messageTextView, nil);
    }
}

+ (NSAttributedString *)attributedTextWithHeader:(NSString *)header {
    UIFont *font = [UIFont fontWithName:@"TitilliumWeb-Bold" size:20];
    NSDictionary *arialDict = [NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName];
    NSMutableAttributedString *aAttrString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@\n", header] attributes: arialDict];
    return [aAttrString copy];
}

+ (NSAttributedString *)attributedTextWithContent:(NSString *)message {
    UIFont *font = [UIFont fontWithName:@"TitilliumWeb-Light" size:15];
    NSDictionary *arialDict = [NSDictionary dictionaryWithObject: font forKey:NSFontAttributeName];
    NSMutableAttributedString *aAttrString = [[NSMutableAttributedString alloc] initWithString:message attributes: arialDict];
    return [aAttrString copy];
}

+ (void)removeFromView:(UIView *)superView {
    for (id textView in superView.subviews) {
        if ([textView isKindOfClass:[MessageTextView class]]) {
            [textView removeFromSuperview];
        }
    }
}

@end
