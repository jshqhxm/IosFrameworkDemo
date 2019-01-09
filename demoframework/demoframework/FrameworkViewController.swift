//
//  FrameworkViewController.swift
//  demoframework
//
//  Created by xiaomin he on 2018/12/11.
//  Copyright © 2018年 xiaomin he. All rights reserved.
//

import UIKit

open class FrameworkViewController: UIViewController {

    @IBOutlet weak var CloseBtn: UIButton!
    
    @IBAction func clicked(_ sender: Any) {
        print("FrameworkViewController   CloseBtn clicked ")
        self.dismiss(animated: true, completion: nil)
        
    }
    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("FrameworkViewController   viewDidLoad")
    }

   
    
    override open func viewDidAppear(_ animated: Bool) {
        print("FrameworkViewController   viewDidAppear     " )
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        print("FrameworkViewController   init   " )
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
