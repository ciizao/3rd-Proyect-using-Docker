using System;

namespace ejercicio3
{
    class Program
    {
        static void Main(string[] args)
        {
            Random random = new Random();

            int num1 = random.Next(1, 11); 
            int num2 = random.Next(1, 11);

            Console.WriteLine("¡CALCULADORA DE NÚMEROS ALEATORIOS!");
            Console.WriteLine("Número 1: " + num1);
            Console.WriteLine("Número 2: " + num2);

            int suma = num1 + num2;
            int resta = num1 - num2;
            int multiplicacion = num1 * num2;

            Console.WriteLine("Suma: " + suma);
            Console.WriteLine("Resta: " + resta);
            Console.WriteLine("Multiplicación: " + multiplicacion);
        }
    }
}



