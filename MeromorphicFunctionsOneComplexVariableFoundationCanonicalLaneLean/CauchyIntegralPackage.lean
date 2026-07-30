import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure CauchyIntegralPackage where
  contourIntegral : Type u
  cauchyIntegralFormula : Prop
  analyticityCondition : Prop
  taylorCoefficientFormula : (ℕ → ℂ) → Prop

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.analyticityCondition ∧ C.taylorCoefficientFormula (λ n => 0)

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticityConditionClosed : C.analyticityCondition
  taylorCoefficientFormulaClosed : C.taylorCoefficientFormula (λ n => 0)

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed (And.intro E.analyticityConditionClosed E.taylorCoefficientFormulaClosed)

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse