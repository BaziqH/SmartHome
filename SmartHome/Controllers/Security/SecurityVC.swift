//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//
class SecurityVC: UIViewController {
//MARK: - OUTLETS
    @IBOutlet weak var securityTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        registerNibs()
    }
}
