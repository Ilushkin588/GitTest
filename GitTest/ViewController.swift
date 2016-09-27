//
//  ViewController.swift
//  GitTest
//
//  Created by Илья Денисов on 20.09.16.
//  Copyright © 2016 Denisov's. All rights reserved.
//

import UIKit
class Massiv{
    static func NechMass (mass:[Int], N:Int){
        var AssMass = [Int:Int]()
        for i in 0 ..< N {
            AssMass[i]=mass[i]
            //print(AssMass)
        }
        for i in 0 ..< N {
            for j in 0 ..< N {
                if(mass[i] == mass[j] && i != j){
                    AssMass.updateValue(0, forKey: i)
                    //  print(AssMass)
                }
            }
        }
        for Name in AssMass.values {
            if Name != 0 {
                print("\(Name)")
            }
        }
        
        
        
        
    }
    static func mass(arr:[Int], K:Int, N:Int){
        // print(arr)
        var newarr = [Int]()
        for (var i = N-K; i < N; i+=1){
            newarr.append(arr[i])
        }
        for j in 0 ..< N-K{
            newarr.append(arr[j])
        }
        print(newarr)
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Arr2Push(sender: UIButton) {
        Massiv.NechMass([9,9,6,9,9,9,9,7,6,8,90], N:11)
    }
    @IBAction func Arr1Push(sender: AnyObject) {
        Massiv.mass([9,9,6,9,9,9,9,7,6],K: 2, N:9)
    }
    
}

