import FormalLanglandsLab.MathlibIntegration.V18FinsetEqualityTwelve

namespace FormalLanglandsLab
namespace MathlibIntegration

def v19EqualityConsequencesSix : Prop :=
  v6DivisorFinset 6 = v10ExpectedDivisorsSix ∧
  (∀ d : Nat, d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix)

def v19EqualityConsequencesTwelve : Prop :=
  v6DivisorFinset 12 = v10ExpectedDivisorsTwelve ∧
  (∀ d : Nat, d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve)

theorem v19_equality_consequences_six :
    v19EqualityConsequencesSix := by
  exact ⟨
    v16_finset_equality_six,
    v15_universal_membership_agreement_six
  ⟩

theorem v19_equality_consequences_twelve :
    v19EqualityConsequencesTwelve := by
  exact ⟨
    v18_finset_equality_twelve,
    v17_universal_membership_agreement_twelve
  ⟩

theorem v19_six_membership_transfer_forward
    {d : Nat}
    (h : d ∈ v6DivisorFinset 6) :
    d ∈ v10ExpectedDivisorsSix := by
  exact (v15_universal_membership_agreement_six d).mp h

theorem v19_six_membership_transfer_backward
    {d : Nat}
    (h : d ∈ v10ExpectedDivisorsSix) :
    d ∈ v6DivisorFinset 6 := by
  exact (v15_universal_membership_agreement_six d).mpr h

theorem v19_twelve_membership_transfer_forward
    {d : Nat}
    (h : d ∈ v6DivisorFinset 12) :
    d ∈ v10ExpectedDivisorsTwelve := by
  exact (v17_universal_membership_agreement_twelve d).mp h

theorem v19_twelve_membership_transfer_backward
    {d : Nat}
    (h : d ∈ v10ExpectedDivisorsTwelve) :
    d ∈ v6DivisorFinset 12 := by
  exact (v17_universal_membership_agreement_twelve d).mpr h

def v19MembershipTransferPackageSix : Prop :=
  (∀ d : Nat, d ∈ v6DivisorFinset 6 → d ∈ v10ExpectedDivisorsSix) ∧
  (∀ d : Nat, d ∈ v10ExpectedDivisorsSix → d ∈ v6DivisorFinset 6)

theorem v19_membership_transfer_package_six :
    v19MembershipTransferPackageSix := by
  exact ⟨
    fun d h => v19_six_membership_transfer_forward h,
    fun d h => v19_six_membership_transfer_backward h
  ⟩

def v19MembershipTransferPackageTwelve : Prop :=
  (∀ d : Nat, d ∈ v6DivisorFinset 12 → d ∈ v10ExpectedDivisorsTwelve) ∧
  (∀ d : Nat, d ∈ v10ExpectedDivisorsTwelve → d ∈ v6DivisorFinset 12)

theorem v19_membership_transfer_package_twelve :
    v19MembershipTransferPackageTwelve := by
  exact ⟨
    fun d h => v19_twelve_membership_transfer_forward h,
    fun d h => v19_twelve_membership_transfer_backward h
  ⟩

def v19EqualityAndMembershipPackage : Prop :=
  v19EqualityConsequencesSix ∧
  v19EqualityConsequencesTwelve ∧
  v19MembershipTransferPackageSix ∧
  v19MembershipTransferPackageTwelve

theorem v19_equality_and_membership_package :
    v19EqualityAndMembershipPackage := by
  exact ⟨
    v19_equality_consequences_six,
    ⟨
      v19_equality_consequences_twelve,
      ⟨
        v19_membership_transfer_package_six,
        v19_membership_transfer_package_twelve
      ⟩
    ⟩
  ⟩

theorem v19_arithmetic_consequences_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
