public with sharing class CopadoContactController {
    // <!-- Update this every time there is a new demo. Next Demo Date: 2nd Sept 2022 -->
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

        	
        // Bad code for SCA demo purpose
        // Avoid SOQL inside loops
        List<Contact> contacts;
        for (Integer i = 0; i < 2; i++) {
            contacts = [SELECT Id,FirstName,LastName,Description FROM Contact
                        WHERE Contact.FirstName =: 'First' AND 
                                Contact.LastName =: 'Last'];
        }

        
        return a;

    }

}