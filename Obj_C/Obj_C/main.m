//
//  main.m
//  Obj_C
//
//  Created by Turma Manhã on 22/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *pergunta1 = @"Qual a capital da Croacia?";
        NSString *resposta1 = @"Zagreb";
        
        NSString *pergunta2 = @"Em que ano Swift 1.0 tornou-se disponivel?";
        NSString *resposta2 = @"2014";
        
        NSString *pergunta3 = @"Qual o nome do segundo álbum do Vampire Weekend?";
        NSString *resposta3 = @"Contra";
        
        NSString *pergunta4 = @"Qual o nome do vocalista de Arctic Monkeys?";
        NSString *resposta4 = @"Alex Turner";
        
        NSString *pergunta5 = @"Quais países fazem parte do Reino Unido?";
        NSString *resposta5 = @"Inglaterra, Escócia, País de Gales e Irlanda do Norte";
        
        int pontos = 0;
        
        NSLog(@"%@", pergunta1);
        char str[30];
        scanf("%[^\n]", str);
        // gambiarra pra limpar buffer
        char c;
        scanf("%c", &c);
        //
        NSString *palpite = [NSString stringWithUTF8String:str];
        if (palpite == resposta1) {
            pontos = pontos + 1;
        } else {
            pontos = pontos - 1;
        }
        
        NSLog(@"%@", pergunta2);
        scanf("%[^\n]", str);
        scanf("%c", &c);
        palpite = [NSString stringWithUTF8String:str];
        if (palpite == resposta2) {
            pontos = pontos + 1;
        } else {
            pontos = pontos - 1;
        }
        
        NSLog(@"%@", pergunta3);
        scanf("%[^\n]", str);
        scanf("%c", &c);
        palpite = [NSString stringWithUTF8String:str];
        if (palpite == resposta3) {
            pontos = pontos + 1;
        } else {
            pontos = pontos - 1;
        }
        
        NSLog(@"%@", pergunta4);
        scanf("%[^\n]", str);
        scanf("%c", &c);
        palpite = [NSString stringWithUTF8String:str];
        if (palpite == resposta4) {
            pontos = pontos + 1;
        } else {
            pontos = pontos - 1;
        }
        
        NSLog(@"%@", pergunta5);
        scanf("%[^\n]", str);
        scanf("%c", &c);
        palpite = [NSString stringWithUTF8String:str];
        if (palpite == resposta5) {
            pontos = pontos + 1;
        } else {
            pontos = pontos - 1;
        }
        
    }
    return 0;
}
