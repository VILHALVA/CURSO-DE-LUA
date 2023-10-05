# BOUNCE E DEBOUNCE
"Bounce" e "debounce" são dois conceitos relacionados à detecção e tratamento de eventos em sistemas eletrônicos e programação. Eles são frequentemente usados para lidar com entrada de hardware, como botões, interruptores, e eventos de usuário em interfaces de software. Vamos entender o significado de cada um deles:

**1. Bounce (Rebote):**

O "bounce" ocorre quando um interruptor ou botão físico é pressionado ou liberado, e os contatos elétricos fazem contato ou se separam rapidamente várias vezes antes de finalmente se estabilizarem. Isso é causado por imperfeições físicas nos contatos do interruptor e pode resultar em múltiplos pulsos elétricos, ou seja, vários eventos de pressionar ou liberar, mesmo que o usuário tenha realizado apenas uma ação.

**Exemplo:**
Imagine um botão de teclado que é pressionado fisicamente. Quando o botão é pressionado, os contatos podem tocar e se separar várias vezes antes de estabilizarem, gerando múltiplos eventos de pressionar e liberar em um curto período de tempo.

**2. Debounce (Debouce ou Eliminação de Rebote):**

O "debounce" é o processo de filtragem ou suavização dos múltiplos eventos gerados pelo "bounce" para evitar que esses eventos falsos causem problemas indesejados em sistemas eletrônicos ou de software. É um método para garantir que apenas uma ação válida (pressionar ou liberar) seja registrada, mesmo que haja rebote físico.

**Exemplo:**
Em um sistema de controle de jogos, ao pressionar um botão, você deseja que apenas uma ação de "pressão" seja registrada, mesmo que haja rebote físico do botão. Para fazer isso, você pode implementar uma lógica de "debounce" para ignorar eventos de pressionar adicionais até que o botão se estabilize.

**Implementação em Programação:**

Em programação, você pode implementar o debounce para lidar com eventos de entrada de usuário que podem gerar múltiplas chamadas de função indesejadas. Para fazer isso, você pode definir um período de "tempo morto" após o primeiro evento, durante o qual eventos adicionais são ignorados.

Por exemplo, em JavaScript, você pode usar `setTimeout` para implementar o debounce:

```javascript
function debounce(func, delay) {
    let timeoutId;
    return function() {
        clearTimeout(timeoutId);
        timeoutId = setTimeout(func, delay);
    };
}

const myFunction = () => {
    // Lógica a ser executada após o debounce
};

const debouncedFunction = debounce(myFunction, 300); // Debounce com um atraso de 300 milissegundos

// Use debouncedFunction como um manipulador de eventos, por exemplo, em um clique de botão
```

No exemplo acima, `debounce` é usado para criar uma função `debouncedFunction` que só chamará `myFunction` após um período de 300 milissegundos sem eventos. Isso evita a chamada excessiva de `myFunction` durante o rebote de eventos de clique, por exemplo.