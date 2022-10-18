#include <stdio.h>

extern int add_asm(int a, int b);
extern int sub_asm(int a, int b);
extern int mult_asm(int a, int b);

int main() {
    //Start
    printf("Would you like to add, subtract, or multiply?");

    //Get the first operand
    char op;
    printf("Enter the first operand: ");
    scanf_s("%c", &op, 1);

    //Get the second operand
    int number1 = 0;
    int number2 = 0;
    printf("Enter the first number: ");
    scanf_s("%d", &number1);
    printf("Enter the second number: ");
    scanf_s("%d", &number2);

    //Begin to call the assembly file
    if (op == '+'){
        printf("Addition answer is: %d"), add_asm(number1, number2);
    }
    else if (op == '-'){
        printf("Subtraction answer is: %d"), sub_asm(number1, number2);
    }
    else if (op == '*'){
        printf("Multiplication answer is: %d"), mult_asm(number1, number2);
    }
    else{
        printf("END!");
    }
    return 1;
}