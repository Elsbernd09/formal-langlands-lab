import FormalLanglandsLab.MathlibIntegration.V37DivisorPairFinsetCharacterization

namespace FormalLanglandsLab
namespace MathlibIntegration

def v38PairSwapPreservesDivisorPair : Prop :=
  ∀ n a b : Nat,
    v35DivisorPair n a b →
      v35DivisorPair n b a

def v38KernelSwapSymmetry : Prop :=
  ∀ f g : v33ArithmeticFunction,
  ∀ a b : Nat,
    v35DirichletKernelTerm f g a b =
      v35DirichletKernelTerm g f b a

theorem v38_pair_swap_preserves_pair
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    v35DivisorPair n b a := by
  exact v35_divisor_pair_symm h

theorem v38_pair_swap_involution
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    v38_pair_swap_preserves_pair (v38_pair_swap_preserves_pair h) = h := by
  rfl

theorem v38_pair_swap_preserves_product
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    b * a = n := by
  exact v35_divisor_pair_product_eq (v38_pair_swap_preserves_pair h)

theorem v38_kernel_swap_symmetry
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f g a b =
      v35DirichletKernelTerm g f b a := by
  unfold v35DirichletKernelTerm
  rw [Nat.mul_comm]

theorem v38_kernel_swap_symmetry_self
    (f : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f f a b =
      v35DirichletKernelTerm f f b a := by
  exact v38_kernel_swap_symmetry f f a b

theorem v38_pair_contribution_swapped_pair
    {f g : v33ArithmeticFunction}
    {n a b : Nat}
    (h : v35DirichletPairContribution f g n a b) :
    v35DivisorPair n b a := by
  exact v38_pair_swap_preserves_pair h.1

theorem v38_pair_contribution_kernel_swapped
    {f g : v33ArithmeticFunction}
    {a b : Nat} :
    v35DirichletKernelTerm f g a b =
      v35DirichletKernelTerm g f b a := by
  exact v38_kernel_swap_symmetry f g a b

theorem v38_actual_characterization_swap
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : a ∈ v6DivisorFinset n ∧
         b ∈ v6DivisorFinset n ∧
         a * b = n) :
    b ∈ v6DivisorFinset n ∧
    a ∈ v6DivisorFinset n ∧
    b * a = n := by
  have hpair : v35DivisorPair n a b :=
    (v37_actual_pair_finset_characterization n a b hn).mpr h
  have hswap : v35DivisorPair n b a :=
    v38_pair_swap_preserves_pair hpair
  exact (v37_actual_pair_finset_characterization n b a hn).mp hswap

theorem v38_expected_characterization_swap
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : a ∈ v22ExpectedDivisorFinset n ∧
         b ∈ v22ExpectedDivisorFinset n ∧
         a * b = n) :
    b ∈ v22ExpectedDivisorFinset n ∧
    a ∈ v22ExpectedDivisorFinset n ∧
    b * a = n := by
  have hpair : v35DivisorPair n a b :=
    (v37_expected_pair_finset_characterization n a b hn).mpr h
  have hswap : v35DivisorPair n b a :=
    v38_pair_swap_preserves_pair hpair
  exact (v37_expected_pair_finset_characterization n b a hn).mp hswap

theorem v38_pair_swap_preserves_pair_all :
    v38PairSwapPreservesDivisorPair := by
  intro n a b h
  exact v38_pair_swap_preserves_pair h

theorem v38_kernel_swap_symmetry_all :
    v38KernelSwapSymmetry := by
  intro f g a b
  exact v38_kernel_swap_symmetry f g a b

def v38DirichletPairSymmetryPackage : Prop :=
  v38PairSwapPreservesDivisorPair ∧
  v38KernelSwapSymmetry ∧
  (∀ n a b : Nat,
    n ≠ 0 →
    a ∈ v6DivisorFinset n ∧ b ∈ v6DivisorFinset n ∧ a * b = n →
    b ∈ v6DivisorFinset n ∧ a ∈ v6DivisorFinset n ∧ b * a = n)

theorem v38_dirichlet_pair_symmetry_package :
    v38DirichletPairSymmetryPackage := by
  exact ⟨
    v38_pair_swap_preserves_pair_all,
    ⟨
      v38_kernel_swap_symmetry_all,
      fun n a b hn h => v38_actual_characterization_swap hn h
    ⟩
  ⟩

theorem v38_dirichlet_pair_symmetry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
