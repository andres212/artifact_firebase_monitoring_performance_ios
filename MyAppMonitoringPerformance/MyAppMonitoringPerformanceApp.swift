//
//  MyAppMonitoringPerformanceApp.swift
//  MyAppMonitoringPerformance
//
//  Created by Nelson Sepulveda on 26/10/25.
//

import SwiftUI
import FirebaseCore
import FirebasePerformance

@main
struct MyAppMonitoringPerformanceApp: App {
    
    init() {
        FirebaseApp.configure()
        if let options = FirebaseApp.app()?.options {
          print("Firebase configurado: \(options.projectID ?? "Sin ID")")
        }
        
        let initTrace = Performance.startTrace(name: "launch_app_ios_monitoring_performance")
        initTrace?.incrementMetric("app_count", by: 1)
        initTrace?.stop()
        print("Evento: launch_app_ios_monitoring_performance")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
