@isTest
public class ContactOperationsTest {
    @isTest static void testContactHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Contact con = new Contact(FirstName='Someone',LastName='Out There');
        insert con;
        con = ContactOperations.setDefaultDescription(con);
        Test.stopTest();
        // Verify
        // Contact savedContact = [SELECT Description FROM Contact WHERE Id = :con.Id];
        System.assertEquals('Default Description', con.Description);
    }
    
    @isTest static void testContactHasDefaultFirstName() {
        Test.startTest();
        Contact con = new Contact(LastName='aLastName');
        con = ContactOperations.setDefaultFirstName(con);
        Test.stopTest();
        System.assertEquals('Default First Name', con.FirstName);
    }
}