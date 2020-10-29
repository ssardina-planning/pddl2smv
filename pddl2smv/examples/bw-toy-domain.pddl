(define (domain blocks)
  (:requirements :typing)
  (:types block)
  (:predicates (ontable ?x - block) (holding ?x - block))
  (:action pick-up
    :parameters (?x - block)
    :precondition (ontable ?x)
    :effect (and (not (ontable ?x)) (holding ?x))
  )
  (:action put-down
    :parameters (?x - block)
    :precondition (holding ?x)
    :effect (and (not (holding ?x)) (ontable ?x))
  )
)
