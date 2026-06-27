import FormalLanglandsLab.MathlibIntegration.FinsetDivisorSumTables

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.NumberTheory

def finsetListDivisorCountAgreement
    (n : Nat) : Prop :=
  mathlibDivisorFinsetCard n = mathlibDivisorCountFromList n

def finsetListDivisorSumAgreement
    (n : Nat) : Prop :=
  mathlibDivisorFinsetSum n = mathlibSumOfDivisorsFromList n

def finsetSquareSumVerifiedAgreement
    (n : Nat) : Prop :=
  mathlibDivisorFinsetSquareSum n = squareDivisorSumFunction n

theorem countAgreement_one :
    finsetListDivisorCountAgreement 1 := by
  rfl

theorem countAgreement_two :
    finsetListDivisorCountAgreement 2 := by
  rfl

theorem countAgreement_three :
    finsetListDivisorCountAgreement 3 := by
  rfl

theorem countAgreement_four :
    finsetListDivisorCountAgreement 4 := by
  rfl

theorem countAgreement_five :
    finsetListDivisorCountAgreement 5 := by
  rfl

theorem countAgreement_six :
    finsetListDivisorCountAgreement 6 := by
  rfl

theorem countAgreement_twelve :
    finsetListDivisorCountAgreement 12 := by
  rfl

theorem sumAgreement_one :
    finsetListDivisorSumAgreement 1 := by
  rfl

theorem sumAgreement_two :
    finsetListDivisorSumAgreement 2 := by
  rfl

theorem sumAgreement_three :
    finsetListDivisorSumAgreement 3 := by
  rfl

theorem sumAgreement_four :
    finsetListDivisorSumAgreement 4 := by
  rfl

theorem sumAgreement_five :
    finsetListDivisorSumAgreement 5 := by
  rfl

theorem sumAgreement_six :
    finsetListDivisorSumAgreement 6 := by
  rfl

theorem sumAgreement_twelve :
    finsetListDivisorSumAgreement 12 := by
  rfl

theorem squareAgreement_one :
    finsetSquareSumVerifiedAgreement 1 := by
  rfl

theorem squareAgreement_two :
    finsetSquareSumVerifiedAgreement 2 := by
  rfl

theorem squareAgreement_three :
    finsetSquareSumVerifiedAgreement 3 := by
  rfl

theorem squareAgreement_four :
    finsetSquareSumVerifiedAgreement 4 := by
  rfl

theorem squareAgreement_five :
    finsetSquareSumVerifiedAgreement 5 := by
  rfl

theorem squareAgreement_six :
    finsetSquareSumVerifiedAgreement 6 := by
  rfl

theorem squareAgreement_twelve :
    finsetSquareSumVerifiedAgreement 12 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
