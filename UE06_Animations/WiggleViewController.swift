//
//  FirstViewController.swift
//  UE06_Animations
//
//  Created by Mark Peneder on 30.01.17.
//  Copyright © 2017 MC. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class FirstViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func playSound() {

        let url = Bundle.main.url(forResource: "wigglecut", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBOutlet weak var myView1: UIView!
    @IBOutlet weak var myView2: UIView!
    @IBOutlet weak var myView3: UIView!
    @IBOutlet weak var myView4: UIView!
    @IBOutlet weak var myView5: UIView!
    @IBOutlet weak var myView6: UIView!
    @IBOutlet weak var myView7: UIView!
    @IBOutlet weak var myView8: UIView!
    @IBOutlet weak var myView9: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        playSound()

        UIView.animateKeyframes(withDuration: 0.2, delay: 0, options: [.repeat, .autoreverse], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: {
                let trans = CGAffineTransform(translationX: 4, y: 4)
                var rotate = CGAffineTransform(rotationAngle: CGFloat(M_PI_4/8))
                var combined = rotate.concatenating(trans)
                self.myView1.transform = combined
                self.myView5.transform = combined
                self.myView3.transform = combined
                self.myView7.transform = combined
                self.myView9.transform = combined

                rotate = CGAffineTransform(rotationAngle: CGFloat(M_PI_4/12))
                combined = rotate.concatenating(trans)
                
                self.myView2.transform = combined
                self.myView4.transform = combined
                self.myView6.transform = combined
                self.myView8.transform = combined

            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                let trans = CGAffineTransform(translationX: 4, y: -4)
                var rotate = CGAffineTransform(rotationAngle: CGFloat(-M_PI_4/8))
                var combined = rotate.concatenating(trans)
                self.myView1.transform = combined
                self.myView5.transform = combined
                self.myView3.transform = combined
                self.myView7.transform = combined
                self.myView9.transform = combined
                
                rotate = CGAffineTransform(rotationAngle: CGFloat(-M_PI_4/12))
                combined = rotate.concatenating(trans)
                
                self.myView2.transform = combined
                self.myView4.transform = combined
                self.myView6.transform = combined
                self.myView8.transform = combined

            })
        }, completion: { (_) in
            print("finished")
        })
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        player?.stop()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

