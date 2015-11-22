

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UINavigationControllerDelegate,
UIImagePickerControllerDelegate>


@property (strong, nonatomic) IBOutlet UIImageView* imageView;

- (IBAction) pickImage:(id)sender;


@end

