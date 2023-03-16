//
//  ViewController.swift
//  INStockAdminPanel
//
//  Created by Afnan on 04/03/2023.
//

import UIKit
import Reachability

class ViewController: UIViewController {
    let reachability = try! Reachability()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true 

        
    }
    override func viewWillAppear(_ animated: Bool) {
           NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: reachability)
           do {
               try reachability.startNotifier()
           } catch
            {
               print("Unable to start notifier")
           }
       }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        reachability.stopNotifier()
        NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: reachability)
    }
    @IBAction func getStartedBtn(_ sender: Any) {
        
             switch reachability.connection {
                // INternet
            case .wifi , .cellular:
                let controller = storyboard?.instantiateViewController(identifier: "TabBarController") as! UITabBarController
                 controller.modalPresentationStyle = .fullScreen
                 controller.modalTransitionStyle = .flipHorizontal
                  present(controller, animated: true, completion: nil)
     
               //UNAnvaliabe Internet
            case .unavailable , .none:
                let alert = UIAlertController(title:"No Internet !", message: "Make Sure Of Internet Connection", preferredStyle: .alert)
                
               alert.addAction(UIAlertAction(title: "Ok ", style: .default, handler: nil))
                var imgTitle = UIImageView(frame: CGRect(x: 50, y: 14, width: 32, height: 32))
                imgTitle.image = UIImage(named: "nointernet")
                alert.view.addSubview(imgTitle)
                self.present(alert, animated: true, completion: nil)
                print(" unavailable No Connection")
           }
        }
    // check reachabilityChanged
    @objc func reachabilityChanged(note: Notification) {
        let reachability = note.object as! Reachability
 
    }
    }
