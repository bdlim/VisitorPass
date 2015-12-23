//
//  CameraViewController.h
//  VisitorPass
//
//  Created by Thanh Tran on 12/23/15.
//  Copyright © 2015 Brandon Lim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIViewController<UIImagePickerControllerDelegate,UIActionSheetDelegate,UINavigationControllerDelegate>

{
    UIImagePickerController *imagePicker;
    UIActionSheet *actionSheet;
    IBOutlet UIImageView *captuerimage;
}
-(IBAction)captureImage:(id)sender;
@end