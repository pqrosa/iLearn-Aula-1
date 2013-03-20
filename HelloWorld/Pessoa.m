//
//  Pessoa.m
//  HelloWorld
//
//  Created by Sonia Ribeiro on 19/03/13.
//  Copyright (c) 2013 iLearn Educação e Informática Ltda. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

// Synthesize cria automaticamente os getters e setters de uma propriedade
@synthesize peso;

// id é um tipo primitivo que retorna um endereço de memória, ou seja o conteúdo um ponteiro
- (id)init
{
    self = [super init];
    if (self) {
        peso = 70;
        altura = 1.70;
    }
    return self;
}

- (float)imc {
    return peso / (altura * altura);
}

- (void)alteraAltura:(float)novaAltura{
    altura = novaAltura;
}

- (NSString *)concatenaString:(NSString *)s1 comString:(NSString *)s2{
    return [NSString stringWithFormat:@"%@%@", s1, s1];
}

@end
