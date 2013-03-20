//
//  main.m
//  HelloWorld
//
//  Created by Sonia Ribeiro on 19/03/13.
//  Copyright (c) 2013 iLearn Educação e Informática Ltda. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Pessoa.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
     
        int idade = 40;
        int idadeCasado = 10;
        float peso = 65.5;
        NSString *nome = @"Philippe";
        
        // String formatada com caracteres de escape
        NSLog(@"Olá, %@! Você tem %d anos e é casado a %d anos! E tem %0.2f kg.", nome, idade, idadeCasado, peso);
        
        ////////////////////////////////////////
        
        // Instanciando um objeto da classe Pessoa
        // Em Objective-C era de se esperar que ao aninharmos métodos o resultado seja como a linha abaixo:
        Pessoa *umaPessoa = [[Pessoa alloc] init];
        
        // Chamando o método público "imc" da variável "umaPessoa"
        // A chamada de um método de uma classe em Objective-C é diferente. Ex: em Java umaPessoa.imc()
        float indice = [umaPessoa imc];
        NSLog(@"O imc da pessoa é %0.2f.", indice);
        
        [umaPessoa alteraAltura:1.90];
        indice = [umaPessoa imc];
        NSLog(@"O imc da pessoa é %0.2f.", indice);
        
        NSString *stringConcatenada = [umaPessoa concatenaString:@"String1" comString:@"String2"];
        
        NSLog(@"A string concatenada é %@", stringConcatenada);
        
        umaPessoa.peso = 150;
        indice = [umaPessoa imc];
        NSLog(@"O imc da pessoa é %0.2f.", indice);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}