//
//  CoreDataHelper5.swift
//  Bon
//
//  Created by ARBI BASHAEV on 22/09/2018.
//  Copyright © 2018 ARBI BASHAEV. All rights reserved.
//

import Foundation
import CoreData



class CoreDataHelper5: NSObject {
  let model: NSManagedObjectModel
  let coordinator: NSPersistentStoreCoordinator
  let context: NSManagedObjectContext
  
  

  override init() {
    
    let modelUrl = Bundle.main.url(forResource: "Bon", withExtension: "momd")
    self.model = NSManagedObjectModel(contentsOf: modelUrl!)!
    
    self.coordinator = NSPersistentStoreCoordinator(managedObjectModel: model)

    let docsUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let storeUrl = docsUrl.appendingPathComponent("store.sqlite")
    
    do {
    try self.coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: storeUrl, options: nil)
    } catch let error {
      print(error)
    }
    
    self.context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    self.context.persistentStoreCoordinator = coordinator
    
    
  }
  
  
  
}
