(define (domain VenBra)
    (:predicates
        (adj ?spot-1 ?spot-2)
        (have-space ?spot)
        (at ?who ?spot)
        (is-there-bike ?spot)
        (is-person ?who)
        (is-bike ?bike) 
        (prox ?spot ?tourism)
        (is-tourism ?tourism)

    )

    (:action take-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (adj ?from ?to)
                (is-person ?who)
                (is-there-bike ?which)
                (not (at ?who ?from))
                )
        :effect (and )
                ()
                )
    )

    (:action let-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (adj ?to ?from)
                (have-space ?from)
                (at ?who ?from)
                )
        :effect (and (is-there-bike ?spot)
                )
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
