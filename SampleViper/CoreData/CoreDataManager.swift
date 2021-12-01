//
//  CoreDataManager.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/29/21.
//

import Foundation
import CoreData


class CoreDataManager {
    
    static let shared = CoreDataManager() // will live forever as long as your application is still alive, it's properties will too
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "demo_data")
        container.loadPersistentStores { (storeDescription, err) in
            if let err = err {
                fatalError("Loading of store failed: \(err)")
            }
        }
        return container
    }()
    
    
    var context : NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func fetchTodo() ->  [TodoItem] {

        let request = NSFetchRequest<TodoItem>(entityName: "TodoItem")
        
        do {
            let items = try context.fetch(request)
            return items
        } catch let err {
            print("Failed to fetch todos:", err)
            return []
        }
    }
    
    func fetchLoginEntity() ->  [LoginEntity] {

        let request = NSFetchRequest<LoginEntity>(entityName: "LoginEntity")
        
        do {
            let items = try context.fetch(request)
            return items
        } catch let err {
            print("Failed to fetch todos:", err)
            return []
        }
    }
    
    func deleteLoginEntity() {
        context.delete(fetchLoginEntity()[0])
        save()
    }
    
    
    func newLoginEntity() -> LoginEntity {
        let newEntry = NSEntityDescription.insertNewObject(forEntityName: "LoginEntity", into: context)  as! LoginEntity
        return newEntry
    }
    
    
    
    func newTodoItem() -> TodoItem {
        let newEntry = NSEntityDescription.insertNewObject(forEntityName: "TodoItem", into: context)  as! TodoItem
        return newEntry
    }
    
    func deleteTodoItem(_ item : TodoItem) {
        context.delete(item)
        save()
    }
    
  
    
    
    
    func save() {
        do {
            try context.save()
        } catch let saveErr  {
            print("Failed to company changes:", saveErr)
        }
    }
    
    
 
}
