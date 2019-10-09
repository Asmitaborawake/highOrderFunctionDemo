//
//  ViewController.swift
//  HighOrderFunctionDemo
//
//  Created by Asmita Borawake on 09/10/19.
//  Copyright © 2019 Asmita Borawake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map()
        filter()
        reduce()
        sort()
        flatMap()
        chaining()
    }
    
    
    func map() {
        
        let numberArray = [1,2,3,4,5]
        var emptyArray : [Int] = []
        for number in numberArray{
            emptyArray.append(number * 2)
        }
        
        print("array",emptyArray)
        
        //Map :- loop over collection and applies same operation on each element of collection
        //map with diffrent type
        
        //method 1  with parameter and return type
        let m1 = numberArray.map { (value : Int) -> Int in
            return value * 2
        }
        print("method1",m1)
        
        //method 2 with parameter only
        let m2 = numberArray.map { (value: Int) in
            return value * 2
        }
        print("method2",m2)
        
        //method 3 with value only
        let m3 = numberArray.map { (value) in
            return value * 2
        }
        print("method3",m3)
        
        
        //method 4 apply direct operation with $0 index of element
        let m4 = numberArray.map { $0 * 2 }
        print("method4",m4)
    }
    
    
    func filter(){
       
        let filterDataArray = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        var emptyArray : [Int] = []
        for number in filterDataArray{
            if number % 2 == 0{
                emptyArray.append(number)
            }
        }
        
        print("filterarray",emptyArray)
        
         //Filter :- is use to find out/ contains element in collection/array
        //finding even number in array
        let filter = filterDataArray.filter { $0 % 2 == 0}
        print("filterArray",filter)
    }
    
    
    func reduce() {
      
        let array = [1,2,3,4,5]
        var sum : Int = 0
        for num in array {
            sum += num
        }
        print("sum",sum)
        
        //reduce :- combines all items of collection in single one value
        //addition of array element in one single element
        let reduce = array.reduce(0) { $0 + $1}
        print("reduce",reduce)
        
        let strArray = ["one","two"].reduce("") { ($0 +  $1)}
        print("string merge",strArray)
        
    }
    //sort element in assending , decending order(grraterthen , lessthen)
    func sort(){
        let array = [1,2,3,4,5]
        let sortArray = array.sorted{ $0 > $1}
        print("sorting",sortArray)
    }
    
    func flatMap() {
        
        let array = [[11,12],[13,14]]
        var emptyArray: [Int] = []
        for num in array{
            emptyArray += num
        }
        print("array",emptyArray)
        //flatmap use to combine two or more collections in single one collection
        let flatMap = array.flatMap{$0}
        print("flatmap",flatMap)
        
        //remove nil from array
        let people = ["asmita",nil,"ios",nil,"developer",nil]
        let data = people.compactMap{$0}
        print("array",data)
    }
    
    //chaining use to perform multiple high order funcation in one collection
    //e.g. here we combibe array in single one collection and fetch even number from collection
    func chaining() {
        //flatmap + filter
        let array = [[11,12,13],[14,15,16]]
        let newarray = array.flatMap {$0}.filter{ $0 % 2 == 0}
        print("chaining function",newarray)
        //flatmap + filter + map
        let array1 = [[11,12,13],[14,15,16]]
        let newarray2 = array1.flatMap {$0}.filter{ $0 % 2 == 0}.map{ $0 * $0}
        print("chaining function",newarray2)
        
        
        let concat$ = array.flatMap{$0}.map{"$\($0)"}
        
        print("add $ from of number",concat$)
    }
    
    
   
    
}

