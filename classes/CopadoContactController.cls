public with sharing class CopadoContactController {
	@AuraEnabled
    public static Account setCopadoDefaultContact(Account a) {
        
        if (a==null) { 
            a = new Account(Name='Default');
        }
        
        a.Name = 'Copado VIC';
        
        a.Description = 'New Account in VIC Australia';
        
        a.billingstreet = '198 Flinders St, Melbourne'; 
        a.billingstate = 'VIC'; 
        a.billingpostalcode ='3000'; 
        
        a.shippingstreet = '606 Infinite Ct'; 
        a.shippingstate = 'VIC';
        a.shippingpostalcode ='3080';
        
        a.Phone='0322446789'; //VIC no
        
        a.website = 'www.copado.com'; // New website
        
        return a;

    }

}