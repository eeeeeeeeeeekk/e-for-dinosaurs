/* set set_prolog_flag(unknown, fail). */

/* Running:
* 1. Run with `gprolog`
* 2. `[prolog].`
* 3. `main.`
* 4. enter you number
*/

main_loop(Total, N, 0) :- 
    end_main(Total, N).

main_loop(Total, N, X) :-
    Y is X - 1,
    Temp is 0,
    while_loop(Total, N, Y, Temp).

while_loop(Total, N, Y, Temp) :-
    (  Temp > 10000
    -> main_loop(Total, N, Y)
    ;  random(0, 10000, X),
        Temp is X + Temp,
        Total is Total + 1,
        while_loop(Total, N, Y, Temp)
    ).

main :- 
    write('Number of iterations: '),
    read(X),
    Total is 0,
    main_loop(Total, X, X).

end_main(Total, X) :-
    write('e = '),
    E is Total / X,
    write(E), nl.
