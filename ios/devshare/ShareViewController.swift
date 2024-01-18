//
//  ShareViewController.swift
//  devshare
//
//  Created by Bhoma Ram on 18/01/24.
//

import UIKit
import Social

class ShareViewController: SLComposeServiceViewController {
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("ExtentionDidAppear");
    extensionContext?.completeRequest(returningItems: [], completionHandler: nil)
  }
  
  override func viewDidLoad() {
    print("ExtentionDidLoad");
    if let extensionContext = extensionContext,
        let inputItems = extensionContext.inputItems as? [NSExtensionItem] {
        for item in inputItems {
          if let attachments = item.attachments {
                for attachment in attachments {
                    attachment.loadItem(forTypeIdentifier: "public.data", options: nil) { (item, error) in
                        if let data = item as? Data {
                            // Handle data here
                            print("Data: \(String(data: data, encoding: .utf8) ?? "")")
                        }
                    }
                }
            }
        }
    }
    extensionContext?.completeRequest(returningItems: [], completionHandler: nil)
  }
  
}
