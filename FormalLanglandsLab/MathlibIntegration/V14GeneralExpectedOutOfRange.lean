import FormalLanglandsLab.MathlibIntegration.V13Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v14GeneralExpectedOutOfRangeSix : Prop :=
  ∀ d : Nat, 6 < d → d ∉ v10ExpectedDivisorsSix

def v14GeneralExpectedOutOfRangeTwelve : Prop :=
  ∀ d : Nat, 12 < d → d ∉ v10ExpectedDivisorsTwelve

theorem v14_expected_six_member_le_six
    {d : Nat}
    (hmem : d ∈ v10ExpectedDivisorsSix) :
    d ≤ 6 := by
  simp [v10ExpectedDivisorsSix] at hmem
  rcases hmem with h1 | h2 | h3 | h6
  · subst d
    decide
  · subst d
    decide
  · subst d
    decide
  · subst d
    decide

theorem v14_expected_twelve_member_le_twelve
    {d : Nat}
    (hmem : d ∈ v10ExpectedDivisorsTwelve) :
    d ≤ 12 := by
  simp [v10ExpectedDivisorsTwelve] at hmem
  rcases hmem with h1 | h2 | h3 | h4 | h6 | h12
  · subst d
    decide
  · subst d
    decide
  · subst d
    decide
  · subst d
    decide
  · subst d
    decide
  · subst d
    decide

theorem v14_expected_six_out_of_range_by_bound
    {d : Nat}
    (h : 6 < d) :
    d ∉ v10ExpectedDivisorsSix := by
  intro hmem
  have hdle : d ≤ 6 := v14_expected_six_member_le_six hmem
  exact Nat.not_lt_of_ge hdle h

theorem v14_expected_twelve_out_of_range_by_bound
    {d : Nat}
    (h : 12 < d) :
    d ∉ v10ExpectedDivisorsTwelve := by
  intro hmem
  have hdle : d ≤ 12 := v14_expected_twelve_member_le_twelve hmem
  exact Nat.not_lt_of_ge hdle h

theorem v14_general_expected_out_of_range_six :
    v14GeneralExpectedOutOfRangeSix := by
  intro d h
  exact v14_expected_six_out_of_range_by_bound h

theorem v14_general_expected_out_of_range_twelve :
    v14GeneralExpectedOutOfRangeTwelve := by
  intro d h
  exact v14_expected_twelve_out_of_range_by_bound h

theorem v14_expected_six_out_of_range_gives_seven :
    7 ∉ v10ExpectedDivisorsSix := by
  exact v14_expected_six_out_of_range_by_bound (by decide)

theorem v14_expected_six_out_of_range_gives_ten :
    10 ∉ v10ExpectedDivisorsSix := by
  exact v14_expected_six_out_of_range_by_bound (by decide)

theorem v14_expected_twelve_out_of_range_gives_thirteen :
    13 ∉ v10ExpectedDivisorsTwelve := by
  exact v14_expected_twelve_out_of_range_by_bound (by decide)

theorem v14_expected_twelve_out_of_range_gives_sixteen :
    16 ∉ v10ExpectedDivisorsTwelve := by
  exact v14_expected_twelve_out_of_range_by_bound (by decide)

def v14GeneralExpectedOutOfRangePackage : Prop :=
  v14GeneralExpectedOutOfRangeSix ∧
  v14GeneralExpectedOutOfRangeTwelve

theorem v14_general_expected_out_of_range_package :
    v14GeneralExpectedOutOfRangePackage := by
  exact ⟨
    v14_general_expected_out_of_range_six,
    v14_general_expected_out_of_range_twelve
  ⟩

theorem v14_general_expected_out_of_range_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
