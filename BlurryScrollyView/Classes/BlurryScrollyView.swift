
public class BlurryScrollyView: UIView {
    open var imageToBlur: UIImage?
    open var sharpImageView = UIImageView()
    open var blurryImageView = UIImageView()
    
    open var maxBlurryAlpha: Double = 1.0
    open var blurEffectStyle: UIBlurEffect.Style = .regular
    
    open var enableZoom = true
    open var maxImageZoom: Double = 0.5
    
    var observation: NSKeyValueObservation?
    @objc open dynamic weak var delegateScrollView: UIScrollView?
    
    override public func didMoveToSuperview() {
        super.didMoveToSuperview()
        guard let superview = superview else { return }
        superview.sendSubviewToBack(self)
        frame = superview.bounds
        
        addBlurryImage()
        addSharpImage()
        
        guard let delegateScrollView = delegateScrollView else { return }
        
        observation = delegateScrollView.observe(
            \.contentOffset,
            options: [.old, .new]
        ) { [weak self] (object, change) in
            self?.offsetDidChange(change)
        }
    }
    
    fileprivate func addSharpImage() {
        sharpImageView.image = imageToBlur
        sharpImageView.frame = frame
        addSubview(sharpImageView)
        sendSubviewToBack(sharpImageView)
    }
    
    fileprivate func addBlurryImage() {
        blurryImageView.image = imageToBlur
        blurryImageView.frame = frame
        
        let blurEffect = UIBlurEffect(style: blurEffectStyle)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurryImageView.addSubview(blurEffectView)
        
        addSubview(blurryImageView)
        sendSubviewToBack(blurryImageView)
    }
    
    fileprivate func offsetDidChange(_ change: NSKeyValueObservedChange<CGPoint>) {
        guard let y = change.newValue?.y else { return }
        let imageHeight = Double(blurryImageView.frame.height / 2)
        let scrollAmount:Double = max(Double(y), 0)
        
        let percentScrolled = scrollAmount / imageHeight
        var alphaToSet: Double = 0
        var zoomToSet: Double = 1
        
        alphaToSet = (scrollAmount > imageHeight) ? maxBlurryAlpha : percentScrolled * maxBlurryAlpha
        zoomToSet = (scrollAmount > imageHeight) ? maxImageZoom : percentScrolled * maxImageZoom
        
        if enableZoom {
            sharpImageView.transform = CGAffineTransform(scaleX: CGFloat(zoomToSet + 1.0), y: CGFloat(zoomToSet + 1.0))
            blurryImageView.transform = CGAffineTransform(scaleX: CGFloat(zoomToSet + 1.0), y: CGFloat(zoomToSet + 1.0))
        }
        
        blurryImageView.alpha = CGFloat(alphaToSet)
    }
}
