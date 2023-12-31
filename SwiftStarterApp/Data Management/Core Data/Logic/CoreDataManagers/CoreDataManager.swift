// SwiftUI Starter App
// By Ryan McCaffery (mccaffers.com)
//
// This code is licensed under Creative Commons Zero (CC0)
// You can copy, modify, distribute and perform the work, even for commercial purposes, all without asking permission.
// See LICENSE.md for more details
// ---------------------------------------

import Foundation
import CoreData

// The CoreDataManager acts as an interface between
// the SwiftUI Views and the CoreData database
public class CoreDataManager {
  
  // Reuse the static view context
  // Note - Make sure you always read from the static `PersistenceController.shared.container` object, not `PersistenceController().container`
  private static var viewContext : NSManagedObjectContext = PersistenceController.shared.viewContext
  
  public static func Commit() {
    try! viewContext.save()
  }
  
  public static func Remove(_ item: NSManagedObject) {
    viewContext.delete(item)
    
    do {
      try viewContext.save()
    } catch {
      // Replace this implementation with code to handle the error appropriately.
      // fatalError() causes the application to generate a crash log and terminate.
      // You should not use this function in a shipping application, although it may be useful during development.
      let nsError = error as NSError
      fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
    }
  }
  
}



