@isTest
public class ExpensesControllerTest {
    
    @isTest
    public static void testGetExpenses() {
        Expense__c expense = new Expense__c(Name='Dummy Expense');
        ExpensesController.saveExpense(expense);
        List<Expense__c> expenses = ExpensesController.getExpenses();
        Integer count = expenses.size();
        System.assert(expenses.size() > 0, 'Number of records fetched: '+count);
    }
    
    @isTest
    public static void testSetExpenses() {
        
        Expense__c expense = new Expense__c(Name='Dummy Expense');
        ExpensesController.saveExpense(expense);
        Integer count = [SELECT COUNT() from Expense__c where Name='Dummy Expense'];
        System.assert(count==1,'Number of records fetched: '+count);
        
        
    }

}