public class CopadoTrialUtilities {
    
    static public void setTrialUserPasswords(String usernamePattern, String passwd) {
        List<User> userList = new List<User>();
        userList = [SELECT Id from User WHERE IsActive = true
                        AND Username LIKE :usernamePattern];
        for (User u : userList)
        {
            System.setPassword(u.Id, passwd);
            System.debug('DONE: ' + u.Id);
        }
    }
    
    // This section added in DEV1 for Project 30X8
	String dummyLine = 'Hello DEV1 in Project 30X8';
}