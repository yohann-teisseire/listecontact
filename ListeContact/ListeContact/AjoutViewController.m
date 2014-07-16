//
//  AjoutViewController.m
//  ListeContact
//
//  Created by yoyo2ntp on 16/07/2014.
//  Copyright (c) 2014 account user. All rights reserved.
//

#import "AjoutViewController.h"

@interface AjoutViewController ()

@end

@implementation AjoutViewController

-(NSManagedObjectContext *)managedObjectContext{
    NSManagedObjectContext * context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if([delegate performSelector:@selector(managedObjectContext)]){
        context = [delegate managedObjectContext];
    }
    return context;
}
- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    NSManagedObject *newListe = [NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:context];
    [newListe setValue:_nom.text forKey:@"nom"];
    [newListe setValue:_prenom.text forKey:@"prenom"];
    [newListe setValue:_telephone.text forKey:@"telephone"];
    [newListe setValue:_date.text forKey:@"date"];
    [newListe setValue:_image.text forKey:@"image"];
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if(_liste){
        [self.nom setText:[_liste valueForKey:@"nom"]];
        [self.prenom setText:[_liste valueForKey:@"prenom"]];
        [self.telephone setText:[_liste valueForKey:@"telephone"]];
        [self.date setText:[_liste valueForKey:@"date"]];
        [self.image setText:[_liste valueForKey:@"image"]];
    }
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
