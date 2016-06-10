import UIKit

public class UnityShare: UIViewController
{
    public static func share(view:UIViewController , text: String , url:String="",imagename:String="")
    {
        
        var items:[AnyObject] = [text,url]
        if let image = UIImage(contentsOfFile: imagename)
        {
            items.append(image)
        }
        else
        {
            print("img no swift")
        }
        
        let activityVC = UIActivityViewController(activityItems: items, applicationActivities: nil)
        //let unitysc = UnityShareConnector()
        activityVC.completionWithItemsHandler = { (activity: String?, completed: Bool, items: [AnyObject]?, error: NSError?) -> Void in
            if completed
            {
                print("---------activityVC_comp_close")
                //unitysc.closeCallBack()
            }
            else
            {
                print("---------activityVC_cancel_close")
                //unitysc.closeCallBack()
            }
        }
        
        view.presentViewController(activityVC, animated: true, completion: nil)
    }
}