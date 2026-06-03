//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//

class CalendarDateCVuCell: UICollectionViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(indexPath: IndexPath, selectedDay: String ){
        dateLabel.text = String(indexPath.row + 1)
        dayLabel.text = selectedDay
    }

}
