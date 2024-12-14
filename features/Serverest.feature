Feature: Teste do Serverest.dev

  Para manter a API Serverest.dev estável
  Eu como QA
  Quero me assegurar qeu tudo está funcionando como esperado

Scenario: Criar um usuário
    Given Eu selecione a url https://serverest.dev para realizar as requisicoes
      And Eu realize uma requisição POST para /usuarios
      And Eu ajuste o header content-type para application/json;charset=utf-8
      And Eu ajuste o corpo da requisicao para
      """
      { "nome": "Oceane.OHara7852928652017664", "email": "Glenn9973@hotmail.com", "password": "8f_D6kSZ3Tx38fg", "administrador": "true" }
      """
     When Eu receba uma resposta
     Then Eu espero que a reposta deva ter um status 201
     And I expect response time should be less than 3000 ms
     And I expect response should have a json schema
      """
      {
        "type": "object",
        "properties": {
          "message": {
            "type": "string"
          },
          "_id": {
            "type": "string"
          }
        }
      }
      """
      And I store response at _id as UserId

Scenario: Consultar um usuário
    Given Eu selecione a url https://serverest.dev para realizar as requisicoes
      And I make a GET request to /usuarios/{id}
      And I set path param id to $S{UserId}
      And Eu ajuste o header content-type para application/json;charset=utf-8
      When Eu receba uma resposta
      Then Eu espero que a reposta deva ter um status 200
      And I expect response time should be less than 3000 ms