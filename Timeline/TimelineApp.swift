//
//  TimelineApp.swift
//  Timeline
//
//  Created by Jason Liu on 2022/12/27.
//

import SwiftUI

@main
struct TimelineApp: App {
    var timeline = Timeline()
    var body: some Scene {
        WindowGroup {
            TimelineView(timeline: timeline)
        }
    }
}
