(define (domain VenBra)
    (:predicates
        (adj ?spot-1 ?spot-2)
        (have-space ?spot)
        (at ?who ?spot)
        (is-there-bike ?spot ?bike)
        (is-person ?who)
        (is-bike ?bike) 
        (prox ?spot ?tourism)
        (is-tourism ?tourism)
        (wait5 ?who)
        (with-bike ?who)
        (timeout ?who)
        (with-money ?who)
        (passed-here ?who ?tourism)
        (bank ?tourism)
        (is-spot ?spot)
        (passed-here-together ?who-1 ?who-2 ?tourism)

    )

    (:action take-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (is-person ?who)
                (is-there-bike ?from ?which)
                (at ?who ?from)
                (not (with-bike ?who))
                )
        :effect (and (not (is-there-bike ?from ?which))
                (with-bike ?who)
                )
    )

    (:action let-bike
        :parameters (?who ?from ?which)
        :precondition (and (is-spot ?from)
                (have-space ?from)
                (at ?who ?from)
                (with-bike ?who)
                )
        :effect (and (is-there-bike ?from ?which)
                (not (with-bike ?who))
                (timeout ?who)
                )
    )

    (:action wait-five
        :parameters (?who ?from)
        :precondition (and (is-spot ?from)
                (at ?who ?from)
                (not (with-bike ?who))
                (is-person ?who)
                (wait5 ?who)
                )
        :effect (and (not (wait5 ?who))
                (not (timeout ?who))
                )
    )

    (:action walk
        :parameters (?who ?from ?tourism)
        :precondition (and (is-spot ?from)
                (prox ?from ?tourism)
                (not (with-bike ?who))
                (at ?who ?from)
                )
        :effect (and (at ?who ?tourism)
                (not (timeout ?who))
                )
    )

    (:action visit
        :parameters (?who ?from ?tourism)
        :precondition (and (is-spot ?from)
                (prox ?from ?tourism)
                (at ?who ?from)
                )
        :effect (and (not (timeout ?who))
                (passed-here ?who ?tourism)
                )
    )
    (:action visit-together
        :parameters (?who-1 ?who-2 ?from ?tourism)
        :precondition (and (is-spot ?from)
                (prox ?from ?tourism)
                (at ?who-1 ?from)
                (at ?who-2 ?from)
                )
        :effect (and (not (timeout ?who-1))(not (timeout ?who-2))
                (passed-here-together ?who-1 ?who-2 ?tourism)
                )
    )

    (:action money
        :parameters (?who ?from ?tourism)
        :precondition (and (bank ?tourism)
                (prox ?from ?tourism)
                (at ?who ?from)
                
                )
        :effect (and (not (timeout ?who))
                (passed-here ?who ?tourism)
                (with-money ?who)
                )
    )

    (:action ride
        :parameters (?who ?from ?to ?which)
        :precondition (and (is-spot ?from)
                (adj ?from ?to)
                (with-bike ?who)
                (at ?who ?from)
                (is-person ?who)
                )
        :effect (and (not (wait5 ?who))
                (not (at ?who ?from))
                (timeout ?who)
                )
            
    )
)
