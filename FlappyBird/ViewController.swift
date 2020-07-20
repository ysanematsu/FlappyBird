//
//  ViewController.swift
//  FlappyBird
//
//  Created by 實松保雄 on 2020/07/08.
//  Copyright © 2020 ysanematsu. All rights reserved.
//

import UIKit
import SpriteKit    //SpriteKitを使うためインポート
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //SKViewクラスのpresentScene()メソッドを使ってSKSceneを設定
        let skView = self.view as! SKView
        
        //画面が１秒間に何回更新されているかを示すFPSを画面右下に表示させる
        skView.showsFPS = true
        
        //ノードが幾つ表示されているかを画面右下に表示させる
        skView.showsNodeCount = true
        
        //シーンを作成する。ビューと同じサイズ
        let  scene = GameScene(size:skView.frame.size) //GameSceneクラスに変更
        
        //シーンをびビューに表示する
        skView.presentScene(scene)
        
    }

    //ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
}

