public class KataFizzbuzz {

    public static void main(String arg[]) {
	
	boolean fizzbuzz = false;	
	
	for (int num = 1; num <= 100; num++) 
	    {
		
		String numString = new Integer(num).toString();
		
		if (num % 3 == 0 || numString.contains("3")) 
		    {
			System.out.print("Fizz");
			fizzbuzz=true;
		    }  
		
		if (num % 5 == 0 || numString.contains("5")) 
		    {
			if (fizzbuzz)
			    System.out.print("buzz?");
			else 
			    System.out.print("Buzz");
			fizzbuzz = true;
		    } 
		
		if (!fizzbuzz) 
		    {
			System.out.print(num);
		    }
		
		fizzbuzz = false;
		System.out.println("");	    
	    }
	
    }
    
}
