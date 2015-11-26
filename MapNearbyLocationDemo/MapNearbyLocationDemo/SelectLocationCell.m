//
//  SelectLocationCell.m
//  AppTemplateForNormal
//
//  Created by crw on 11/3/15.
//  Copyright © 2015 ZQ. All rights reserved.
//

#import "SelectLocationCell.h"

@implementation SelectLocationCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self == [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier]) {
        self.detailTextLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        self.selectionStyle                = UITableViewCellSelectionStyleNone;
        self.textLabel.font                = [UIFont systemFontOfSize:16];
        self.detailTextLabel.font          = [UIFont systemFontOfSize:12];
        self.detailTextLabel.textColor     = [UIColor grayColor];
    }
    return self;
}

@end
