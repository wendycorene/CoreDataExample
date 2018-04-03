//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Eloe,Wendy C on 4/3/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadBTN(_ sender: UIButton) {
        let moc = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let player1 = NSEntityDescription.insertNewObject(forEntityName: "Player", into: moc) as! Player
        
        let player2 = NSEntityDescription.insertNewObject(forEntityName: "Player", into: moc) as! Player
        
        let player3 = NSEntityDescription.insertNewObject(forEntityName: "Player", into: moc) as! Player
        
        let game1 = NSEntityDescription.insertNewObject(forEntityName: "Game", into: moc) as! Game
        
        let game2 = NSEntityDescription.insertNewObject(forEntityName: "Game", into: moc) as! Game
        
        player1.age = 17
        player1.handle = "Geoff"
        player2.age = 43
        player2.handle = "STORMLORD"
        player3.age = 83
        player3.handle = "LAME-O"
        
        game1.name = "Betrayal at the House on the Hill has Eyes and is Behind You"
        game1.time = 67.3
        game2.name = "Red Dragon Inn 2"
        game2.time = 35.5
        
        game1.addToHasPlayers(player1)
        game1.addToHasPlayers(player2)
        game2.addToHasPlayers(player1)
        game2.addToHasPlayers(player3)
        
        do {
            try moc.save()
            print("Save Worked!")
        } catch {
            print("Save failed + \(error)")
        }
    }
    
    @IBAction func fetchPlayer1(_ sender: UIButton) {
        let moc = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let fetcher: NSFetchRequest<Player> = NSFetchRequest(entityName: "Player")
        
        
    }
}

