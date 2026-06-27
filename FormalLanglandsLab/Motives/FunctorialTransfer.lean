import FormalLanglandsLab.Motives.MotiveMorphisms

namespace FormalLanglandsLab
namespace Motives

def transferredMotive
    (M : MotivePrototype)
    (newName : String)
    (newWeight : Nat) : MotivePrototype where
  name := newName
  weight := newWeight
  rank := M.rank
  coefficient := fun n => M.coefficient n

def transferMorphism
    (M : MotivePrototype)
    (newName : String)
    (newWeight : Nat) : MotiveMorphism where
  source := M
  target := transferredMotive M newName newWeight
  preservesCoefficients := by
    intro n
    rfl

theorem transferredMotive_preserves_coefficients
    (M : MotivePrototype)
    (newName : String)
    (newWeight : Nat)
    (n : Nat) :
    (transferredMotive M newName newWeight).coefficient n =
      M.coefficient n := by
  rfl

theorem transferMorphism_LSeries_agreement
    (M : MotivePrototype)
    (newName : String)
    (newWeight : Nat) :
    FormalLanglandsLab.LFunctions.coeffAgreement
      (motiveLSeries M)
      (motiveLSeries (transferredMotive M newName newWeight)) := by
  intro n
  rfl

theorem toyMotive_transfer_coeff_two :
    (transferredMotive toyMotive "Transferred toy motive" 2).coefficient 2 = 3 := by
  rfl

end Motives
end FormalLanglandsLab
