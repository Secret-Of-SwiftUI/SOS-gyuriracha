//
//  Double+.swift
//  BubbleLevel
//
//  Created by kimhyungyu on 2022/03/21.
//

import Foundation

extension Double {
    /// return a string describing the value of a Double using a fixed number of digits.
    func describeAsFixedLengthString(integerDigits: Int = 2, fractionDigits: Int = 2) -> String {
        self.formatted(
            .number
            // always preceded by a sign, even when the number is positive.
                .sign(strategy: .always())
            // specify exactly how many digits to use.
                .precision(
                    .integerAndFractionLength(integer: integerDigits, fraction: fractionDigits)
                )
        )
    }
}
