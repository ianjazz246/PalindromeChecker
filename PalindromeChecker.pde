public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  word = word.toLowerCase().replaceAll("(!|'|\\?|\"|,|\\s)+", "");
  return word.equals(reverse(word));
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i >= 1; i--) {
    	sNew += str.substring(i-1, i);
    }
    //your code here
    return sNew;
}


