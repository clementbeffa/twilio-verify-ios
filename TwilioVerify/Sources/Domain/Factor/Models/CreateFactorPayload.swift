//
//  CreateFactorPayload.swift
//  TwilioVerify
//
//  Created by Sergio Fierro on 6/2/20.
//  Copyright © 2020 Twilio. All rights reserved.
//

import Foundation

struct CreateFactorPayload: FactorPayload {
  let friendlyName: String
  let type: FactorType
  let serviceSid: String
  let entity: String
  let config: [String: String]
}
