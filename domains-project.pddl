(define (domain VenBra)
    (:predicates
        (adj ?spot-1 ?spot-2)
        (have-space ?spot)
        (is-there ?who ?)
        (is-here ?who)
        (is-there-bike ?which)
        (is-person ?who)


    )

    (:action take-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (adj ?from ?to)
                (is-person ?who)

                (is-there-bike ?which)
                (not (is-here ?who))
                )
        :effect (and (not is-there-bike ?which)
                ()
                )
    )

    (:action let-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (adj ?to ?from)
                (have-space ?from)

                )
        :effect (and (is-there-bike ?which))
    )

    (:action wait-five
        :parameters (?who ?from)
        :precondition (and (is-spot ?from)
                )
        :effect ()
    )

    (:action walk
        :parameters (?who ?from ?tourism)
        :precondition (and (is-spot ?from)
                (prox ?from ?tourism)
                ()
                )
        :effect ()
    )

    (:action visit
        :parameters (?who ?from ?tourism)
        :precondition (and (is-spot ?from)
                (prox ?from ?tourism)
                ()
                )
        :effect ()
    )

    (:action ride
        :parameters (?who ?from ?to)
        :precondition (and (is-spot ?from)
                (adj ?from ?to)
                ()
                )
        :effect ()
            
    )
)
