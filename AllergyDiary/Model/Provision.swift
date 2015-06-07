//
//  Provision.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import Foundation
import RealmSwift

class Provision : Object {
  dynamic var date = NSDate()
  dynamic var name = ""
  dynamic var note = ""
}

enum ProvisionTypes : String {
  case NasalDouche = "Nasal Douche"
  case EyeShower = "Eye Shower"
  case Shower = "Shower"
  case HairWash = "Hair Wash"
  case FaceWash = "Face Wash"
  case ChangingClothes = "Changing Clothes"
  case LayingDown = "Laying Down"
  case Sleep = "Sleep"
  case NasalSpray = "Nasal Spray"
  case EyeDrops = "Eye Drops"
  case SkinCream = "Skin Cream"
  case Other = "Other"
}