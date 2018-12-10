### 0.1.3 (12/12/2018)

* Implementa `GetExceptionStatus`

### 0.1.2 (25/10/2018)

* Implementa `GetInstallments`
* Corrige passagem de token na classe `Boleto`
* Corrige `body` da resposta de `Boleto`
* Refatora classe `Response` para permitir override de chaves de acesso ao conteúdo da resposta
* Substitui `Array()` por `Array.wrap()` para evitar de converter chaves de um hash para array
* Levanta exception `BoletoNotAvailable` se ainda não tiver boleto disponível
* Levanta exception `InstallmentNotAvailable` se ainda não tiver parcela disponível
* Implementa `GetLinhaDigitavel`

### 0.1.1 (17/10/2018)

* Levanta exception se o token gerado não estiver preenchido em `Login`
* Adiciona separador `;` nos parametros do tipo array em `GeneratePromise` e `GetCampaignNegotiation`
* Implementa `GetBoleto`
* Implementa `GetCampaignNegotiation`

### 0.1.0 (09/10/2018)

* Cria a gem
