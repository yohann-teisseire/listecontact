//
//  AjoutViewController.h
//  ListeContact
//
//  Created by yoyo2ntp on 16/07/2014.
//  Copyright (c) 2014 account user. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AjoutViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nom;
@property (weak, nonatomic) IBOutlet UITextField *prenom;
@property (weak, nonatomic) IBOutlet UITextField *date_naissance;
@property (weak, nonatomic) IBOutlet UITextField *image;

@property (strong)NSMutableArray *liste;
@end
