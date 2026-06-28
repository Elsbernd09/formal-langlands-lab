import FormalLanglandsLab.MathlibIntegration.V61Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v62MultiplicativeClosedUnderPointwiseMul : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v61Multiplicative f →
    v61Multiplicative g →
      v61Multiplicative (v34PointwiseMul f g)

def v62CompletelyMultiplicativeClosedUnderPointwiseMul : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
    v61CompletelyMultiplicative g →
      v61CompletelyMultiplicative (v34PointwiseMul f g)

theorem v62_pointwise_mul_of_multiplicative
    {f g : v33ArithmeticFunction}
    (hf : v61Multiplicative f)
    (hg : v61Multiplicative g) :
    v61Multiplicative (v34PointwiseMul f g) := by
  intro a b ha hb hcop
  unfold v34PointwiseMul
  rw [hf a b ha hb hcop]
  rw [hg a b ha hb hcop]
  simp [
    Nat.mul_assoc,
    Nat.mul_comm,
    Nat.mul_left_comm
  ]

theorem v62_pointwise_mul_of_completely_multiplicative
    {f g : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f)
    (hg : v61CompletelyMultiplicative g) :
    v61CompletelyMultiplicative (v34PointwiseMul f g) := by
  intro a b
  unfold v34PointwiseMul
  rw [hf a b]
  rw [hg a b]
  simp [
    Nat.mul_assoc,
    Nat.mul_comm,
    Nat.mul_left_comm
  ]

theorem v62_pointwise_mul_multiplicative_all :
    v62MultiplicativeClosedUnderPointwiseMul := by
  intro f g hf hg
  exact v62_pointwise_mul_of_multiplicative hf hg

theorem v62_pointwise_mul_completely_multiplicative_all :
    v62CompletelyMultiplicativeClosedUnderPointwiseMul := by
  intro f g hf hg
  exact v62_pointwise_mul_of_completely_multiplicative hf hg

theorem v62_one_mul_identity_multiplicative :
    v61Multiplicative
      (v34PointwiseMul v33OneFunction v33IdentityFunction) := by
  exact v62_pointwise_mul_of_multiplicative
    v61_one_function_multiplicative
    v61_identity_function_multiplicative

theorem v62_identity_mul_identity_multiplicative :
    v61Multiplicative
      (v34PointwiseMul v33IdentityFunction v33IdentityFunction) := by
  exact v62_pointwise_mul_of_multiplicative
    v61_identity_function_multiplicative
    v61_identity_function_multiplicative

theorem v62_one_mul_identity_completely_multiplicative :
    v61CompletelyMultiplicative
      (v34PointwiseMul v33OneFunction v33IdentityFunction) := by
  exact v62_pointwise_mul_of_completely_multiplicative
    v61_one_function_completely_multiplicative
    v61_identity_function_completely_multiplicative

theorem v62_identity_mul_identity_completely_multiplicative :
    v61CompletelyMultiplicative
      (v34PointwiseMul v33IdentityFunction v33IdentityFunction) := by
  exact v62_pointwise_mul_of_completely_multiplicative
    v61_identity_function_completely_multiplicative
    v61_identity_function_completely_multiplicative

def v62MultiplicativityPointwiseMultiplicationPackage : Prop :=
  v62MultiplicativeClosedUnderPointwiseMul ∧
  v62CompletelyMultiplicativeClosedUnderPointwiseMul ∧
  v61Multiplicative
    (v34PointwiseMul v33OneFunction v33IdentityFunction) ∧
  v61Multiplicative
    (v34PointwiseMul v33IdentityFunction v33IdentityFunction) ∧
  v61CompletelyMultiplicative
    (v34PointwiseMul v33IdentityFunction v33IdentityFunction)

theorem v62_multiplicativity_pointwise_multiplication_package :
    v62MultiplicativityPointwiseMultiplicationPackage := by
  exact ⟨
    v62_pointwise_mul_multiplicative_all,
    ⟨
      v62_pointwise_mul_completely_multiplicative_all,
      ⟨
        v62_one_mul_identity_multiplicative,
        ⟨
          v62_identity_mul_identity_multiplicative,
          v62_identity_mul_identity_completely_multiplicative
        ⟩
      ⟩
    ⟩
  ⟩

theorem v62_multiplicativity_pointwise_multiplication_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
