public class kata{
    public static void main(String [ ] args){
        for( int i=1; i<=100; i++){
            String iI = new Integer(i).toString();
            if (i%3==0 || iI.contains("3")){
                System.out.println("fizz");
            }
            else if (i%5==0 || iI.contains("5")){
                System.out.println("buzz");
            }
            else{
                System.out.println(i);
            }
            
        }
    }
}