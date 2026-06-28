import FormalLanglandsLab.MathlibIntegration.V74Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v75ControlledEulerProductPrototype
    (f : v33ArithmeticFunction) : Nat :=
  v73EulerFactorAggregateTwo f *
  v73EulerFactorAggregateThree f

theorem v75_euler_product_prototype_value
    (f : v33ArithmeticFunction) :
    v75ControlledEulerProductPrototype f =
      v73EulerFactorAggregateTwo f *
      v73EulerFactorAggregateThree f := by
  rfl

theorem v75_euler_product_one_function_value :
    v75ControlledEulerProductPrototype v33OneFunction = 16 := by
  unfold v75ControlledEulerProductPrototype
  rw [
    v73_one_function_euler_factor_two,
    v73_one_function_euler_factor_three
  ]
  rfl

theorem v75_euler_product_identity_function_value :
    v75ControlledEulerProductPrototype v33IdentityFunction = 600 := by
  unfold v75ControlledEulerProductPrototype
  rw [
    v73_identity_function_euler_factor_two,
    v73_identity_function_euler_factor_three
  ]
  rfl

theorem v75_euler_product_square_function_value :
    v75ControlledEulerProductPrototype v63SquareFunction = 69700 := by
  unfold v75ControlledEulerProductPrototype
  rw [
    v73_square_function_euler_factor_two,
    v73_square_function_euler_factor_three
  ]
  rfl

theorem v75_euler_product_cube_function_value :
    v75ControlledEulerProductPrototype v63CubeFunction = 11957400 := by
  unfold v75ControlledEulerProductPrototype
  rw [
    v73_cube_function_euler_factor_two,
    v73_cube_function_euler_factor_three
  ]
  rfl

theorem v75_euler_product_zero_function_value :
    v75ControlledEulerProductPrototype v33ZeroFunction = 0 := by
  unfold v75ControlledEulerProductPrototype
  rw [
    v74_euler_factor_two_zero_scale v33OneFunction,
    v74_euler_factor_three_zero_scale v33OneFunction
  ]
  rfl

theorem v75_euler_product_prototype_commutes_local_factors
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateTwo f *
      v73EulerFactorAggregateThree f =
    v73EulerFactorAggregateThree f *
      v73EulerFactorAggregateTwo f := by
  exact Nat.mul_comm
    (v73EulerFactorAggregateTwo f)
    (v73EulerFactorAggregateThree f)

theorem v75_euler_product_prototype_local_swap
    (f : v33ArithmeticFunction) :
    v75ControlledEulerProductPrototype f =
      v73EulerFactorAggregateThree f *
      v73EulerFactorAggregateTwo f := by
  unfold v75ControlledEulerProductPrototype
  exact v75_euler_product_prototype_commutes_local_factors f

def v75ControlledEulerProductPrototypePackage : Prop :=
  (v75ControlledEulerProductPrototype v33OneFunction = 16) ∧
  (v75ControlledEulerProductPrototype v33IdentityFunction = 600) ∧
  (v75ControlledEulerProductPrototype v63SquareFunction = 69700) ∧
  (v75ControlledEulerProductPrototype v63CubeFunction = 11957400) ∧
  (∀ f : v33ArithmeticFunction,
    v75ControlledEulerProductPrototype f =
      v73EulerFactorAggregateThree f *
      v73EulerFactorAggregateTwo f)

theorem v75_controlled_euler_product_prototype_package :
    v75ControlledEulerProductPrototypePackage := by
  exact ⟨
    v75_euler_product_one_function_value,
    ⟨
      v75_euler_product_identity_function_value,
      ⟨
        v75_euler_product_square_function_value,
        ⟨
          v75_euler_product_cube_function_value,
          v75_euler_product_prototype_local_swap
        ⟩
      ⟩
    ⟩
  ⟩

theorem v75_euler_factor_product_prototype_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
