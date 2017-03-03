//
//  PlacePO+Requests.swift
//  CHMeetupApp
//
//  Created by Sam Mejlumyan on 03/03/2017.
//  Copyright © 2017 CocoaHeads Comunity. All rights reserved.
//

import Foundation

extension PlacePO: POType {

  init?(json: JSONDictionary) {
    guard
      let id = json["place_id"] as? Int,
      let title = json["title"] as? String,
      let address = json["address"] as? String,
      let longitude = json["longitude"] as? Double,
      let latitude = json["latitude"] as? Double,
      let cityID = json["city_id"] as? Int
      else { return nil }

    self.placeID = id
    self.title = title
    self.address = address
    self.longitude = longitude
    self.latitude = latitude
    self.cityID = cityID
  }
}
