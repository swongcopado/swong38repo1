public with sharing class CopadoContactController {
    @AuraEnabled
    public static Account setCopadoDefaultContact(Account a) {
        
        if (a==null) { 
            a = new Account(Name='Default');
        }
        
        a.Name = 'Copado Sydney';
        
        a.Description = 'New Copado Address in Sydney';
        
        a.BillingStreet = '11 York St'; 
        a.BillingCity = 'Sydney';
        a.BillingCountry = 'AU';
        a.BillingState = 'NSW';
        a.BillingPostalCode = '2000'; 
        
        a.ShippingStreet = '11 York St'; 
        a.ShippingCity = 'Sydney';
        a.ShippingCountry = 'AU';
        a.ShippingState = 'NSW';
        a.ShippingPostalCode = '2000';
        
        a.Phone='0220108888'; //NSW no
        
        a.Website = 'www.copado.com'; // New website
        
        return a;

    }

}