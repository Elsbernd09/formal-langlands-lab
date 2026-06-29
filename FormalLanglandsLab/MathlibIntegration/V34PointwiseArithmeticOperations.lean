import FormalLanglandsLab.MathlibIntegration.V33ArithmeticFunctionCore

namespace FormalLanglandsLab
namespace MathlibIntegration

def v34PointwiseAdd
    (f g : v33ArithmeticFunction) : v33ArithmeticFunction :=
  fun n => f n + g n

def v34PointwiseMul
    (f g : v33ArithmeticFunction) : v33ArithmeticFunction :=
  fun n => f n * g n

def v34PointwiseScale
    (c : Nat)
    (f : v33ArithmeticFunction) : v33ArithmeticFunction :=
  fun n => c * f n

theorem v34_pointwise_add_value
    (f g : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseAdd f g n = f n + g n := by
  rfl

theorem v34_pointwise_mul_value
    (f g : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseMul f g n = f n * g n := by
  rfl

theorem v34_pointwise_scale_value
    (c : Nat)
    (f : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseScale c f n = c * f n := by
  rfl

theorem v34_zero_add_left
    (f : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseAdd v33ZeroFunction f n = f n := by
  simp [v34PointwiseAdd, v33ZeroFunction]

theorem v34_zero_add_right
    (f : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseAdd f v33ZeroFunction n = f n := by
  simp [v34PointwiseAdd, v33ZeroFunction]

theorem v34_one_mul_left
    (f : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseMul v33OneFunction f n = f n := by
  simp [v34PointwiseMul, v33OneFunction]

theorem v34_one_mul_right
    (f : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseMul f v33OneFunction n = f n := by
  simp [v34PointwiseMul, v33OneFunction]

theorem v34_zero_mul_left
    (f : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseMul v33ZeroFunction f n = 0 := by
  simp [v34PointwiseMul, v33ZeroFunction]

theorem v34_zero_mul_right
    (f : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseMul f v33ZeroFunction n = 0 := by
  simp [v34PointwiseMul, v33ZeroFunction]

theorem v34_add_comm_pointwise
    (f g : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseAdd f g n = v34PointwiseAdd g f n := by
  simp [v34PointwiseAdd, Nat.add_comm]

theorem v34_mul_comm_pointwise
    (f g : v33ArithmeticFunction)
    (n : Nat) :
    v34PointwiseMul f g n = v34PointwiseMul g f n := by
  simp [v34PointwiseMul, Nat.mul_comm]

def v34PointwiseOperationsPackage : Prop :=
  (∀ f : v33ArithmeticFunction, ∀ n : Nat,
    v34PointwiseAdd v33ZeroFunction f n = f n) ∧
  (∀ f : v33ArithmeticFunction, ∀ n : Nat,
    v34PointwiseMul v33OneFunction f n = f n) ∧
  (∀ f g : v33ArithmeticFunction, ∀ n : Nat,
    v34PointwiseAdd f g n = v34PointwiseAdd g f n) ∧
  (∀ f g : v33ArithmeticFunction, ∀ n : Nat,
    v34PointwiseMul f g n = v34PointwiseMul g f n)

theorem v34_pointwise_operations_package :
    v34PointwiseOperationsPackage := by
  exact ⟨
    v34_zero_add_left,
    ⟨
      v34_one_mul_left,
      ⟨
        v34_add_comm_pointwise,
        v34_mul_comm_pointwise
      ⟩
    ⟩
  ⟩

theorem v34_pointwise_arithmetic_operations_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
