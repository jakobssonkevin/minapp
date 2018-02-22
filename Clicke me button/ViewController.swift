//
//  ViewController.swift
//  Clicke me button
//
//  Created by Helena Carlsson on 2018-02-02.
//  Copyright © 2018 Kevin Jakobsson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cards = Array(count: 4, repeatedValue: Array(count:14,repeatedValue:0))
        //boolean[][]()

    var lastnumber = 0
    var lastcolor = 0
    var English = false
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clickme_click(sender: AnyObject) {
  
        
        var number = 0
        number = Int(arc4random_uniform(13)+1)
        var colorString = "spader"
        var numberString = "hallå"
        
        
        
        
        
        var color = Int(arc4random_uniform(4))
        
        if (cards[color][number] != 0)
        {
            number = Int(arc4random_uniform(13)+1)
            color = Int(arc4random_uniform(4))
        }
        if (cards[color][number] != 0)
        {
            number = Int(arc4random_uniform(13)+1)
            color = Int(arc4random_uniform(4))
        }
        if (cards[color][number] != 0)
        {
            number = Int(arc4random_uniform(13)+1)
            color = Int(arc4random_uniform(4))
        }
        if (cards[color][number] != 0)
        {
            number = Int(arc4random_uniform(13)+1)
            color = Int(arc4random_uniform(4))
        }
        
        if(color == 1){
            colorString = "♥︎"
            
        } else if (color == 2){
        
            colorString = "♦︎"
        }
        
        else if (color == 3){
        
            colorString = "♣︎"
            
        }
        else {
        
            colorString = "♠︎"
        }
        
        
        if (number == 13){
        
            numberString = "K"
        }
        
        else {
        
            numberString = String(number)
            }
        
        if  (number == 11){
        
            numberString = "J"
            
        }
        
        if (number == 12){
        
            numberString = "Q"
        }
        
        if (number == 1){
        
            numberString = "A"
        }
    
        
        
        
        
        if (number > lastnumber) && (highorlow.on)
        {
            if (English){
            
              resultat.text = "U good!"
            }
            else{
            resultat.text = "RÄTT, FORTSÄTT SÅ"
            }
        }
            
        else if (number < lastnumber) && (!highorlow.on){
            
            if (English)
            {
                resultat.text = "Spot on!"
            }
            else {
            resultat.text = "rätt gissat"
            }
        
        }
            
        else {
        if (English)
        {
            resultat.text = "nah, try again"
        }
        else {
            resultat.text = "tyvärr, testa igen"
            }
        }
        
        lastnumber = number
        lastcolor = color
        cards[color][number] = 1
    
    HEJ.text = colorString + " " + numberString
        
        
        
        
        
        
        
       
        
        }
    
    
    
    @IBOutlet weak var highorlow: UISwitch!
    
    @IBAction func highorlow_click(sender: AnyObject) {
       
        
        if (English) {
            if (highorlow.on){
                
                label.text = "high"
                
            }
            else {
                
                label.text = "low"
            }
            
        }
            
            else {
            
                if (highorlow.on){
                    
                    label.text = "högre"
                }
                    
                else {
                    
                    label.text = "lägre"
                }

            
            }
            
        
        }
        



    
        
       
        
        
        
        
        
        
       
        
        
        
        
        
        

    
    @IBOutlet weak var clickme: UIButton!
    @IBOutlet weak var HEJ: UILabel!
    
    @IBOutlet weak var resultat: UILabel!
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var language: UIButton!
   
    
    
    @IBAction func language_click(sender: AnyObject) {
    
  
        
        if (English){
            
        language.setTitle("English", forState:.Normal)
            
            
            if (highorlow.on){
                
                label.text = "högre"
            }
                
            else {
                
                label.text = "lägre"
            }
            
            HEJ.text = "Här kommer ditt kort"
            
                
            clickme.setTitle("Tryck här för kort", forState:.Normal)
            
           
            
            
        }
        
        else {
        
            language.setTitle("Svenska", forState:.Normal)
            
            if (highorlow.on){
                
                label.text = "high"
            }
                
            else {
                
                label.text = "low"
                
            }
            
            HEJ.text = "here will the card show up"
            
        
            
            clickme.setTitle("press for your card", forState:.Normal)
            
        }
        
        English = !English
        
     
    }
    
    
    
    
    
    
    
    
    }
   