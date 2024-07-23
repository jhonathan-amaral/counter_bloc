## Gerenciamento de Estado em Flutter: BLoC vs. Cubit
 Projeto: Contador 

### O que é BLoC?
O BLoC (Business Logic Component) é um padrão de design que separa a lógica de negócios da interface do usuário em aplicativos Flutter. Ele utiliza eventos e estados para gerenciar a interação do usuário e a lógica de negócios, promovendo boas práticas como a imutabilidade e facilitando a testabilidade do código.

### O que é Cubit?

O Cubit é uma versão simplificada do BLoC que elimina a necessidade de eventos. Em vez de usar eventos para emitir estados, o Cubit permite que os desenvolvedores chamem métodos diretamente para emitir novos estados, reduzindo a complexidade e a quantidade de código necessário. Ambos, Cubit e BLoC, são interoperáveis, pois o BLoC é uma extensão do Cubit.

### Diferenças entre BLoC e Cubit:

Estrutura: O BLoC é baseado em eventos e requer a definição de classes de eventos, enquanto o Cubit utiliza métodos diretos para emitir estados.
Complexidade: O Cubit é mais fácil de usar e entender, tornando-o ideal para casos de uso simples, enquanto o BLoC é mais adequado para aplicações que exigem uma lógica de negócios mais complexa.

### Implementação:

Para usar o Cubit, você precisa adicionar as dependências bloc e flutter_bloc no arquivo pubspec.yaml. A implementação envolve a criação de uma classe Cubit que gerencia o estado e métodos para alterar esse estado.
Esses pontos destacam as principais características e diferenças entre BLoC e Cubit, permitindo que os desenvolvedores escolham a abordagem mais adequada para suas necessidades de gerenciamento de estado em Flutter.