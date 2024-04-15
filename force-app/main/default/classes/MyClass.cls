public class MyClass{
 public static List<List<sObject>> searchItems(List<String> termlist){
    List<List<sObject>> result = new List<List<sObject>>();
    for(String term : termlist){
       result.addAll([Find :term IN ALL FIELDS RETURNING Account(Name), Contact(FirstName,LastName)]);
    }
    return result;
}   
}