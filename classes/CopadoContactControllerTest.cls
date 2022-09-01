@isTest
public class CopadoContactControllerTest {
    @isTest static void testAccountHasDefaultDescription() {       
        Account acc = new Account(Name='Test Account');
        acc = CopadoContactController.setCopadoDefaultContact(acc);
        System.assertEquals('New Account in VIC Australia', acc.Description);
    }
}