//
//  Pessoa.h
//  HelloWorld
//
//  Created by Sonia Ribeiro on 19/03/13.
//  Copyright (c) 2013 iLearn Educação e Informática Ltda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject {
    
    // Por padrão as variáveis de instâncias são protected, ou seja, estão disponíveis apenas para si E para seus filhos (ex: homem)    
    @protected
    
    // Variáveis de instâncias só estão disponíveis para o objeto em memória
    int idade;
    float peso;
    float altura;
}

// Declarando métodos públicos

/*
 o traço (-) indica que o método é um método de instância
 (float) indica o tipo de retorno do método
 imc é o nome do método
 */

- (float)imc;

- (void)alteraAltura:(float)novaAltura;

- (NSString *)concatenaString:(NSString *)s1 comString:(NSString *)s2;

// Declarando properties (Atributos disponíveis para outras classes) - Equivale aos getters e setters.
// Podemos definir as permissões sobre as properties, por exemplo "nonatomic", que permite que a variável seja lida em múltplas threads
@property (nonatomic) float peso;

@end
