//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//
//MARK: - TABLE VIEW
extension SecurityVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        loadSecurityTVuCell(indexPath)
    }
}
//MARK: - LOAD CELLS
extension SecurityVC{
    func loadSecurityTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = securityTableView.dequeueReusableCell(withIdentifier: "SecurityTVuCell", for: indexPath) as? SecurityTVuCell else {
            return SecurityTVuCell()
        }
        return cell
    }
}
//MARK: - SETUP TABLE VIEW
extension SecurityVC{
    
    func setupTableView(){
        securityTableView.delegate = self
        securityTableView.dataSource = self
        
        securityTableView.rowHeight = UITableView.automaticDimension
        securityTableView.estimatedRowHeight = 150
    }
    //MARK: - REGISTER NIBS
    func registerNibs(){
        let securityNib = UINib(nibName: "SecurityTVuCell", bundle: nil)
        securityTableView.register(securityNib, forCellReuseIdentifier: "SecurityTVuCell")
    }
}

