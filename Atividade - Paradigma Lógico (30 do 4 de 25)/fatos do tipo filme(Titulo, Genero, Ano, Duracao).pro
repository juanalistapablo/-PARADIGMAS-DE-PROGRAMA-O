% Fatos sobre filmes
filme('E o vento levou', drama, 1939, 233).
filme('A noviça rebelde', romance, 1965, 174).
filme('Casablanca', drama, 1942, 171).
filme('O silencio dos inocentes', suspense, 1991, 118).
filme('O auto da compadecida', comedia, 2000, 95).
filme('Duna', romance, 2021, 155).
filme('Ataque dos Caes', drama, 2021, 125).
filme('Top Gun: Maverick', acao, 2022, 131).

%A regra classico/2 seleciona apenas os filmes com ano menor ou igual a 1985.
classico(Titulo, Ano) :-
    filme(Titulo, _, Ano, _),
    Ano =< 1985.

%Regra para filmes longos (duração > 150 min)
longo(Titulo) :-
    filme(Titulo, _, _, Duracao),
    Duracao > 150.

%Regra para lançamentos (menos de 1 ano de lançamento)
lancamento(Titulo, Ano) :-
    filme(Titulo, _, Ano, _),
    get_time(TempoAtual),
    stamp_date_time(TempoAtual, Data, 'UTC'),
    date_time_value(year, Data, AnoAtual),
    AnoAtual - Ano < 1.
