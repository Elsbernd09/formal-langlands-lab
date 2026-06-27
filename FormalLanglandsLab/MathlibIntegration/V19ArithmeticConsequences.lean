import FormalLanglandsLab.MathlibIntegration.V18FinsetEqualityTwelve

namespace FormalLanglandsLab
namespace MathlibIntegration

def v19EqualityConsequencesSix : Prop :=
  v6DivisorFinset 6 = v10ExpectedDivisorsSix ∧
  (∀ d : Nat, d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix)

def v19EqualityConsequencesTwelve : Prop :=
  v6DivisorFinset 12 = v10ExpectedDivisorsTwelve ∧
  (∀ d : Nat, d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve)

theorem v19_equality_consequences_six :
    v19EqualityConsequencesSix := by
  exact ⟨
    v16_finset_equality_six,
    v15_universal_membership_agreement_six
  ⟩

theorem v19_equality_consequences_twelve :
    v19EqualityConsequencesTwelve := by
  exact ⟨
    v18_finset_equality_twelve,
    v17_universal_membership_agreement_twelve
  ⟩

theorem v19_six_card_transfer :
    (v6DivisorFinset 6).card = v10ExpectedDivisorsSix.card := by
  rw [v16_finset_equality_six]

theorem v19_twelve_card_transfer :
    (v6DivisorFinset 12).card = v10ExpectedDivisorsTwelve.card := by
  rw [v18_finset_equality_twelve]

theorem v19_six_sum_transfer :
    (v6DivisorFinset 6).sum (fun d => d) =
      v10ExpectedDivisorsSix.sum (fun d => d) := by
  rw [v16_finset_equality_six]

theorem v19_twelve_sum_transfer :
    (v6DivisorFinset 12).sum (fun d => d) =
      v10ExpectedDivisorsTwelve.sum (fun d => d) := by
  rw [v18_finset_equality_twelve]

theorem v19_six_square_sum_transfer :
    (v6DivisorFinset 6).sum (fun d => d * d) =
      v10ExpectedDivisorsSix.sum (fun d => d * d) := by
  rw [v16_finset_equality_six]

theorem v19_twelve_square_sum_transfer :
    (v6DivisorFinset 12).sum (fun d => d * d) =
      v10ExpectedDivisorsTwelve.sum (fun d => d * d) := by
  rw [v18_finset_equality_twelve]

def v19ArithmeticTransferPackageSix : Prop :=
  (v6DivisorFinset 6).card = v10ExpectedDivisorsSix.card ∧
  (v6DivisorFinset 6).sum (fun d => d) =
      v10ExpectedDivisorsSix.sum (fun d => d) ∧
  (v6DivisorFinset 6).sum (fun d => d * d) =
      v10ExpectedDivisorsSix.sum (fun d => d * d)

def v19ArithmeticTransferPackageTwelve : Prop :=
  (v6DivisorFinset 12).card = v10ExpectedDivisorsTwelve.card ∧
  (v6DivisorFinset 12).sum (fun d => d) =
      v10ExpectedDivisorsTwelve.sum (fun d => d) ∧
  (v6DivisorFinset 12).sum (fun d => d * d) =
      v10ExpectedDivisorsTwelve.sum (fun d => d * d)

theorem v19_arithmetic_transfer_package_six :
    v19ArithmeticTransferPackageSix := by
  exact ⟨
    v19_six_card_transfer,
    v19_six_sum_transfer,
    v19_six_square_sum_transfer
  ⟩

theorem v19_arithmetic_transfer_package_twelve :
    v19ArithmeticTransferPackageTwelve := by
  exact ⟨
    v19_twelve_card_transfer,
    v19_twelve_sum_transfer,
    v19_twelve_square_sum_transfer
  ⟩

def v19ArithmeticConsequencesPackage : Prop :=
  v19EqualityConsequencesSix ∧
  v19EqualityConsequencesTwelve ∧
  v19ArithmeticTransferPackageSix ∧
  v19ArithmeticTransferPackageTwelve

theorem v19_arithmetic_consequences_package :
    v19ArithmeticConsequencesPackage := by
  exact ⟨
    v19_equality_consequences_six,
    v19_equality_consequences_twelve,
    v19_arithmetic_transfer_package_six,
    v19_arithmetic_transfer_package_twelve
  ⟩

theorem v19_arithmetic_consequences_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
