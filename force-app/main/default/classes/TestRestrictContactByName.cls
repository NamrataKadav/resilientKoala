@isTest
public class TestRestrictContactByName {
    @isTest
    public static void testRestrictContactByName(){
        // create a contact to pass the testcase
        Contact cnt = new Contact(Lastname='INVALIDNAME');
        insert cnt;
        
        // fetch contact from database
        Contact c = [ Select Lastname from Contact where Lastname = 'INVALIDNAME'];
        
        System.assertEquals(null,c.Lastname);
    }

}