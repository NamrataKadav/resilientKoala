public class StringArrayTest {

    public static String[] generateStringArray(Integer i){
        Integer index;
        String[] s= new String[i];
        for(index = 0;index < i ;index++){
            s[index] = 'Test '+index;
        }
        System.debug(s);
        return s;
        
    }
}