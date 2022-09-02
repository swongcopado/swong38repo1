public class ContactOperations {
    public static Contact setDefaultDescription(Contact c) {     

        if (c.Description == null) 
            c.Description = 'Default description';                
        else
            c.Description = 'No description';
            // return c;

        // Avoid SOQL inside loops
        List<Contact> contacts;
        for (Integer i = 0; i < 2; i++) {
            contacts = [SELECT Id,FirstName,LastName,Description FROM Contact
                        WHERE Contact.FirstName =: c.FirstName AND 
                                Contact.LastName =: c.LastName];
        }
        
        // Avoid DML Statements inside loops
        Integer size = contacts.size();
        Contact c2;
        for (Integer i = 0; i < size; i++) {
            c2 = contacts[i];
            
            // If then Else should have curly braces
            if (c2.Description == null) 
                c2.Description = 'Default description';                
            else
                c2.Description = 'No description';
            update c2;
            
        }
        return c2;
    }

    public static Contact setDefaultFirstName(Contact c) {
        // If then Else should have curly braces
        if (c.FirstName == null) 
            c.FirstName = 'Default FirstName';                
        else
            c.Description = 'No description';
        
        for (Integer i = 0; i < 10; i++) {
            c.LastName = 'Some LastName';
            c.Description = 'Do some dummy stuff here';
        }

        return c;        
    }
}