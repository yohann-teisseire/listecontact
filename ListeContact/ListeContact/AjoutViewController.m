//
//  AjoutViewController.m
//  ListeContact
//
//  Created by yoyo2ntp on 16/07/2014.
//  Copyright (c) 2014 account user. All rights reserved.
//

#import "AjoutViewController.h"
#import "Contact.h"

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
    
    Contact *contact = [NSEntityDescription insertNewObjectForEntityForName:@"Contact" inManagedObjectContext:context];
    contact.nom = _nom.text;
    contact.prenom = _prenom.text;
    contact.date_naissance = _date_naissance.text;
    contact.image = _image.text;
    
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
        [self.date_naissance setText:[_liste valueForKey:@"date_naissance"]];
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
