import UIKit

class UnityShare: NSObject
{
    
    func share(view:UIViewController , text: String)
    {
        let text = text
        let items = [text]

        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        view.presentViewController(activityVC, animated: true, completion: nil)
    }
}