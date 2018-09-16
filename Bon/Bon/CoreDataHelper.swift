import Foundation
import CoreData


class CoreDataHelper: NSObject {
    // Creating model
    let model: NSManagedObjectModel
    // Creating coordinator
    let coordinator: NSPersistentStoreCoordinator
    // Creating context
    let context: NSManagedObjectContext
    
    
    // Variable for accessing to CoreDataHelper
    static let main = CoreDataHelper()
    
    // Initializer
    override init() {
        
        // Creating url to our model, with name Bon and extension .momd
        let modelURL = Bundle.main.url(forResource: "Bon", withExtension: "momd")
        
        // Adding existing model from our url to model
        self.model = NSManagedObjectModel(contentsOf: modelURL!)!
        
        // Adding our model to coordinator
        self.coordinator = NSPersistentStoreCoordinator(managedObjectModel: model)
        
        // Creating url to documents directory, for first user, because in iOS, we don't have more than one user
        let docsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        // Adding to our docsURL path, name of upcoming store, and storing that URL in final store URL
        let storeURL = docsURL.appendingPathComponent("store.sqlite")
        
        // Adding persistent store to our persistent store coordinator
        do {
            try self.coordinator.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: storeURL, options: nil)
        } catch let error {
            print("Error while trying to create store. Received error message: \(error)")
        }
        
        // Now, time to think about context
        // Configuring concurrency type. Selected main queue
        self.context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        
        // Finally. Persistent store for our context if our "Coordinator"
        self.context.persistentStoreCoordinator = coordinator
        
        
        // CoreData ready to work!
        
    }
    
    
    
}
