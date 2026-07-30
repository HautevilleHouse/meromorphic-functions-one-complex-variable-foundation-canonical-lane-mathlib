import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure CauchyIntegralFormulas where
  integralRepresentation : Prop
  derivativeFormula : Prop
  powerSeriesExpansion : Prop
  residueFormula : Prop
  existenceProof : integralRepresentation
  derivativeProof : derivativeFormula
  powerSeriesProof : powerSeriesExpansion
  residueProof : residueFormula

structure CauchyIntegralEvidence (C : CauchyIntegralFormulas) where
  integralRepresentationClosed : C.integralRepresentation
  derivativeFormulaClosed : C.derivativeFormula
  powerSeriesExpansionClosed : C.powerSeriesExpansion
  residueFormulaClosed : C.residueFormula

def CauchyIntegralClosed (C : CauchyIntegralFormulas) : Prop :=
  C.integralRepresentation ∧ C.derivativeFormula ∧ C.powerSeriesExpansion ∧ C.residueFormula

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralFormulas) (E : CauchyIntegralEvidence C) :
    CauchyIntegralClosed C := by
  exact And.intro E.integralRepresentationClosed
    (And.intro E.derivativeFormulaClosed
      (And.intro E.powerSeriesExpansionClosed E.residueFormulaClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse