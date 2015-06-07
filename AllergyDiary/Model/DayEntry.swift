//
//  DayEntry.swift
//  AllergyDiary
//
//  Created by dasdom on 07.06.15.
//  Copyright (c) 2015 Dominik Hauser. All rights reserved.
//

import Foundation
import RealmSwift

class DayEntry : Object {
  dynamic var date = NSDate()
  dynamic var overallAffliction: Int8 = 0
  dynamic var noseAffliction: Int8 = 0
  dynamic var eyesAffliction: Int8 = 0
  dynamic var skinAffliction: Int8 = 0
  dynamic var respirationAffliction: Int8 = 0
  dynamic var hoursOfSleep: Double = 0.0
  dynamic var outdoorTime: Double = 0.0
  let medicine = List<Medicine>()
  let provisions = List<Provision>()
  let pollenContaminations = List<PollenContamination>()
}