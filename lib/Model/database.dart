
class Database{
  Map<String, String> accounts;
  

  Database(){
    accounts = new Map<String, String>();
  }

  bool addAcount(String username, String password){
    if (accounts.keys.contains(username)){
      return false;
    }
    accounts.putIfAbsent(username, () => password);
    return true;
  }

  bool checkAccount(String username, String password){
    var testPassword = accounts[username];
    if (testPassword != password){
      return false;
    }
  return true;
  }
}