//
//  ViewController.swift
//  Generater
//
//  Created by 서원지 on 2021/09/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quotLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let Quoet = [
        Quote(contents: "죽음을 두려워하는 나머지 삶을 시작 조차 못하는 사람이 많다." ,name: "벤다이크"),
        Quote(contents: "나는 나 자신을 뺴 놓고는 모두 없다. " ,name: "비움"),
        Quote(contents: "편견이란 실효성이 없는 의견이다." , name: "암브로스 빌"),
        Quote(contents: "분노는 바보들의 가슴속에서만 살아간다." ,name: "아인슈타인"),
        Quote(contents: "몇번이라도 좋다 ! 이 끔찍한 생이여... 다시!" ,name: "니체")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapquoteGeneratorButton(_ sender: Any) {
     let random = Int(arc4random_uniform(5))
        let quote = Quoet[random]
        self.quotLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}
