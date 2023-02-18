<%-- 
    Document   : Calculadora
    Created on : 17/02/2023, 10:12:16
    Author     : Lourdes Pérez
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
          
          <Form class="mb-3 row" action="" method="GET">
            <label for="inputPassword" class="col-sm-2 col-form-label">Inserte un valor</label>
            <div class="col-sm-10">
              <input type="text" name="valor" class="form-control" id="inputPassword">
            </div>
          </Form>
          <%
              int valor = 0;
              //Aqui enlisto los numeros primos
              List<Integer> lista = new ArrayList<Integer>();
              try{
                valor = Integer.parseInt(request.getParameter("valor").toString());
                System.out.println("Valor es: " + valor);
              }catch(Exception e){
                System.out.println(e);
              }
              
              for(int i =0; i>=2; i--){
                //seteamos el primer valor que en este caso es el insertado y evaluaremos si es primo
                int resta = valor; 
                int modulo = 0;
                //vamos a dividir con modulo de 2 a 9 el valor de resta
                for(int j=2; j<=9; j++){
                    modulo = resta % j;
                    if(modulo!=0){
                        lista.add(resta);
                    }
                }
                resta = resta -1;
              } 
           %>
          <div class="mb-3 row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Números primos</label>
            <div class="col-sm-10">
                <%
                    List<Integer> divisores;

                    //Resta es el valor a evaluar si es primo
                    int resta = valor; 
                    int modulo;

                    //Tenemos que agregar el numero dos porque ya que empezaremos desde 2
                    //El sistema no lo agrega a la lista en el ciclo, pero si es un primo
                    if(valor>2){
                        lista.add(2);
                    }
                    //Contaremos de 2 al valor resta para evaluar si es primo
                    do{
                        int i = 2;
                        divisores = new ArrayList<Integer>();
                        do{
                            modulo = resta % i;
                            if(modulo==0){
                                divisores.add(i);
                            }
                            i++;
                        }while(i<resta);

                        if(divisores.size()==0){
                            System.out.println("El valor " + resta + " es un numero primo");
                    
                %>
                <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="<%=resta%>">
                <%
                        lista.add(resta);
                        }
                        resta = resta -1;

                    }while(resta>1);
                %>
            </div>
          </div>
    </body>
</html>
