import FormalLanglandsLab.MathlibIntegration.V13ExpectedOutOfRange

namespace FormalLanglandsLab
namespace MathlibIntegration

def v13OutOfRangeAgreementSix (d : Nat) : Prop :=
  d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix

def v13OutOfRangeAgreementTwelve (d : Nat) : Prop :=
  d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve

theorem v13_actual_six_seven_not_mem :
    7 ∉ v6DivisorFinset 6 := by
  exact v12_six_actual_out_of_range_not_mem (by decide)

theorem v13_actual_six_eight_not_mem :
    8 ∉ v6DivisorFinset 6 := by
  exact v12_six_actual_out_of_range_not_mem (by decide)

theorem v13_actual_six_nine_not_mem :
    9 ∉ v6DivisorFinset 6 := by
  exact v12_six_actual_out_of_range_not_mem (by decide)

theorem v13_actual_six_ten_not_mem :
    10 ∉ v6DivisorFinset 6 := by
  exact v12_six_actual_out_of_range_not_mem (by decide)

theorem v13_agreement_six_seven :
    v13OutOfRangeAgreementSix 7 := by
  constructor
  · intro h
    exact False.elim (v13_actual_six_seven_not_mem h)
  · intro h
    exact False.elim (v13_expected_six_seven_not_mem h)

theorem v13_agreement_six_eight :
    v13OutOfRangeAgreementSix 8 := by
  constructor
  · intro h
    exact False.elim (v13_actual_six_eight_not_mem h)
  · intro h
    exact False.elim (v13_expected_six_eight_not_mem h)

theorem v13_agreement_six_nine :
    v13OutOfRangeAgreementSix 9 := by
  constructor
  · intro h
    exact False.elim (v13_actual_six_nine_not_mem h)
  · intro h
    exact False.elim (v13_expected_six_nine_not_mem h)

theorem v13_agreement_six_ten :
    v13OutOfRangeAgreementSix 10 := by
  constructor
  · intro h
    exact False.elim (v13_actual_six_ten_not_mem h)
  · intro h
    exact False.elim (v13_expected_six_ten_not_mem h)

theorem v13_actual_twelve_thirteen_not_mem :
    13 ∉ v6DivisorFinset 12 := by
  exact v12_twelve_actual_out_of_range_not_mem (by decide)

theorem v13_actual_twelve_fourteen_not_mem :
    14 ∉ v6DivisorFinset 12 := by
  exact v12_twelve_actual_out_of_range_not_mem (by decide)

theorem v13_actual_twelve_fifteen_not_mem :
    15 ∉ v6DivisorFinset 12 := by
  exact v12_twelve_actual_out_of_range_not_mem (by decide)

theorem v13_actual_twelve_sixteen_not_mem :
    16 ∉ v6DivisorFinset 12 := by
  exact v12_twelve_actual_out_of_range_not_mem (by decide)

theorem v13_agreement_twelve_thirteen :
    v13OutOfRangeAgreementTwelve 13 := by
  constructor
  · intro h
    exact False.elim (v13_actual_twelve_thirteen_not_mem h)
  · intro h
    exact False.elim (v13_expected_twelve_thirteen_not_mem h)

theorem v13_agreement_twelve_fourteen :
    v13OutOfRangeAgreementTwelve 14 := by
  constructor
  · intro h
    exact False.elim (v13_actual_twelve_fourteen_not_mem h)
  · intro h
    exact False.elim (v13_expected_twelve_fourteen_not_mem h)

theorem v13_agreement_twelve_fifteen :
    v13OutOfRangeAgreementTwelve 15 := by
  constructor
  · intro h
    exact False.elim (v13_actual_twelve_fifteen_not_mem h)
  · intro h
    exact False.elim (v13_expected_twelve_fifteen_not_mem h)

theorem v13_agreement_twelve_sixteen :
    v13OutOfRangeAgreementTwelve 16 := by
  constructor
  · intro h
    exact False.elim (v13_actual_twelve_sixteen_not_mem h)
  · intro h
    exact False.elim (v13_expected_twelve_sixteen_not_mem h)

def v13OutOfRangeAgreementPackageSix : Prop :=
  v13OutOfRangeAgreementSix 7 ∧
  v13OutOfRangeAgreementSix 8 ∧
  v13OutOfRangeAgreementSix 9 ∧
  v13OutOfRangeAgreementSix 10

def v13OutOfRangeAgreementPackageTwelve : Prop :=
  v13OutOfRangeAgreementTwelve 13 ∧
  v13OutOfRangeAgreementTwelve 14 ∧
  v13OutOfRangeAgreementTwelve 15 ∧
  v13OutOfRangeAgreementTwelve 16

theorem v13_out_of_range_agreement_package_six :
    v13OutOfRangeAgreementPackageSix := by
  exact ⟨
    v13_agreement_six_seven,
    v13_agreement_six_eight,
    v13_agreement_six_nine,
    v13_agreement_six_ten
  ⟩

theorem v13_out_of_range_agreement_package_twelve :
    v13OutOfRangeAgreementPackageTwelve := by
  exact ⟨
    v13_agreement_twelve_thirteen,
    v13_agreement_twelve_fourteen,
    v13_agreement_twelve_fifteen,
    v13_agreement_twelve_sixteen
  ⟩

theorem v13_out_of_range_agreement_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
