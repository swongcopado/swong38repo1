@isTest
public class CopadoContactControllerTest {
    // <!-- Update this every time there is a new demo. Next Demo Date: 2nd Sept 2022 -->
    @isTest static void testAccountHasDefaultDescription() {       
        Account acc = new Account(Name='Test Account');
        acc = CopadoContactController.setCopadoDefaultContact(acc);
        System.assertEquals('Copado in VIC and NSW Australia', acc.Description);
    }
}