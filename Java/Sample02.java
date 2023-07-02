// https://www.fe-siken.com/kakomon/sample/b2.html

class Sample02 {
  public static void main(String[] args) {
    for (int i = 1; i < 16; i++) {
      String a = "i = " + String.valueOf(i) + " " + fizzBuzz(i);
      System.out.println(a);
    }
  }

  public static String fizzBuzz(int i) {
    if (i % 15 == 0) {
      return "3と5で割り切れる";
    } else if (i % 3 == 0) {
      return "3で割り切れる";
    } else if (i % 5 == 0) {
      return "5で割り切れる";
    } else {
      return "3でも5でも割り切れない";
    }
  }
}
