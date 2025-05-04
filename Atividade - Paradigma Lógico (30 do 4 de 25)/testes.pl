:- [filmes].

testar :-
    writeln('== Testes de classico/2 =='),

    (classico('Casablanca', 1942) ->
        writeln('[OK] Casablanca é clássico (1942)');
        writeln('[ERRO] Casablanca deveria ser clássico')
    ),

    (classico('E o vento levou', 1939) ->
        writeln('[OK] E o vento levou é clássico (1939)');
        writeln('[ERRO] E o vento levou deveria ser clássico')
    ),

    (\+ classico('Duna', _) ->
        writeln('[OK] Duna NÃO é clássico');
        writeln('[ERRO] Duna NÃO deveria ser clássico')
    ),

    writeln('\n== Testes de longo/1 =='),

    (longo('E o vento levou') ->
        writeln('[OK] E o vento levou é longo');
        writeln('[ERRO] E o vento levou deveria ser longo')
    ),

    (longo('Duna') ->
        writeln('[OK] Duna é longa');
        writeln('[ERRO] Duna deveria ser longa')
    ),

    (\+ longo('O auto da compadecida') ->
        writeln('[OK] O auto da compadecida NÃO é longo');
        writeln('[ERRO] O auto da compadecida NÃO deveria ser longo')
    ),

    writeln('\n== Testes de lancamento/2 =='),

    lancamento_teste.

% Subteste separado porque get_time precisa ser executado dinamicamente
lancamento_teste :-
    filme(Titulo, _, Ano, _),
    get_time(TempoAtual),
    stamp_date_time(TempoAtual, Data, 'UTC'),
    date_time_value(year, Data, AnoAtual),
    Diferenca is AnoAtual - Ano,
    (Diferenca < 1 ->
        (lancamento(Titulo, Ano) ->
            format('[OK] ~w é lançamento (~w)\n', [Titulo, Ano]) ;
            format('[ERRO] ~w deveria ser lançamento (~w)\n', [Titulo, Ano])
        ) ;
        (\+ lancamento(Titulo, Ano) ->
            true ;
            format('[ERRO] ~w NÃO deveria ser lançamento (~w)\n', [Titulo, Ano])
        )
    ),
    fail. % força backtracking para testar todos
lancamento_teste. % termina sem erro

✅ Saída Esperada (exemplo)

== Testes de classico/2 ==
[OK] Casablanca é clássico (1942)
[OK] E o vento levou é clássico (1939)
[OK] Duna NÃO é clássico

== Testes de longo/1 ==
[OK] E o vento levou é longo
[OK] Duna é longa
[OK] O auto da compadecida NÃO é longo

== Testes de lancamento/2 ==
[OK] Top Gun: Maverick é lançamento (2022)      % Se o ano atual for 2023
