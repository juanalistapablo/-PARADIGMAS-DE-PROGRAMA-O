# Trabalho de Paradigmas de Programação – Prolog

**Universidade Federal do Maranhão (UFMA)**  
**Centro de Ciências Exatas e Tecnologia**  
**Bacharelado Interdisciplinar em Ciência e Tecnologia**  
**Disciplina: Paradigmas de Programação**  
**Tema: Lógica e Representação de Conhecimento com Prolog**

---

## 📋 Descrição

Este trabalho consiste na criação de uma **base de conhecimento em Prolog** contendo informações sobre filmes, seguida de regras para inferência sobre:

- Filmes clássicos (lançados até 1985)
- Filmes longos (mais de 150 minutos)
- Lançamentos (menos de 1 ano desde o ano atual)

---

## 📁 Estrutura do Código

Arquivo principal: `filmes.pl`

Contém:
- Fatos com base nos dados fornecidos.
- Regras `classico/2`, `longo/1` e `lancamento/2`.

---

## ▶️ Como Usar

### ✅ Pré-requisitos

- Instale o [SWI-Prolog](https://www.swi-prolog.org/) (recomendado):
  - Windows: Executável disponível no site oficial.
  - Linux: `sudo apt install swi-prolog`
  - Mac: `brew install swi-prolog`

### 🧪 Executar o Código

1. **Abra o terminal** ou o **ambiente gráfico do SWI-Prolog**.
2. Navegue até a pasta onde está o arquivo `filmes.pl`.
3. Carregue o programa:

```prolog
?- [filmes].
```
4. Teste as regras com:

```prolog
?- classico(Titulo, Ano).
?- longo(Titulo).
?- lancamento(Titulo, Ano).
```

