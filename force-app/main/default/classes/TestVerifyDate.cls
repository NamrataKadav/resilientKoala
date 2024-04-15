@isTest
private class TestVerifyDate {

    
    @isTest static void method1(){
        Date dt1 = VerifyDate.CheckDates(Date.newInstance(2022, 5, 1),Date.newInstance(2022, 5, 5));
        System.assertEquals(Date.newInstance(2022, 5, 5),dt1);
    }
    
    
     @isTest static void method2(){
        Date dt2 = VerifyDate.CheckDates(Date.newInstance(2022, 5, 1),Date.newInstance(2022, 6, 5));
        System.assertEquals(Date.newInstance(2022, 5, 31),dt2);
    }
    
     @isTest static void method3(){
        Date dt3 = VerifyDate.CheckDates(Date.newInstance(2022, 5, 1),Date.newInstance(2022, 4, 5));
        System.assertEquals(Date.newInstance(2022, 5, 31),dt3);
    }
    
}