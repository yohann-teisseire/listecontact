//
//  Contact.h
//  ListeContact
//
//  Created by yoyo2ntp on 16/07/2014.
//  Copyright (c) 2014 account user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Contact : NSManagedObject

@property (nonatomic, retain) NSString * nom;
@property (nonatomic, retain) NSString * prenom;
@property (nonatomic, retain) NSDate * date_naissance;
@property (nonatomic, retain) NSString * photo;

@end
