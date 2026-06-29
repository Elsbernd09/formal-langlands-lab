import FormalLanglandsLab.MathlibIntegration.V62Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v63SquareFunction : v33ArithmeticFunction :=
  v34PointwiseMul v33IdentityFunction v33IdentityFunction

def v63CubeFunction : v33ArithmeticFunction :=
  v34PointwiseMul v63SquareFunction v33IdentityFunction

def v63FourthPowerFunction : v33ArithmeticFunction :=
  v34PointwiseMul v63SquareFunction v63SquareFunction

theorem v63_square_function_value
    (n : Nat) :
    v63SquareFunction n = n * n := by
  rfl

theorem v63_cube_function_value
    (n : Nat) :
    v63CubeFunction n = (n * n) * n := by
  rfl

theorem v63_fourth_power_function_value
    (n : Nat) :
    v63FourthPowerFunction n = (n * n) * (n * n) := by
  rfl

theorem v63_square_function_completely_multiplicative :
    v61CompletelyMultiplicative v63SquareFunction := by
  exact v62_pointwise_mul_of_completely_multiplicative
    v61_identity_function_completely_multiplicative
    v61_identity_function_completely_multiplicative

theorem v63_square_function_multiplicative :
    v61Multiplicative v63SquareFunction := by
  exact v61_completely_multiplicative_implies_multiplicative
    v63_square_function_completely_multiplicative

theorem v63_cube_function_completely_multiplicative :
    v61CompletelyMultiplicative v63CubeFunction := by
  exact v62_pointwise_mul_of_completely_multiplicative
    v63_square_function_completely_multiplicative
    v61_identity_function_completely_multiplicative

theorem v63_cube_function_multiplicative :
    v61Multiplicative v63CubeFunction := by
  exact v61_completely_multiplicative_implies_multiplicative
    v63_cube_function_completely_multiplicative

theorem v63_fourth_power_function_completely_multiplicative :
    v61CompletelyMultiplicative v63FourthPowerFunction := by
  exact v62_pointwise_mul_of_completely_multiplicative
    v63_square_function_completely_multiplicative
    v63_square_function_completely_multiplicative

theorem v63_fourth_power_function_multiplicative :
    v61Multiplicative v63FourthPowerFunction := by
  exact v61_completely_multiplicative_implies_multiplicative
    v63_fourth_power_function_completely_multiplicative

theorem v63_square_function_eval_two :
    v63SquareFunction 2 = 4 := by
  rfl

theorem v63_square_function_eval_three :
    v63SquareFunction 3 = 9 := by
  rfl

theorem v63_cube_function_eval_two :
    v63CubeFunction 2 = 8 := by
  rfl

theorem v63_cube_function_eval_three :
    v63CubeFunction 3 = 27 := by
  rfl

theorem v63_fourth_power_function_eval_two :
    v63FourthPowerFunction 2 = 16 := by
  rfl

def v63PowerStyleArithmeticFunctionsPackage : Prop :=
  v61CompletelyMultiplicative v63SquareFunction ∧
  v61Multiplicative v63SquareFunction ∧
  v61CompletelyMultiplicative v63CubeFunction ∧
  v61Multiplicative v63CubeFunction ∧
  v61CompletelyMultiplicative v63FourthPowerFunction ∧
  v61Multiplicative v63FourthPowerFunction

theorem v63_power_style_arithmetic_functions_package :
    v63PowerStyleArithmeticFunctionsPackage := by
  exact ⟨
    v63_square_function_completely_multiplicative,
    ⟨
      v63_square_function_multiplicative,
      ⟨
        v63_cube_function_completely_multiplicative,
        ⟨
          v63_cube_function_multiplicative,
          ⟨
            v63_fourth_power_function_completely_multiplicative,
            v63_fourth_power_function_multiplicative
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v63_power_style_arithmetic_functions_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
