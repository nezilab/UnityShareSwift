import UIKit

class UnityShare: NSObject
{
    
    func share(view:UIViewController , text: String , url:String="",imagename:String="")
    {
        var items:[AnyObject] = [text,url]
        if let image = UIImage(named: "imagename")
        {
            items.append(image)
        }
        
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        view.presentViewController(activityVC, animated: true, completion: nil)
    }
}