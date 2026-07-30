import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Prop
  contour : Type v
  contourSmooth : Prop
  functionHolomorphic : Prop
  cauchyIntegralFormula : Prop
  derivativeRepresentation : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  domainClosed : C.topology
  complexStructureClosed : C.complexStructure
  contourSmoothClosed : C.contourSmooth
  functionHolomorphicClosed : C.functionHolomorphic
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  derivativeRepresentationClosed : C.derivativeRepresentation

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.derivativeRepresentation

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage)
    (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed E.derivativeRepresentationClosed

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse