import FormalLanglandsLab.MathlibIntegration.V32Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v33ArithmeticFunction : Type :=
  Nat → Nat

def v33ZeroFunction : v33ArithmeticFunction :=
  fun _ => 0

def v33OneFunction : v33ArithmeticFunction :=
  fun _ => 1

def v33IdentityFunction : v33ArithmeticFunction :=
  fun n => n

def v33KroneckerDeltaAtOne : v33ArithmeticFunction :=
  fun n => if n = 1 then 1 else 0

def v33DivisorCountFunction : v33ArithmeticFunction :=
  fun n => (v6DivisorFinset n).card

def v33ArithmeticFunctionExtensionalEquality
    (f g : v33ArithmeticFunction) : Prop :=
  ∀ n : Nat, f n = g n

theorem v33_zero_function_value
    (n : Nat) :
    v33ZeroFunction n = 0 := by
  rfl

theorem v33_one_function_value
    (n : Nat) :
    v33OneFunction n = 1 := by
  rfl

theorem v33_identity_function_value
    (n : Nat) :
    v33IdentityFunction n = n := by
  rfl

theorem v33_delta_one_value_at_one :
    v33KroneckerDeltaAtOne 1 = 1 := by
  rfl

theorem v33_delta_one_value_at_zero :
    v33KroneckerDeltaAtOne 0 = 0 := by
  rfl

theorem v33_delta_one_value_at_two :
    v33KroneckerDeltaAtOne 2 = 0 := by
  rfl

theorem v33_arithmetic_function_extensionality
    {f g : v33ArithmeticFunction}
    (h : v33ArithmeticFunctionExtensionalEquality f g) :
    f = g := by
  funext n
  exact h n

theorem v33_arithmetic_function_extensionality_intro
    {f g : v33ArithmeticFunction}
    (h : f = g) :
    v33ArithmeticFunctionExtensionalEquality f g := by
  intro n
  rw [h]

theorem v33_zero_function_extensional_self :
    v33ArithmeticFunctionExtensionalEquality v33ZeroFunction v33ZeroFunction := by
  intro n
  rfl

theorem v33_one_function_extensional_self :
    v33ArithmeticFunctionExtensionalEquality v33OneFunction v33OneFunction := by
  intro n
  rfl

theorem v33_identity_function_extensional_self :
    v33ArithmeticFunctionExtensionalEquality v33IdentityFunction v33IdentityFunction := by
  intro n
  rfl

theorem v33_divisor_count_function_definition
    (n : Nat) :
    v33DivisorCountFunction n = (v6DivisorFinset n).card := by
  rfl

def v33ArithmeticFunctionCorePackage : Prop :=
  (∀ n : Nat, v33ZeroFunction n = 0) ∧
  (∀ n : Nat, v33OneFunction n = 1) ∧
  (∀ n : Nat, v33IdentityFunction n = n) ∧
  v33ArithmeticFunctionExtensionalEquality v33ZeroFunction v33ZeroFunction

theorem v33_arithmetic_function_core_package :
    v33ArithmeticFunctionCorePackage := by
  exact ⟨
    v33_zero_function_value,
    ⟨
      v33_one_function_value,
      ⟨
        v33_identity_function_value,
        v33_zero_function_extensional_self
      ⟩
    ⟩
  ⟩

theorem v33_arithmetic_function_core_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
