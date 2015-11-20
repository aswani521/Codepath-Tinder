//
//  DraggableImageView.m
//  Codepath-Tinder
//
//  Created by Chang Liu on 11/19/15.
//  Copyright © 2015 Aswani Nerella. All rights reserved.
//

#import "DraggableImageView.h"

@interface DraggableImageView()

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UIImageView *mainImage;

@end

@implementation DraggableImageView

-  (id)initWithFrame:(CGRect)aRect
{
    self = [super initWithFrame:aRect];
    
    if (self)
    {
        [self initSubviews];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self initSubviews];
    }
    
    return self;
}

- (void)initSubviews {
    UINib *nib = [UINib nibWithNibName:@"DraggebleImageView" bundle:nil];

    [nib instantiateWithOwner:self options:nil];
    self.contentView.frame = self.bounds;
    [self addSubview:self.contentView];
}

@end
