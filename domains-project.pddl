(define (domain VenBra)
    (:predicates
    )

    (:action take-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (adj ?from ?to)
                ())
    )

    (:action let-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (adj ?to ?from)
                ()
                )
    )

    (:action wait-five
        :parameters (?who ?from)
        :precondition (and (is-spot ?from)
        )
    )

    (:action walk
        :parameters (?who ?from ?tourism)
        :precondition (and (is-spot ?from)
            (prox ?from ?tourism)
            ())
    )
    (:action visit
        :parameters (?who ?from ?tourism)
        :precondition (and (is-spot ?from)
            (prox ?from ?tourism)
            ())
        :effect ()
    )
    (:action ride
        :parameters (?who ?from ?tourism)
        :precondition (and (is-spot ?from)
            (prox ?from ?tourism)
            ())
        :effect()
            
    )
)