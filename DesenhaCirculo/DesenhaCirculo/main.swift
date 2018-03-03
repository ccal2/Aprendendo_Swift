/*
 Faça um programa que, dado um raio R, desenha apenas usando asteriscos um círculo cujo raio é R
 caracteres.
*/

var raio = 0

// lê e valida a entrada
var valid = false
while !valid {
    if let input = readLine(), let number = Int(input) {
        valid = true
        
        raio = number
    } else {
        print("Entrada inválida")
    }
}






/*
raio = 1
 
 *
*  *
 *
 
 raio = 2
 
  * *
*     *
  * *
 
raio = 3

  *  *
*      *
*      *
  *  *
 
 
raio = 4
 
   *  *
 *      *
*        *
 *      *
   *  *
 
   *  *
 *      *
*        *
 *      *
   *  *
 
raio = 5
 
    *  *
 *        *
*          *
*          *
 *        *
    *  *
 
 
raio = 6
 
    *  *   *
  *          *
 *            *
 *            *
  *          *
    *  *   *
 
 raio = 7
 
      *  *
   *        *
 *            *
*              *
*              *
 *            *
   *         *
      *  *
 
*/
