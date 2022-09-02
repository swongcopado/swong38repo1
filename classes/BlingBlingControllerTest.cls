@isTest
public class BlingBlingControllerTest {

    @isTest
    public static void testSetDefaultInfo() {
        Bling_Bling__c testObj;
        testObj = BlingBlingController.setDefaultInfo(testObj);
        if (testObj != null) {
            System.assertEquals(testObj.Reason__c,'I love bling blings!');
        }
        
        testObj = new Bling_Bling__c(Name='Default');
        testObj = BlingBlingController.setDefaultInfo(testObj);
        System.assertEquals(testObj.Name,'Major Bling Bling');
    }


}