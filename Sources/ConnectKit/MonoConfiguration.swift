//
//  MonoConfiguration.swift
//
//  Created by Tristan Tsvetanov on 02021-06-02.
//

import Foundation

public class MonoConfiguration {

    // required parameters
    public var publicKey: String
    public var onSuccess: ((_ authCode: String) -> Void?)
    public var customer: MonoCustomer

    // optional parameters
    public var reference: String?
    public var onClose: (() -> Void?)?
    public var onEvent: ((_ event: ConnectEvent) -> Void?)?
    public var accountId: String?
    public var scope: String?
    public var selectedInstitution: ConnectInstitution?

    public init(
        publicKey: String,
        customer: MonoCustomer,
        onSuccess: @escaping ((_ authCode: String) -> Void?),
        reference: String? = nil,
        accountId: String? = nil,
        scope: String? = nil,
        onClose: (() -> Void?)? = nil,
        onEvent: ((_ event: ConnectEvent) -> Void?)? = nil,
        selectedInstitution: ConnectInstitution? = nil
    ) {

        self.publicKey = publicKey
        self.onSuccess = onSuccess
        self.customer = customer

        if onClose != nil {
            self.onClose = onClose!
        } else {
            self.onClose = nil
        }
        if onEvent != nil {
            self.onEvent = onEvent!
        } else {
            self.onEvent = nil
        }
        if reference != nil {
            self.reference = reference
        } else {
            self.reference = nil
        }
        if accountId != nil {
            self.accountId = accountId
        } else {
            self.accountId = nil
        }
        if scope != nil {
            self.scope = scope
        } else {
            self.scope = nil
        }
        if selectedInstitution != nil {
            self.selectedInstitution = selectedInstitution
        } else {
            self.selectedInstitution = nil
        }

    }

}
