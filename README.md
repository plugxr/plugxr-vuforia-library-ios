# plugxr-vuforia-library-ios

1. Clone Repository

    dependencies: git, git-lfs (make sure you have installed git, git-lfs in your system)

    `git clone https://github.com/plugxr/vuforia-library-ios.git`



2. Setup Project in Swift
    
    a. Open your Xcode project (New/Existed)
  
    b. Add the framework folder to your Xcode project folder.

    c. Open your project in Xcode , under `Project -> General -> Frameworks and Libraries`.
    Click on `+` button to add Vuforia Framework , UnityFramework and SwiftPlugIn And set all frameworks to `Embed  & Sign`.

    d. Open your File from where you want to open Unity window (Viewcontroller.Swift).

    e. Add `import SwiftPlugIn`  in your view controller class.

      ```swift
      import SwiftPlugIn
      ```

    f. Initialise  Keys class in ViewController.
    Place your Vuforia keys, back button image name from your Assets.xcassets and unique device ID in keysDict.
    
    *Note* :  All Keys and values are Required and should be proper
    
    ```swift
      let keys = Keys()
      let keysDict : NSDictionary = ["license_key":"<vuforia_license_key>","client_access":"<vuforia_client_access>", "client_secret":"<vuforia_ client_secret>"];
      keys.sendKeys(keys: keysDict)
    ```

    g. Place below code in your button action to navigate to unity window.
    
    ```swift
       DispatchQueue.main.async {
              let path = Bundle.main.path(forResource: "SwiftPlugIn", ofType: "framework", inDirectory: "Frameworks")
              let resource = Bundle(path: path!)
              let storyboard : UIStoryboard = UIStoryboard(name: "Unity", bundle: resource)
              let unityWindow : UIViewController = storyboard.instantiateViewController(withIdentifier: "IntialViewController") as UIViewController
              unityWindow.modalPresentationStyle = UIModalPresentationStyle.fullScreen
              self.present(unityWindow, animated: true, completion: nil)
       }
    ```
    
    h. Add camera and photo library permissions in `Info.plist`.
    
        Privacy - Camera Usage Description - Allow Camera for AR
        
        Privacy - Photo Library Usage Description - Allow to save screenshots
