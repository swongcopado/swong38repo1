public with sharing class CopadoContactController {
    @AuraEnabled
    public static Account setCopadoDefaultContact(Account a) {
        
        if (a==null) { 
            a = new Account(Name='Default');
        }
        
        a.Name = 'Copado VIC and NSW';
        
        a.Description = 'Copado in VIC and NSW Australia';
        
        a.billingstreet = '198 Flinders St, Melbourne'; 
        a.billingstate = 'VIC'; 
        a.billingpostalcode ='3000'; 
        
        a.shippingstreet = '68 George St.'; 
        a.shippingstate = 'NSW';
        a.shippingpostalcode ='2000';
        
        a.Phone='0322446789'; //VIC no
        
        a.website = 'www.copado.com.au'; // New website
        
        return a;

    }

}