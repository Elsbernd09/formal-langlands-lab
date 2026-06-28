import FormalLanglandsLab.MathlibIntegration.V65Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v66DivisorSumSixAdditivity : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v65ExplicitDivisorSumSix (v34PointwiseAdd f g) =
      v65ExplicitDivisorSumSix f + v65ExplicitDivisorSumSix g

def v66DivisorSumTwelveAdditivity : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v65ExplicitDivisorSumTwelve (v34PointwiseAdd f g) =
      v65ExplicitDivisorSumTwelve f + v65ExplicitDivisorSumTwelve g

theorem v66_divisor_sum_six_additivity
    (f g : v33ArithmeticFunction) :
    v65ExplicitDivisorSumSix (v34PointwiseAdd f g) =
      v65ExplicitDivisorSumSix f + v65ExplicitDivisorSumSix g := by
  rw [
    v65_explicit_divisor_sum_six_value,
    v65_explicit_divisor_sum_six_value,
    v65_explicit_divisor_sum_six_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v66_divisor_sum_twelve_additivity
    (f g : v33ArithmeticFunction) :
    v65ExplicitDivisorSumTwelve (v34PointwiseAdd f g) =
      v65ExplicitDivisorSumTwelve f + v65ExplicitDivisorSumTwelve g := by
  rw [
    v65_explicit_divisor_sum_twelve_value,
    v65_explicit_divisor_sum_twelve_value,
    v65_explicit_divisor_sum_twelve_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v66_divisor_sum_six_additivity_all :
    v66DivisorSumSixAdditivity := by
  intro f g
  exact v66_divisor_sum_six_additivity f g

theorem v66_divisor_sum_twelve_additivity_all :
    v66DivisorSumTwelveAdditivity := by
  intro f g
  exact v66_divisor_sum_twelve_additivity f g

theorem v66_divisor_sum_six_zero_add_left
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumSix
      (v34PointwiseAdd v33ZeroFunction f) =
        v65ExplicitDivisorSumSix f := by
  rw [v66_divisor_sum_six_additivity]
  rw [v65_explicit_divisor_sum_six_value]
  simp [v33ZeroFunction]

theorem v66_divisor_sum_six_zero_add_right
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumSix
      (v34PointwiseAdd f v33ZeroFunction) =
        v65ExplicitDivisorSumSix f := by
  rw [v66_divisor_sum_six_additivity]
  rw [v65_explicit_divisor_sum_six_value]
  simp [v33ZeroFunction]

theorem v66_divisor_sum_twelve_zero_add_left
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumTwelve
      (v34PointwiseAdd v33ZeroFunction f) =
        v65ExplicitDivisorSumTwelve f := by
  rw [v66_divisor_sum_twelve_additivity]
  rw [v65_explicit_divisor_sum_twelve_value]
  simp [v33ZeroFunction]

theorem v66_divisor_sum_twelve_zero_add_right
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumTwelve
      (v34PointwiseAdd f v33ZeroFunction) =
        v65ExplicitDivisorSumTwelve f := by
  rw [v66_divisor_sum_twelve_additivity]
  rw [v65_explicit_divisor_sum_twelve_value]
  simp [v33ZeroFunction]

def v66DivisorSumAdditivityPackage : Prop :=
  v66DivisorSumSixAdditivity ∧
  v66DivisorSumTwelveAdditivity ∧
  (∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumSix
      (v34PointwiseAdd v33ZeroFunction f) =
        v65ExplicitDivisorSumSix f) ∧
  (∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumTwelve
      (v34PointwiseAdd v33ZeroFunction f) =
        v65ExplicitDivisorSumTwelve f)

theorem v66_divisor_sum_additivity_package :
    v66DivisorSumAdditivityPackage := by
  exact ⟨
    v66_divisor_sum_six_additivity_all,
    ⟨
      v66_divisor_sum_twelve_additivity_all,
      ⟨
        v66_divisor_sum_six_zero_add_left,
        v66_divisor_sum_twelve_zero_add_left
      ⟩
    ⟩
  ⟩

theorem v66_divisor_sum_additivity_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
