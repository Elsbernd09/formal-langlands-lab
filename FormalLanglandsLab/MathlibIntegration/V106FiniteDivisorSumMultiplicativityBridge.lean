import FormalLanglandsLab.MathlibIntegration.V105Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

def v106SigmaTwo
    (f : v33ArithmeticFunction) : Nat :=
  f 1 + f 2

def v106SigmaThree
    (f : v33ArithmeticFunction) : Nat :=
  f 1 + f 3

def v106SigmaFour
    (f : v33ArithmeticFunction) : Nat :=
  f 1 + f 2 + f 4

def v106SigmaTwoThreeProduct
    (f : v33ArithmeticFunction) : Nat :=
  v106SigmaTwo f * v106SigmaThree f

def v106SigmaThreeFourProduct
    (f : v33ArithmeticFunction) : Nat :=
  v106SigmaThree f * v106SigmaFour f

theorem v106_sigma_two_definition
    (f : v33ArithmeticFunction) :
    v106SigmaTwo f = f 1 + f 2 := by
  rfl

theorem v106_sigma_three_definition
    (f : v33ArithmeticFunction) :
    v106SigmaThree f = f 1 + f 3 := by
  rfl

theorem v106_sigma_four_definition
    (f : v33ArithmeticFunction) :
    v106SigmaFour f = f 1 + f 2 + f 4 := by
  rfl

theorem v106_sigma_two_three_product_definition
    (f : v33ArithmeticFunction) :
    v106SigmaTwoThreeProduct f =
      v106SigmaTwo f * v106SigmaThree f := by
  rfl

theorem v106_sigma_three_four_product_definition
    (f : v33ArithmeticFunction) :
    v106SigmaThreeFourProduct f =
      v106SigmaThree f * v106SigmaFour f := by
  rfl

theorem v106_sigma_six_multiplicativity_bridge
    (f : v33ArithmeticFunction)
    (h1 : f 1 = 1)
    (h6 : f 6 = f 2 * f 3) :
    v105SigmaSix f =
      v106SigmaTwo f * v106SigmaThree f := by
  rw [v105_sigma_six_expansion f]
  unfold v106SigmaTwo
  unfold v106SigmaThree
  rw [h1, h6]
  simp [
    Nat.left_distrib,
    Nat.right_distrib,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v106_sigma_six_one_function_bridge :
    v105SigmaSix v33OneFunction =
      v106SigmaTwo v33OneFunction *
      v106SigmaThree v33OneFunction := by
  exact v106_sigma_six_multiplicativity_bridge
    v33OneFunction
    (by rfl)
    (by rfl)

theorem v106_sigma_six_identity_function_bridge :
    v105SigmaSix v33IdentityFunction =
      v106SigmaTwo v33IdentityFunction *
      v106SigmaThree v33IdentityFunction := by
  exact v106_sigma_six_multiplicativity_bridge
    v33IdentityFunction
    (by rfl)
    (by rfl)

theorem v106_sigma_six_square_function_bridge :
    v105SigmaSix v63SquareFunction =
      v106SigmaTwo v63SquareFunction *
      v106SigmaThree v63SquareFunction := by
  exact v106_sigma_six_multiplicativity_bridge
    v63SquareFunction
    (by rfl)
    (by
      simp [
        v63SquareFunction,
        v34PointwiseMul,
        v33IdentityFunction
      ])

theorem v106_sigma_two_one_value :
    v106SigmaTwo v33OneFunction = 2 := by
  rfl

theorem v106_sigma_three_one_value :
    v106SigmaThree v33OneFunction = 2 := by
  rfl

theorem v106_sigma_two_identity_value :
    v106SigmaTwo v33IdentityFunction = 3 := by
  rfl

theorem v106_sigma_three_identity_value :
    v106SigmaThree v33IdentityFunction = 4 := by
  rfl

theorem v106_sigma_two_square_value :
    v106SigmaTwo v63SquareFunction = 5 := by
  simp [
    v106SigmaTwo,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction
  ]

theorem v106_sigma_three_square_value :
    v106SigmaThree v63SquareFunction = 10 := by
  simp [
    v106SigmaThree,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction
  ]

theorem v106_sigma_six_one_product_value :
    v106SigmaTwo v33OneFunction *
      v106SigmaThree v33OneFunction = 4 := by
  rfl

theorem v106_sigma_six_identity_product_value :
    v106SigmaTwo v33IdentityFunction *
      v106SigmaThree v33IdentityFunction = 12 := by
  rfl

theorem v106_sigma_six_square_product_value :
    v106SigmaTwo v63SquareFunction *
      v106SigmaThree v63SquareFunction = 50 := by
  simp [
    v106SigmaTwo,
    v106SigmaThree,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction
  ]

theorem v106_sigma_four_identity_value :
    v106SigmaFour v33IdentityFunction = 7 := by
  rfl

theorem v106_sigma_four_square_value :
    v106SigmaFour v63SquareFunction = 21 := by
  simp [
    v106SigmaFour,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction
  ]

theorem v106_sigma_twelve_identity_factor_product_value :
    v106SigmaThree v33IdentityFunction *
      v106SigmaFour v33IdentityFunction = 28 := by
  rfl

theorem v106_sigma_twelve_square_factor_product_value :
    v106SigmaThree v63SquareFunction *
      v106SigmaFour v63SquareFunction = 210 := by
  simp [
    v106SigmaThree,
    v106SigmaFour,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction
  ]

theorem v106_sigma_twelve_identity_factor_bridge :
    v105SigmaTwelve v33IdentityFunction =
      v106SigmaThree v33IdentityFunction *
      v106SigmaFour v33IdentityFunction := by
  calc
    v105SigmaTwelve v33IdentityFunction = 28 := by
      exact v105_sigma_identity_twelve_value
    _ = v106SigmaThree v33IdentityFunction *
          v106SigmaFour v33IdentityFunction := by
      exact v106_sigma_twelve_identity_factor_product_value.symm

theorem v106_sigma_twelve_square_factor_bridge :
    v105SigmaTwelve v63SquareFunction =
      v106SigmaThree v63SquareFunction *
      v106SigmaFour v63SquareFunction := by
  calc
    v105SigmaTwelve v63SquareFunction = 210 := by
      exact v105_sigma_square_twelve_value
    _ = v106SigmaThree v63SquareFunction *
          v106SigmaFour v63SquareFunction := by
      exact v106_sigma_twelve_square_factor_product_value.symm

def v106FiniteDivisorSumMultiplicativityBridgePackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    f 1 = 1 →
    f 6 = f 2 * f 3 →
      v105SigmaSix f =
        v106SigmaTwo f * v106SigmaThree f) ∧
  (v105SigmaSix v33OneFunction =
    v106SigmaTwo v33OneFunction *
    v106SigmaThree v33OneFunction) ∧
  (v105SigmaSix v33IdentityFunction =
    v106SigmaTwo v33IdentityFunction *
    v106SigmaThree v33IdentityFunction) ∧
  (v105SigmaSix v63SquareFunction =
    v106SigmaTwo v63SquareFunction *
    v106SigmaThree v63SquareFunction) ∧
  (v105SigmaTwelve v33IdentityFunction =
    v106SigmaThree v33IdentityFunction *
    v106SigmaFour v33IdentityFunction) ∧
  (v105SigmaTwelve v63SquareFunction =
    v106SigmaThree v63SquareFunction *
    v106SigmaFour v63SquareFunction) ∧
  v105SigmaStyleFiniteDivisorSumOperatorsPackage

theorem v106_finite_divisor_sum_multiplicativity_bridge_package :
    v106FiniteDivisorSumMultiplicativityBridgePackage := by
  exact ⟨
    v106_sigma_six_multiplicativity_bridge,
    ⟨
      v106_sigma_six_one_function_bridge,
      ⟨
        v106_sigma_six_identity_function_bridge,
        ⟨
          v106_sigma_six_square_function_bridge,
          ⟨
            v106_sigma_twelve_identity_factor_bridge,
            ⟨
              v106_sigma_twelve_square_factor_bridge,
              v105_sigma_style_finite_divisor_sum_operators_package
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v106_finite_divisor_sum_multiplicativity_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
