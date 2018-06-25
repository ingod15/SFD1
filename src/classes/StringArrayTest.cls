/**
 * Created by Basko_Y on 11.06.2018.
 */

public with sharing class StringArrayTest {
public static List<String> generateStringArray(Integer n){
List<String> listStrings = new List<String>();
for(Integer i=0;i<n;i++){
 listStrings.add('Test '+ i);
}
    return listStrings;
}
        }