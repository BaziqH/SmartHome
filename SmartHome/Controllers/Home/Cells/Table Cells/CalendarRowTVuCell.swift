//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class CalendarRowTVuCell: UITableViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var dateCollectionVIew: UICollectionView!
    
    //MARK: - VARIABLE
    var dayArr = ["Mon", "Tues", "Wed", "Thurs", "Fri", "Sat", "Sun"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
        registerNibs()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
//MARK: - COLLECTION VIEW
extension CalendarRowTVuCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        loadBannerCVuCell(indexPath)
    }
}
//MARK: - COLLECTION VIEW FLOW LAYOUT
extension CalendarRowTVuCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width/4 - 5, height: collectionView.frame.height)
    }
}
//MARK: - LOAD CELSS
extension CalendarRowTVuCell{
    func loadBannerCVuCell(_ indexPath: IndexPath)->UICollectionViewCell{
        guard let cell = dateCollectionVIew.dequeueReusableCell(withReuseIdentifier: "CalendarDateCVuCell", for: indexPath) as? CalendarDateCVuCell else { return CalendarDateCVuCell()
        }
        var selectedDay = dayArr[indexPath.row % 7]
        cell.configure(indexPath: indexPath, selectedDay: selectedDay)
        return cell
    }
}
//MARK: - SETUP COLLECTION VIEW
extension CalendarRowTVuCell{
    func setupCollectionView(){
        dateCollectionVIew.delegate = self
        dateCollectionVIew.dataSource = self
    }
    func registerNibs(){
        let dateNib = UINib(nibName: "CalendarDateCVuCell", bundle: nil)
        dateCollectionVIew.register(dateNib, forCellWithReuseIdentifier: "CalendarDateCVuCell")
    }
}

