//
//  ViewController.swift
//  IdeaGenerator
//
//  Created by Claudia Munoz on 1/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    let topAnswers = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let bottomAnswers = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var randomStartupLabel: UILabel!
    
    @IBOutlet weak var randomIdeaLabel: UILabel!
    
    
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<topAnswers.count)

        randomStartupLabel.text = topAnswers[randomIndex]
        
        let randomIdeaIndex = Int.random(in: 0..<bottomAnswers.count)

        randomIdeaLabel.text = bottomAnswers[randomIndex]
        
        
    }
    @IBAction func generatorButton(_ sender: Any) {
        generateAnswer()
        }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            guard motion == .motionShake else { return }
    
            generateAnswer()
        
    }
}

