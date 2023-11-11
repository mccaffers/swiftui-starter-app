// SwiftUI Starter App
// By Ryan McCaffery (mccaffers.com)
//
// This code is licensed under Creative Commons Zero (CC0)
// You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.
// See LICENSE.md for more details
// ---------------------------------------

import SwiftUI

@main
struct SwiftStarterApp: App {
  let persistenceController = PersistenceController.shared.viewContext

    var body: some Scene {
        WindowGroup {
          HomeView()
            .environment(\.managedObjectContext, persistenceController)
            .colorScheme(.light)
            .preferredColorScheme(.dark)
            .onAppear {
              print("Running on " + DeviceUtilities.deviceType().rawValue)
            }
        }
    }
}
