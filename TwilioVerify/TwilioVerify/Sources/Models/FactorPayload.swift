//
//  FactorPayload.swift
//  TwilioVerify
//
//  Created by Sergio Fierro on 6/2/20.
//  Copyright © 2020 Twilio. All rights reserved.
//

import Foundation

///Describes the information required to create a **Factor**.
public protocol FactorPayload {
  ///A human readable description of this resource, up to 64 characters. For a push factor, this can be the device's name.
  var friendlyName: String { get }
  ///The unique SID identifier of the Service.
  var serviceSid: String { get }
  ///Identifies the user, should be an UUID you should not use PII (Personal Identifiable Information)
  ///because the systems that will process this attribute assume it is not directly identifying information.
  var identity: String { get }
  ///Type of the factor.
  var factorType: FactorType { get }
}

///Describes the information required to create a **Factor** which type is **Push**.
public struct PushFactorPayload: FactorPayload {
  ///A human readable description of this resource, up to 64 characters. For a push factor, this can be the device's name.
  public let friendlyName: String
  ///The unique SID identifier of the Service.
  public let serviceSid: String
  ///Identifies the user, should be an UUID you should not use PII (Personal Identifiable Information)
  ///because the systems that will process this attribute assume it is not directly identifying information.
  public let identity: String
  ///Type of the factor, push by default.
  public let factorType: FactorType = .push
  ///Registration token generated by APNS when registering for remote notifications.
  public let pushToken: String
  ///Previously generated Access Token using the /accessTokens endpoint.
  public let accessToken: String
  
  /**
  Creates a **PushFactorPayload** with the given parameters.
  - Parameters:
    - friendlyName: A human readable description of this resource, up to 64 characters. For a push factor, this can be the device's name.
    - serviceSid: The unique SID identifier of the Service.
    - identity: Identifies the user, should be an UUID you should not use PII (Personal Identifiable Information)
                because the systems that will process this attribute assume it is not directly identifying information.
    - pushToken: Registration token generated by APNS when registering for remote notifications.
    - accessToken: Previously generated Access Token using the /accessTokens endpoint.
  */
  public init(friendlyName: String, serviceSid: String, identity: String, pushToken: String, accessToken: String) {
    self.friendlyName = friendlyName
    self.serviceSid = serviceSid
    self.identity = identity
    self.pushToken = pushToken
    self.accessToken = accessToken
  }
}