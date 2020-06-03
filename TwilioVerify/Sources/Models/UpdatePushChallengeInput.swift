//
//  UpdatePushChallengeInput.swift
//  TwilioVerify
//
//  Created by Sergio Fierro on 6/2/20.
//  Copyright © 2020 Twilio. All rights reserved.
//

import Foundation

struct UpdatePushChallengeInput: UpdateChallengeInput {
  let factorSid: String
  let challengeSid: String
  let status: ChallengeStatus
}
