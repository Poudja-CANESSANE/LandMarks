//
//  Hike.swift
//  LandMarks
//
//  Created by Canessane Poudja on 30/03/2021.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var name: String
    var id: Int
    var distance: Double
    var difficulty: Int
    var observations: [Observation]

    struct Observation: Codable, Hashable {
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
        var distanceFromStart: Double
    }

    static var formatter = LengthFormatter()

    var distanceText: String {
        Self.formatter.string(fromValue: distance, unit: .kilometer)
    }
}
