//
//  PSCCustomThumbnailsViewController.m
//  PSPDFCatalog
//
//  Copyright (c) 2013-2014 PSPDFKit GmbH. All rights reserved.
//
//  The PSPDFKit Sample applications are licensed with a modified BSD license.
//  Please see License for details. This notice may not be removed from this file.
//

#import "PSCCustomThumbnailsViewController.h"

@interface PSCThumbnailGridViewCell : PSPDFThumbnailGridViewCell @end

@implementation PSCCustomThumbnailsViewController

///////////////////////////////////////////////////////////////////////////////////////////
#pragma mark - PSPDFViewController

- (void)commonInitWithDocument:(PSPDFDocument *)document {
    [super commonInitWithDocument:document];

    // Only use the PSCThumbnailGridViewCell subclass so that we don't override all examples here.
    // In your code you can simply use PSPDFThumbnailGridViewCell.
    [[PSPDFRoundedLabel appearanceWhenContainedIn:PSCThumbnailGridViewCell.class, nil] setRectColor:[UIColor colorWithRed:0.165f green:0.226f blue:0.650f alpha:0.800f]];
    [[PSPDFRoundedLabel appearanceWhenContainedIn:PSCThumbnailGridViewCell.class, nil] setCornerRadius:20];

    // Register our custom cell as subclass.
    [self overrideClass:PSPDFThumbnailGridViewCell.class withClass:PSCThumbnailGridViewCell.class];
}

@end

@implementation PSCThumbnailGridViewCell

- (void)updatePageLabel {
    [super updatePageLabel];
    // You could set the pageLabel here as well, but UIApperance is more elegant.
    //self.pageLabel.rectColor = [UIColor colorWithRed:0.068 green:0.092 blue:0.264 alpha:0.800];
}

@end
