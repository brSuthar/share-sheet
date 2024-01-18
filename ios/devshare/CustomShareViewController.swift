//
//  CustomShareViewController.swift
//  devshare
//
//  Created by Bhoma Ram on 18/01/24.
//

import UIKit

class CustomShareViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 1: Set the background and call the function to create the navigation bar
    self.view.backgroundColor = .systemGray6
    setupNavBar()
  }
  
  // 2: Set the title and the navigation items
  private func setupNavBar() {
    self.navigationItem.title = "My app"
    
    let itemCancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelAction))
    self.navigationItem.setLeftBarButton(itemCancel, animated: false)
    
    let itemDone = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneAction))
    self.navigationItem.setRightBarButton(itemDone, animated: false)
  }
  
  // 3: Define the actions for the navigation items
  @objc private func cancelAction () {
    let error = NSError(domain: "some.bundle.identifier", code: 0, userInfo: [NSLocalizedDescriptionKey: "An error description"])
    extensionContext?.cancelRequest(withError: error)
  }
  
  @objc private func doneAction() {
    extensionContext?.completeRequest(returningItems: [], completionHandler: nil)
  }
  
  
}
