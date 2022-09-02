public with sharing class BlingBlingController {
    @AuraEnabled
    public static Bling_Bling__c setDefaultInfo(Bling_Bling__c a) {
        
        if (a==null) { 
            a = new Bling_Bling__c(Name='Default');
        }
        a.Name = 'Major Bling Bling';
        a.Price__c = 999.99;
        a.External_URL__c = 'https://{!Environment.EXT_URL}';
        a.Reason__c = 'I love bling blings!';
        
        return a;

    }

}