# Cadastro de Clientes

Modelo de Cadastro de Clientes para avaliação

Este modelo irá trabalhar com persistência dos dados em um arquivo xml, sendo atualizado a cada inclusão, exclusão ou alteração.

Foi utilizado alguns recursos do suite firedac, permitindo a criação de pesquisa local de dados, sendo assim consegui apoio em alguns procedimentos como geração de código válido sequencial, checagem de duplicidade de documento CPF.

Utilizado componentes Indy ára comunicação Http com api viacep para a consulta dos cep informado com auto preenchimento dos campos
em retorno JSON.

Utilizado componente ACBrMail para o envio dos registro via e-mail, em anexo um arquivo xml contendo todos os registro efetuados.

Criado arquivo ini de apoio a parametrização dinâmica do servidor smtp.
