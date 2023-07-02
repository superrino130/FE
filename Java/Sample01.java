// https://www.fe-siken.com/kakomon/sample/b1.html

class Sample01 {
  public static void main(String[] args) {
    int x = 1;
    int y = 2;
    int z = 3;
    x = y;
    y = z;
    z = x;
    System.out.println(y + "," + z);
  }
}
