//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//

class LogsTVuCell: UITableViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var logsLabelView: UIStackView!
    @IBOutlet weak var leftBottomLine: UIView!
    @IBOutlet weak var cellTopSpace: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(indexPath: IndexPath, lastCellNumber: Int){
        if indexPath.row != 0 {
            logsLabelView.isHidden = true
            cellTopSpace.constant = 0
        } else {
            logsLabelView.isHidden = false
            cellTopSpace.constant = 20
        }
        //Hiding left bottom line from last cell
        if indexPath.row == lastCellNumber {
            leftBottomLine.alpha = 0
        } else {
            leftBottomLine.alpha = 1
        }
        
    }
}
