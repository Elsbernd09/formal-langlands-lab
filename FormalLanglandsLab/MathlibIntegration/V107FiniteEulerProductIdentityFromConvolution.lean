import FormalLanglandsLab.MathlibIntegration.V106Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

def v107FiniteSigmaEulerProductSix
    (f : v33ArithmeticFunction) : Nat :=
  v106SigmaTwo f * v106SigmaThree f

def v107FiniteSigmaEulerProductTwelveViaThreeFour
    (f : v33ArithmeticFunction) : Nat :=
  v106SigmaThree f * v106SigmaFour f

def v107FiniteConvolutionEulerIdentitySix
    (f : v33ArithmeticFunction) : Prop :=
  v101FiniteDirichletConvolutionSix f v33OneFunction =
    v107FiniteSigmaEulerProductSix f

def v107FiniteSigmaEulerIdentitySix
    (f : v33ArithmeticFunction) : Prop :=
  v105SigmaSix f =
    v107FiniteSigmaEulerProductSix f

def v107FiniteSigmaEulerIdentityTwelveViaThreeFour
    (f : v33ArithmeticFunction) : Prop :=
  v105SigmaTwelve f =
    v107FiniteSigmaEulerProductTwelveViaThreeFour f

theorem v107_sigma_euler_product_six_definition
    (f : v33ArithmeticFunction) :
    v107FiniteSigmaEulerProductSix f =
      v106SigmaTwo f * v106SigmaThree f := by
  rfl

theorem v107_sigma_euler_product_twelve_definition
    (f : v33ArithmeticFunction) :
    v107FiniteSigmaEulerProductTwelveViaThreeFour f =
      v106SigmaThree f * v106SigmaFour f := by
  rfl

theorem v107_convolution_euler_identity_six_definition
    (f : v33ArithmeticFunction) :
    v107FiniteConvolutionEulerIdentitySix f =
      (v101FiniteDirichletConvolutionSix f v33OneFunction =
        v107FiniteSigmaEulerProductSix f) := by
  rfl

theorem v107_sigma_euler_identity_six_definition
    (f : v33ArithmeticFunction) :
    v107FiniteSigmaEulerIdentitySix f =
      (v105SigmaSix f =
        v107FiniteSigmaEulerProductSix f) := by
  rfl

theorem v107_sigma_euler_identity_twelve_definition
    (f : v33ArithmeticFunction) :
    v107FiniteSigmaEulerIdentityTwelveViaThreeFour f =
      (v105SigmaTwelve f =
        v107FiniteSigmaEulerProductTwelveViaThreeFour f) := by
  rfl

theorem v107_sigma_euler_identity_six_of_finite_multiplicativity
    (f : v33ArithmeticFunction)
    (h1 : f 1 = 1)
    (h6 : f 6 = f 2 * f 3) :
    v107FiniteSigmaEulerIdentitySix f := by
  unfold v107FiniteSigmaEulerIdentitySix
  unfold v107FiniteSigmaEulerProductSix
  exact v106_sigma_six_multiplicativity_bridge f h1 h6

theorem v107_convolution_euler_identity_six_of_finite_multiplicativity
    (f : v33ArithmeticFunction)
    (h1 : f 1 = 1)
    (h6 : f 6 = f 2 * f 3) :
    v107FiniteConvolutionEulerIdentitySix f := by
  unfold v107FiniteConvolutionEulerIdentitySix
  calc
    v101FiniteDirichletConvolutionSix f v33OneFunction
        = v105SigmaSix f := by
          rfl
    _ = v107FiniteSigmaEulerProductSix f := by
          exact v107_sigma_euler_identity_six_of_finite_multiplicativity f h1 h6

theorem v107_one_function_sigma_euler_identity_six :
    v107FiniteSigmaEulerIdentitySix v33OneFunction := by
  exact v107_sigma_euler_identity_six_of_finite_multiplicativity
    v33OneFunction
    (by rfl)
    (by rfl)

theorem v107_identity_function_sigma_euler_identity_six :
    v107FiniteSigmaEulerIdentitySix v33IdentityFunction := by
  exact v107_sigma_euler_identity_six_of_finite_multiplicativity
    v33IdentityFunction
    (by rfl)
    (by rfl)

theorem v107_square_function_sigma_euler_identity_six :
    v107FiniteSigmaEulerIdentitySix v63SquareFunction := by
  exact v107_sigma_euler_identity_six_of_finite_multiplicativity
    v63SquareFunction
    (by rfl)
    (by
      simp [
        v63SquareFunction,
        v34PointwiseMul,
        v33IdentityFunction
      ])

theorem v107_one_function_convolution_euler_identity_six :
    v107FiniteConvolutionEulerIdentitySix v33OneFunction := by
  exact v107_convolution_euler_identity_six_of_finite_multiplicativity
    v33OneFunction
    (by rfl)
    (by rfl)

theorem v107_identity_function_convolution_euler_identity_six :
    v107FiniteConvolutionEulerIdentitySix v33IdentityFunction := by
  exact v107_convolution_euler_identity_six_of_finite_multiplicativity
    v33IdentityFunction
    (by rfl)
    (by rfl)

theorem v107_square_function_convolution_euler_identity_six :
    v107FiniteConvolutionEulerIdentitySix v63SquareFunction := by
  exact v107_convolution_euler_identity_six_of_finite_multiplicativity
    v63SquareFunction
    (by rfl)
    (by
      simp [
        v63SquareFunction,
        v34PointwiseMul,
        v33IdentityFunction
      ])

theorem v107_sigma_euler_product_one_six_value :
    v107FiniteSigmaEulerProductSix v33OneFunction = 4 := by
  rfl

theorem v107_sigma_euler_product_identity_six_value :
    v107FiniteSigmaEulerProductSix v33IdentityFunction = 12 := by
  rfl

theorem v107_sigma_euler_product_square_six_value :
    v107FiniteSigmaEulerProductSix v63SquareFunction = 50 := by
  simp [
    v107FiniteSigmaEulerProductSix,
    v106SigmaTwo,
    v106SigmaThree,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction
  ]

theorem v107_identity_twelve_sigma_euler_identity :
    v107FiniteSigmaEulerIdentityTwelveViaThreeFour v33IdentityFunction := by
  unfold v107FiniteSigmaEulerIdentityTwelveViaThreeFour
  unfold v107FiniteSigmaEulerProductTwelveViaThreeFour
  exact v106_sigma_twelve_identity_factor_bridge

theorem v107_square_twelve_sigma_euler_identity :
    v107FiniteSigmaEulerIdentityTwelveViaThreeFour v63SquareFunction := by
  unfold v107FiniteSigmaEulerIdentityTwelveViaThreeFour
  unfold v107FiniteSigmaEulerProductTwelveViaThreeFour
  exact v106_sigma_twelve_square_factor_bridge

theorem v107_identity_twelve_product_value :
    v107FiniteSigmaEulerProductTwelveViaThreeFour v33IdentityFunction = 28 := by
  rfl

theorem v107_square_twelve_product_value :
    v107FiniteSigmaEulerProductTwelveViaThreeFour v63SquareFunction = 210 := by
  simp [
    v107FiniteSigmaEulerProductTwelveViaThreeFour,
    v106SigmaThree,
    v106SigmaFour,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction
  ]

def v107FiniteEulerProductIdentityFromConvolutionPackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    f 1 = 1 →
    f 6 = f 2 * f 3 →
      v107FiniteSigmaEulerIdentitySix f) ∧
  (∀ f : v33ArithmeticFunction,
    f 1 = 1 →
    f 6 = f 2 * f 3 →
      v107FiniteConvolutionEulerIdentitySix f) ∧
  v107FiniteSigmaEulerIdentitySix v33OneFunction ∧
  v107FiniteSigmaEulerIdentitySix v33IdentityFunction ∧
  v107FiniteSigmaEulerIdentitySix v63SquareFunction ∧
  v107FiniteConvolutionEulerIdentitySix v33OneFunction ∧
  v107FiniteConvolutionEulerIdentitySix v33IdentityFunction ∧
  v107FiniteConvolutionEulerIdentitySix v63SquareFunction ∧
  v107FiniteSigmaEulerIdentityTwelveViaThreeFour v33IdentityFunction ∧
  v107FiniteSigmaEulerIdentityTwelveViaThreeFour v63SquareFunction ∧
  v106FiniteDivisorSumMultiplicativityBridgePackage

theorem v107_finite_euler_product_identity_from_convolution_package :
    v107FiniteEulerProductIdentityFromConvolutionPackage := by
  exact ⟨
    v107_sigma_euler_identity_six_of_finite_multiplicativity,
    ⟨
      v107_convolution_euler_identity_six_of_finite_multiplicativity,
      ⟨
        v107_one_function_sigma_euler_identity_six,
        ⟨
          v107_identity_function_sigma_euler_identity_six,
          ⟨
            v107_square_function_sigma_euler_identity_six,
            ⟨
              v107_one_function_convolution_euler_identity_six,
              ⟨
                v107_identity_function_convolution_euler_identity_six,
                ⟨
                  v107_square_function_convolution_euler_identity_six,
                  ⟨
                    v107_identity_twelve_sigma_euler_identity,
                    ⟨
                      v107_square_twelve_sigma_euler_identity,
                      v106_finite_divisor_sum_multiplicativity_bridge_package
                    ⟩
                  ⟩
                ⟩
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v107_finite_euler_product_identity_from_convolution_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
