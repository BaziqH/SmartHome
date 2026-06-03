//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//

class SecurityTVuCell: UITableViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var securityCollectionView: UICollectionView!
    //MARK: - VARIABLES
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
        registerNibs()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - Auto height function
    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        self.contentView.frame = self.bounds
        self.layoutIfNeeded()
        var size = self.securityCollectionView.contentSize
        size.height += 150
        return size
        }
    
}
//MARK: - COLLECTION VIEW
extension SecurityTVuCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        loadSecurityItemCVuCell(indexPath)
    }
}
//MARK: - COLLECTION VIEW FLOW LAYOUT
extension SecurityTVuCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width/2 - 5, height: 180)
    }
}
//MARK: - LOAD CELSS
extension SecurityTVuCell{
    func loadSecurityItemCVuCell(_ indexPath: IndexPath)->UICollectionViewCell{
        guard let cell = securityCollectionView.dequeueReusableCell(withReuseIdentifier: "SecurityItemCVuCell", for: indexPath) as? SecurityItemCVuCell else { return SecurityItemCVuCell()
        }
        return cell
    }
}
//MARK: - SETUP COLLECTION VIEW
extension SecurityTVuCell{
    func setupCollectionView(){
        securityCollectionView.delegate = self
        securityCollectionView.dataSource = self
    }
    func registerNibs(){
        let itemNib = UINib(nibName: "SecurityItemCVuCell", bundle: nil)
        securityCollectionView.register(itemNib, forCellWithReuseIdentifier: "SecurityItemCVuCell")
    }
}


