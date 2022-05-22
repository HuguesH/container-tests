public class Main {

    public static void main(String[] args){
        System.out.println("Main say : Hello World");
        if(args != null){
            for (String arg:args) {
                System.out.println("arg : " + arg);
            }
        }
    }

}
