public class CopadoTrialUtilities {
    
    static public void setTrialUserPasswords(String usernamePattern, String passwd) {
        // This section of code added in DEV2 for Project 30X8-2
        String aString = 'Hello DEV2 from Project 30X8-2';
        
        List<User> userList = new List<User>();
        userList = [SELECT Id from User WHERE IsActive = true
                        AND Username LIKE :usernamePattern];
        for (User u : userList)
        {
            System.setPassword(u.Id, passwd);
            System.debug('DONE: ' + u.Id);
        }
    }

}