//
//  InfoViewController.swift
//  Social networks
//
//  Created by timatika on 30.10.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var aboutMeOne: UITextView!
    
   var food = FavoriteFood(breakfast: "кашу гречневую", dinnerOne: "суп куриный", dinnerTwo: "макароны")
   var toys = FavoriteToys(oneToys: "игрушечный самосвал", twoToys: "надувной мяч", threeToys: "LEGO")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeOne.text = "Меня зовут \(userOne.name) \(userOne.surName). \nЯ \(userOne.dateOfBirth) года рождения и мне \(userOne.yearsOld) года. \nС утра я люблю есть \(food.breakfast), в обед \(food.dinnerOne) а на ужин \(food.dinnerTwo). \nМои самые любимые игрушки это \(toys.oneToys), \(toys.twoToys), \(toys.threeToys).\nНо больше всего я люблю спать"
        
        
        
        //"Меня зовут \(userOne.name) \(userOne.surName)"


    }


}
