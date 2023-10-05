# GAME LOOP
O "game loop" (laço de jogo) é uma estrutura fundamental em muitos jogos que controla a lógica do jogo e atualiza o estado do jogo em um loop contínuo. Ele garante que o jogo seja atualizado em intervalos regulares, geralmente chamados de "quadros" (frames), para que o jogo seja executado suavemente e responda às ações do jogador em tempo real.

Aqui está uma descrição geral de como um game loop funciona:

1. **Inicialização:**
   - O jogo é inicializado, incluindo a criação de personagens, cenários, configurações iniciais e a alocação de recursos.

2. **Laço Principal (Game Loop):**
   - O game loop é iniciado e começa a ser executado continuamente durante a execução do jogo.
   - O loop principal consiste em três partes principais: processamento de eventos, atualização do estado do jogo e renderização.
   
3. **Processamento de Eventos:**
   - Nesta etapa, eventos são verificados e processados. Isso inclui eventos de entrada do jogador, como pressionar teclas, cliques do mouse, toques na tela, etc.
   - Os eventos podem incluir ações do jogador, eventos de colisão, eventos de temporização, etc.
   
4. **Atualização do Estado do Jogo:**
   - Com base nos eventos processados e no tempo decorrido desde o último quadro, o estado do jogo é atualizado.
   - Isso envolve calcular novas posições de personagens, atualizar a física do jogo, verificar condições de vitória ou derrota e assim por diante.
   
5. **Renderização:**
   - Após a atualização do estado do jogo, o quadro atual é renderizado na tela. Isso envolve desenhar personagens, cenários, elementos da interface do usuário, etc.
   - A renderização geralmente é feita a uma taxa fixa, independentemente da taxa de atualização do estado do jogo. Isso permite que o jogo seja executado suavemente em diferentes sistemas.

6. **Espera (Ajuste de Tempo):**
   - Após renderizar o quadro atual, o loop aguarda um curto período de tempo para garantir que o jogo seja executado a uma taxa constante. Isso é importante para evitar que o jogo seja muito rápido em sistemas mais potentes.

7. **Repetição do Loop:**
   - O loop continua a ser executado, repetindo o processamento de eventos, atualização do estado e renderização para cada quadro.

8. **Fim do Jogo:**
   - O loop pode ser encerrado quando certas condições forem atendidas, como um jogador ganhar ou perder o jogo.

9. **Finalização:**
   - Após o fim do jogo, recursos são liberados e qualquer limpeza necessária é realizada.

O game loop é um componente crítico em muitos jogos, pois permite que o jogo responda às ações do jogador e mantenha uma taxa de quadros consistente. A eficiência e a otimização do game loop são essenciais para garantir que o jogo seja executado de forma suave em diferentes sistemas e dispositivos.