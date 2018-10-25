(define (problem turismo)
  (:domain turismo)
  (:objects  igreja Bike-16 praca Bike-15 Bike-07 alfandega Bike-05-Alf banco Bike-05-Cais mercado Bike-19
        bike-1 bike-2 bike-3 bike-5 bike-6 bike-7 bike-8
	    joao jose maria
        )
  (:init (adj Bike-15 Bike-05-Cais) (adj Bike-05-Cais Bike-15)
	 (adj Bike-16 Bike-07) (adj Bike-07 Bike-16)
	 (adj Bike-16 Bike-19) (adj Bike-19 Bike-16)
	 (adj Bike-15 Bike-16) (adj Bike-16 Bike-15)
	 (adj Bike-05-Alf Bike-05-Cais) (adj Bike-05-Cais Bike-05-Alf)
	 (adj Bike-07 Bike-05-Alf) (adj Bike-05-Alf Bike-07)
	 
	 (pit sq-1-2)
	 (is-person joao) (at joao Bike-16)
	 (is-person jose) (at jose Bike-05-Cais)
     (is-person maria) (at maria Bike-05-Alf)
	 (is-arrow the-arrow)
	 (have agent the-arrow)
	 (is-wumpus wumpus)
	 (at wumpus sq-2-3)
	 (wumpus-in sq-2-3))
  (:goal (and (have jose the-gold) (at agent sq-1-1)))
  )