import FormalLanglandsLab.MathlibIntegration.V94Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v95GeneralizedLocalFactor
    (f : v33ArithmeticFunction)
    (p : Nat) : Nat :=
  v91PrimePowerAggregateLengthFour f p

def v95GeneralizedTwoLocalFactorProduct
    (f : v33ArithmeticFunction)
    (p q : Nat) : Nat :=
  v95GeneralizedLocalFactor f p *
  v95GeneralizedLocalFactor f q

theorem v95_generalized_local_factor_value
    (f : v33ArithmeticFunction)
    (p : Nat) :
    v95GeneralizedLocalFactor f p =
      v91PrimePowerAggregateLengthFour f p := by
  rfl

theorem v95_generalized_two_local_factor_product_value
    (f : v33ArithmeticFunction)
    (p q : Nat) :
    v95GeneralizedTwoLocalFactorProduct f p q =
      v91PrimePowerAggregateLengthFour f p *
      v91PrimePowerAggregateLengthFour f q := by
  rfl

theorem v95_recover_v75_product_prototype
    (f : v33ArithmeticFunction) :
    v95GeneralizedTwoLocalFactorProduct f 2 3 =
      v75ControlledEulerProductPrototype f := by
  unfold v95GeneralizedTwoLocalFactorProduct
  unfold v95GeneralizedLocalFactor
  rw [
    v91_recover_v73_two_aggregate,
    v91_recover_v73_three_aggregate
  ]
  rfl

theorem v95_generalized_product_local_swap
    (f : v33ArithmeticFunction)
    (p q : Nat) :
    v95GeneralizedTwoLocalFactorProduct f p q =
      v95GeneralizedTwoLocalFactorProduct f q p := by
  unfold v95GeneralizedTwoLocalFactorProduct
  exact Nat.mul_comm
    (v95GeneralizedLocalFactor f p)
    (v95GeneralizedLocalFactor f q)

theorem v95_one_function_two_three_value :
    v95GeneralizedTwoLocalFactorProduct v33OneFunction 2 3 = 16 := by
  rw [v95_recover_v75_product_prototype]
  exact v75_euler_product_one_function_value

theorem v95_identity_function_two_three_value :
    v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 = 600 := by
  rw [v95_recover_v75_product_prototype]
  exact v75_euler_product_identity_function_value

theorem v95_square_function_two_three_value :
    v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 = 69700 := by
  rw [v95_recover_v75_product_prototype]
  exact v75_euler_product_square_function_value

theorem v95_cube_function_two_three_value :
    v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 = 11957400 := by
  rw [v95_recover_v75_product_prototype]
  exact v75_euler_product_cube_function_value

theorem v95_two_three_expanded_aggregate_matches_generalized_product_identity :
    v92TwoPrimeExpandedAggregate v33IdentityFunction 2 3 =
      v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 := by
  calc
    v92TwoPrimeExpandedAggregate v33IdentityFunction 2 3
        = v81ExpandedEulerProductAggregate v33IdentityFunction := by
          exact v92_recover_v81_expanded_aggregate v33IdentityFunction
    _ = v75ControlledEulerProductPrototype v33IdentityFunction := by
          exact v83_identity_expanded_aggregate_matches_euler_product
    _ = v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 := by
          exact (v95_recover_v75_product_prototype v33IdentityFunction).symm

theorem v95_two_three_square_expanded_aggregate_matches_generalized_product :
    v92TwoPrimeExpandedAggregate v63SquareFunction 2 3 =
      v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 := by
  calc
    v92TwoPrimeExpandedAggregate v63SquareFunction 2 3
        = v81ExpandedEulerProductAggregate v63SquareFunction := by
          exact v92_recover_v81_expanded_aggregate v63SquareFunction
    _ = v75ControlledEulerProductPrototype v63SquareFunction := by
          exact v83_square_expanded_aggregate_matches_euler_product
    _ = v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 := by
          exact (v95_recover_v75_product_prototype v63SquareFunction).symm

theorem v95_two_three_cube_expanded_aggregate_matches_generalized_product :
    v92TwoPrimeExpandedAggregate v63CubeFunction 2 3 =
      v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 := by
  calc
    v92TwoPrimeExpandedAggregate v63CubeFunction 2 3
        = v81ExpandedEulerProductAggregate v63CubeFunction := by
          exact v92_recover_v81_expanded_aggregate v63CubeFunction
    _ = v75ControlledEulerProductPrototype v63CubeFunction := by
          exact v83_cube_expanded_aggregate_matches_euler_product
    _ = v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 := by
          exact (v95_recover_v75_product_prototype v63CubeFunction).symm

def v95GeneralizedLocalFactorProductPrototypePackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    ∀ p q : Nat,
      v95GeneralizedTwoLocalFactorProduct f p q =
        v91PrimePowerAggregateLengthFour f p *
        v91PrimePowerAggregateLengthFour f q) ∧
  (∀ f : v33ArithmeticFunction,
    v95GeneralizedTwoLocalFactorProduct f 2 3 =
      v75ControlledEulerProductPrototype f) ∧
  (∀ f : v33ArithmeticFunction,
    ∀ p q : Nat,
      v95GeneralizedTwoLocalFactorProduct f p q =
        v95GeneralizedTwoLocalFactorProduct f q p) ∧
  (v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 = 600) ∧
  (v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 = 69700) ∧
  (v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 = 11957400) ∧
  v94GeneralizedFinitePrimeWindowRegistryPackage

theorem v95_generalized_local_factor_product_prototype_package :
    v95GeneralizedLocalFactorProductPrototypePackage := by
  exact ⟨
    fun f p q =>
      v95_generalized_two_local_factor_product_value f p q,
    ⟨
      fun f =>
        v95_recover_v75_product_prototype f,
      ⟨
        fun f p q =>
          v95_generalized_product_local_swap f p q,
        ⟨
          v95_identity_function_two_three_value,
          ⟨
            v95_square_function_two_three_value,
            ⟨
              v95_cube_function_two_three_value,
              v94_generalized_finite_prime_window_registry_package
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v95_generalized_local_factor_product_prototype_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
