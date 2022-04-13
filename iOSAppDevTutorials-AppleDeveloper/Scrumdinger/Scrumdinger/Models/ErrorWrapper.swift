//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by kimhyungyu on 2022/04/13.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String

    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
