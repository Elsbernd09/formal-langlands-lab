import FormalLanglandsLab.MathlibIntegration.V19ArithmeticConsequences

namespace FormalLanglandsLab
namespace MathlibIntegration

def v20ExactDivisorClassificationSix : Prop :=
  ∀ d : Nat,
    d ∈ v6DivisorFinset 6 ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 6

def v20ExactDivisorClassificationTwelve : Prop :=
  ∀ d : Nat,
    d ∈ v6DivisorFinset 12 ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 4 ∨ d = 6 ∨ d = 12

theorem v20_expected_six_exact_classification
    (d : Nat) :
    d ∈ v10ExpectedDivisorsSix ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 6 := by
  simp [v10ExpectedDivisorsSix]

theorem v20_expected_twelve_exact_classification
    (d : Nat) :
    d ∈ v10ExpectedDivisorsTwelve ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 4 ∨ d = 6 ∨ d = 12 := by
  simp [v10ExpectedDivisorsTwelve]

theorem v20_actual_six_exact_classification
    (d : Nat) :
    d ∈ v6DivisorFinset 6 ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 6 := by
  have h₁ : d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix :=
    v15_universal_membership_agreement_six d
  have h₂ : d ∈ v10ExpectedDivisorsSix ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 6 :=
    v20_expected_six_exact_classification d
  exact Iff.trans h₁ h₂

theorem v20_actual_twelve_exact_classification
    (d : Nat) :
    d ∈ v6DivisorFinset 12 ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 4 ∨ d = 6 ∨ d = 12 := by
  have h₁ : d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve :=
    v17_universal_membership_agreement_twelve d
  have h₂ : d ∈ v10ExpectedDivisorsTwelve ↔
      d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 4 ∨ d = 6 ∨ d = 12 :=
    v20_expected_twelve_exact_classification d
  exact Iff.trans h₁ h₂

theorem v20_exact_divisor_classification_six :
    v20ExactDivisorClassificationSix := by
  intro d
  exact v20_actual_six_exact_classification d

theorem v20_exact_divisor_classification_twelve :
    v20ExactDivisorClassificationTwelve := by
  intro d
  exact v20_actual_twelve_exact_classification d

theorem v20_six_two_classifies :
    2 ∈ v6DivisorFinset 6 := by
  exact (v20_actual_six_exact_classification 2).mpr
    (Or.inr (Or.inl rfl))

theorem v20_six_five_not_classifies :
    5 ∉ v6DivisorFinset 6 := by
  intro h
  have hc := (v20_actual_six_exact_classification 5).mp h
  rcases hc with h1 | h2 | h3 | h6
  · contradiction
  · contradiction
  · contradiction
  · contradiction

theorem v20_twelve_four_classifies :
    4 ∈ v6DivisorFinset 12 := by
  exact (v20_actual_twelve_exact_classification 4).mpr
    (Or.inr (Or.inr (Or.inr (Or.inl rfl))))

theorem v20_twelve_eleven_not_classifies :
    11 ∉ v6DivisorFinset 12 := by
  intro h
  have hc := (v20_actual_twelve_exact_classification 11).mp h
  rcases hc with h1 | h2 | h3 | h4 | h6 | h12
  · contradiction
  · contradiction
  · contradiction
  · contradiction
  · contradiction
  · contradiction

def v20ExactClassificationPackage : Prop :=
  v20ExactDivisorClassificationSix ∧
  v20ExactDivisorClassificationTwelve ∧
  2 ∈ v6DivisorFinset 6 ∧
  5 ∉ v6DivisorFinset 6 ∧
  4 ∈ v6DivisorFinset 12 ∧
  11 ∉ v6DivisorFinset 12

theorem v20_exact_classification_package :
    v20ExactClassificationPackage := by
  exact ⟨
    v20_exact_divisor_classification_six,
    v20_exact_divisor_classification_twelve,
    v20_six_two_classifies,
    v20_six_five_not_classifies,
    v20_twelve_four_classifies,
    v20_twelve_eleven_not_classifies
  ⟩

theorem v20_exact_classification_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
