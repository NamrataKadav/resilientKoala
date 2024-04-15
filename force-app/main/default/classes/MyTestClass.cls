public class MyTestClass {
    public MyTestClass(){
        List<Account> accs = [Select Id,Name from Account];
    }
}