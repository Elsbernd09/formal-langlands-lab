import FormalLanglandsLab.MathlibIntegration.V104Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

def v105SigmaSix
    (f : v33ArithmeticFunction) : Nat :=
  v104FiniteDivisorSumSix f

def v105SigmaTwelve
    (f : v33ArithmeticFunction) : Nat :=
  v104FiniteDivisorSumTwelve f

def v105SigmaPair
    (f : v33ArithmeticFunction) : Nat × Nat :=
  (v105SigmaSix f, v105SigmaTwelve f)

theorem v105_sigma_six_definition
    (f : v33ArithmeticFunction) :
    v105SigmaSix f =
      v104FiniteDivisorSumSix f := by
  rfl

theorem v105_sigma_twelve_definition
    (f : v33ArithmeticFunction) :
    v105SigmaTwelve f =
      v104FiniteDivisorSumTwelve f := by
  rfl

theorem v105_sigma_pair_definition
    (f : v33ArithmeticFunction) :
    v105SigmaPair f =
      (v105SigmaSix f, v105SigmaTwelve f) := by
  rfl

theorem v105_sigma_six_expansion
    (f : v33ArithmeticFunction) :
    v105SigmaSix f =
      f 1 + f 2 + f 3 + f 6 := by
  exact v104_divisor_sum_six_expansion f

theorem v105_sigma_twelve_expansion
    (f : v33ArithmeticFunction) :
    v105SigmaTwelve f =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12 := by
  exact v104_divisor_sum_twelve_expansion f

theorem v105_sigma_six_as_convolution_with_one
    (f : v33ArithmeticFunction) :
    v105SigmaSix f =
      v101FiniteDirichletConvolutionSix f v33OneFunction := by
  rfl

theorem v105_sigma_twelve_as_convolution_with_one
    (f : v33ArithmeticFunction) :
    v105SigmaTwelve f =
      v101FiniteDirichletConvolutionTwelve f v33OneFunction := by
  rfl

theorem v105_sigma_six_left_convolution_form
    (f : v33ArithmeticFunction) :
    v105SigmaSix f =
      v101FiniteDirichletConvolutionSix v33OneFunction f := by
  calc
    v105SigmaSix f
        = v101FiniteDirichletConvolutionSix f v33OneFunction := by
          rfl
    _ = v101FiniteDirichletConvolutionSix v33OneFunction f := by
          exact (v103_six_convolution_symmetry f v33OneFunction)

theorem v105_sigma_twelve_left_convolution_form
    (f : v33ArithmeticFunction) :
    v105SigmaTwelve f =
      v101FiniteDirichletConvolutionTwelve v33OneFunction f := by
  calc
    v105SigmaTwelve f
        = v101FiniteDirichletConvolutionTwelve f v33OneFunction := by
          rfl
    _ = v101FiniteDirichletConvolutionTwelve v33OneFunction f := by
          exact (v103_twelve_convolution_symmetry f v33OneFunction)

theorem v105_sigma_one_six_value :
    v105SigmaSix v33OneFunction = 4 := by
  exact v104_one_function_divisor_sum_six_value

theorem v105_sigma_one_twelve_value :
    v105SigmaTwelve v33OneFunction = 6 := by
  exact v104_one_function_divisor_sum_twelve_value

theorem v105_sigma_identity_six_value :
    v105SigmaSix v33IdentityFunction = 12 := by
  exact v104_identity_function_divisor_sum_six_value

theorem v105_sigma_identity_twelve_value :
    v105SigmaTwelve v33IdentityFunction = 28 := by
  exact v104_identity_function_divisor_sum_twelve_value

theorem v105_sigma_square_six_value :
    v105SigmaSix v63SquareFunction = 50 := by
  exact v104_square_function_divisor_sum_six_value

theorem v105_sigma_square_twelve_value :
    v105SigmaTwelve v63SquareFunction = 210 := by
  exact v104_square_function_divisor_sum_twelve_value

theorem v105_sigma_pair_one_value :
    v105SigmaPair v33OneFunction = (4, 6) := by
  simp [
    v105SigmaPair,
    v105_sigma_one_six_value,
    v105_sigma_one_twelve_value
  ]

theorem v105_sigma_pair_identity_value :
    v105SigmaPair v33IdentityFunction = (12, 28) := by
  simp [
    v105SigmaPair,
    v105_sigma_identity_six_value,
    v105_sigma_identity_twelve_value
  ]

theorem v105_sigma_pair_square_value :
    v105SigmaPair v63SquareFunction = (50, 210) := by
  simp [
    v105SigmaPair,
    v105_sigma_square_six_value,
    v105_sigma_square_twelve_value
  ]

def v105SigmaStyleFiniteDivisorSumOperatorsPackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    v105SigmaSix f =
      f 1 + f 2 + f 3 + f 6) ∧
  (∀ f : v33ArithmeticFunction,
    v105SigmaTwelve f =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12) ∧
  (∀ f : v33ArithmeticFunction,
    v105SigmaSix f =
      v101FiniteDirichletConvolutionSix f v33OneFunction) ∧
  (∀ f : v33ArithmeticFunction,
    v105SigmaTwelve f =
      v101FiniteDirichletConvolutionTwelve f v33OneFunction) ∧
  (v105SigmaPair v33OneFunction = (4, 6)) ∧
  (v105SigmaPair v33IdentityFunction = (12, 28)) ∧
  (v105SigmaPair v63SquareFunction = (50, 210)) ∧
  v104DivisorSumsAsConvolutionWithOnePackage

theorem v105_sigma_style_finite_divisor_sum_operators_package :
    v105SigmaStyleFiniteDivisorSumOperatorsPackage := by
  exact ⟨
    v105_sigma_six_expansion,
    ⟨
      v105_sigma_twelve_expansion,
      ⟨
        v105_sigma_six_as_convolution_with_one,
        ⟨
          v105_sigma_twelve_as_convolution_with_one,
          ⟨
            v105_sigma_pair_one_value,
            ⟨
              v105_sigma_pair_identity_value,
              ⟨
                v105_sigma_pair_square_value,
                v104_divisor_sums_as_convolution_with_one_package
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v105_sigma_style_finite_divisor_sum_operators_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
