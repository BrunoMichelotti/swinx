# Programas necessarios para emular o projeto.

- Xcode versão -> 12
- Swift versão -> 5.0
- Cocoapods versão -> 1.10.1
- MacOs versao -> Catalina 
- IOS do Iphone emulado versao minima -> 13.2

# Passos para clonar e visualizar o projeto.
 Clone o projeto em seu Mac.
 Vá pasta onde se encontra o arquivo Swinx.xcodeproj.
 Execute atravéz do seu terminal o comando pod install e abra o aquivo Swinx.xcworkspace.

# Objetivo do nosso projeto.

  A ideia do aplicativo surgiu da necessidade de unificar em uma plataforma as informações e contatos de todos os funcionários da everis e seus respectivos cargos e a quem se reportam. Identificando de forma rápida e precisa as informações e os funcionários envolvidos filtrados desde Rts à Squads e de Lideres à funcionários. Tornando mais fácil a comunicação e a identificação de seu papel e responsabilidade junto a everis e o cliente.

 # Protótipo
 
  Como primeira versão do protótipo, foi desenvolvido uma Home que possui atalhos relevantes. Focando mais na necessidade dos gestores conseguirem encontrar as Rts e suas respectivas squads com os propósitos e sua tríade, assim como as informações dos funcionários everis alocados.
  
# Ideias para próximas features

- Integrar a uma base de dados unica de fácil alimentação.
- Integrar com esteiras e aumentar a cobertura de testes.
- Implementar um Login:
  - Push notifications relevantes, como por exemplo, aniversário day off do funcionário.
  - Personalizar os atalhos de acordo com o cargo do funcionário.
  - Adicionar deeplinks, facilitando o contato com os funcionários, sendo individual ou por squads.
- Banner de notificações importantes na Home. 
- Aumentar o número de atalhos da home de acordo com a necessidade.

# Considerações finais

- O prototipo foi criado com a arquitetura MVVM, com layout flexível e componentes, para evitar repetição de código.
- Atualmente o projeto não possui nenhuma dependência mas está preparado para caso houver necessidade de importar bibliotecas externas.

