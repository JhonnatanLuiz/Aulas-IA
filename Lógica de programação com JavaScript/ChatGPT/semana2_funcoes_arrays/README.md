# Semana 2 — Funções e Arrays (PT/EN)

Este diretório contém exercícios e exemplos focados em funções JavaScript, arrays e métodos comuns de manipulação de listas.

This folder contains exercises and examples focused on JavaScript functions, arrays, and common list manipulation methods.

## Conteúdo (PT)

- Declaração de funções (function, arrow, function expression)
- Parâmetros e retorno; valores padrão; rest/spread
- Escopo e closures; pureza e efeitos colaterais
- Arrays: criação, imutabilidade vs mutabilidade
- Métodos de array: push/pop/shift/unshift, slice/splice
- Iteração: for, for...of, forEach
- Transformações: map, filter, reduce, flatMap
- Busca e checagens: find, findIndex, some, every, includes
- Ordenação e agrupamento: sort, localeCompare, groupBy (polyfill/alternativas)
- Dicas de performance e legibilidade

## Content (EN)

- Function declarations (function, arrow, function expression)
- Parameters and return; default values; rest/spread
- Scope and closures; purity and side effects
- Arrays: creation, immutability vs mutability
- Array methods: push/pop/shift/unshift, slice/splice
- Iteration: for, for...of, forEach
- Transformations: map, filter, reduce, flatMap
- Search and checks: find, findIndex, some, every, includes
- Sorting and grouping: sort, localeCompare, groupBy (polyfill/alternatives)
- Performance and readability tips

## Como usar (PT)

- Abra os arquivos .js/.html desta semana no navegador ou com Node.js.
- Leia os comentários com instruções e objetivos de cada exercício.
- Tente resolver primeiro; depois confira as soluções (se houver) e compare abordagens.
- Dê preferência a métodos imutáveis (map/filter/reduce) quando fizer sentido.

## How to use (EN)

- Open this week's .js/.html files in your browser or with Node.js.
- Read the comments for instructions and goals of each exercise.
- Try solving first; then check solutions (if provided) and compare approaches.
- Prefer immutable methods (map/filter/reduce) when it makes sense.

## Exemplos rápidos (PT/EN)

```js
// Soma de pares com filter + reduce / Sum of even numbers with filter + reduce
const nums = [1,2,3,4,5,6];
const sumEven = nums.filter(n => n % 2 === 0).reduce((acc, n) => acc + n, 0);
console.log(sumEven); // 12

// Contagem de ocorrências / Counting occurrences
const words = ['js','css','js','html','css','js'];
const counts = words.reduce((acc,w) => (acc[w] = (acc[w]||0)+1, acc), {});
console.log(counts); // { js: 3, css: 2, html: 1 }

// Agrupar por chave / Group by key (simple)
function groupBy(arr, keyFn) {
  return arr.reduce((acc, item) => {
    const k = keyFn(item);
    (acc[k] ||= []).push(item);
    return acc;
  }, {});
}
```

## Boas práticas (PT)

- Nomeie funções de forma clara e objetiva.
- Escreva funções pequenas e reutilizáveis.
- Evite mutar arrays/objetos recebidos; retorne novos valores quando possível.
- Teste casos de borda: arrays vazios, undefined/null, tipos inesperados.

## Best practices (EN)

- Use clear, intention-revealing function names.
- Prefer small, reusable functions.
- Avoid mutating input arrays/objects; return new values when possible.
- Test edge cases: empty arrays, undefined/null, unexpected types.

## Próximos passos (PT/EN)

- Adicionar exercícios com enunciado e solução guiada.
- Incluir testes rápidos (ex.: via console ou pequenos asserts).
- Expandir exemplos com dados reais (ex.: lista de produtos, notas de alunos).

Contribuições são bem-vindas. / Contributions are welcome.