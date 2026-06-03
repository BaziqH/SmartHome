/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1{
            return 10
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return loadCalendarRowTVuCell(indexPath)
        }
        else if indexPath.section == 1{
            return loadLogsTVuCell(indexPath)
        }
        return UITableViewCell()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let offset = scrollView.contentOffset.y
//        let navbarHeight: CGFloat = 50
//        
//        if offset > 5 {
//            if navBar.alpha == 1 {
//                UIView.animate(withDuration: 0.3) {
//                    self.navBar.alpha = 0
//                    self.navBarTopConstraint.constant = -navbarHeight - 12
//                    self.view.layoutIfNeeded()
//                }
//            }
//        } else {
//            if navBar.alpha == 0 {
//                UIView.animate(withDuration: 0.3) {
//                    self.navBar.alpha = 1
//                    self.navBarTopConstraint.constant = 0
//                    self.view.layoutIfNeeded()
//                }
//            }
//        }
    }
}
//MARK: - LOAD CELLS
extension HomeVC{
    func loadCalendarRowTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "CalendarRowTVuCell", for: indexPath) as? CalendarRowTVuCell else {
            return CalendarRowTVuCell()
        }
        return cell
    }
    func loadLogsTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "LogsTVuCell", for: indexPath) as? LogsTVuCell else {
            return LogsTVuCell()
        }
        cell.configure(indexPath: indexPath, lastCellNumber: 9)
        return cell
    }
}
//MARK: - SETUP TABLE VIEW
extension HomeVC{
    
    func setupTableView(){
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        homeTableView.rowHeight = UITableView.automaticDimension
        homeTableView.estimatedRowHeight = 150
    }
    //MARK: - REGISTER NIBS
    func registerNibs(){
        let calendarNib = UINib(nibName: "CalendarRowTVuCell", bundle: nil)
        homeTableView.register(calendarNib, forCellReuseIdentifier: "CalendarRowTVuCell")

        let logsNib = UINib(nibName: "LogsTVuCell", bundle: nil)
        homeTableView.register(logsNib, forCellReuseIdentifier: "LogsTVuCell")
    }
}
