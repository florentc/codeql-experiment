package com.mycompany.app;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        // Inappropriate use of System.exit()
        if (args.length > 0) {
            System.exit(1);
        }
    }
}
