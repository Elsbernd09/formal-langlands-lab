namespace FormalLanglandsLab
namespace Cohomology

structure CohomologyGroupPrototype where
  degree : Nat
  rank : Nat
  invariant : Nat → Nat

def toyCohomologyGroup : CohomologyGroupPrototype where
  degree := 1
  rank := 2
  invariant := fun n => n + 1

def cohomologyInvariant
    (H : CohomologyGroupPrototype)
    (n : Nat) : Nat :=
  H.invariant n

def sameCohomologyInvariants
    (H K : CohomologyGroupPrototype) : Prop :=
  ∀ n : Nat, H.invariant n = K.invariant n

theorem toyCohomology_degree :
    toyCohomologyGroup.degree = 1 := by
  rfl

theorem toyCohomology_rank :
    toyCohomologyGroup.rank = 2 := by
  rfl

theorem toyCohomology_invariant_two :
    cohomologyInvariant toyCohomologyGroup 2 = 3 := by
  rfl

theorem sameCohomologyInvariants_refl
    (H : CohomologyGroupPrototype) :
    sameCohomologyInvariants H H := by
  intro n
  rfl

end Cohomology
end FormalLanglandsLab
