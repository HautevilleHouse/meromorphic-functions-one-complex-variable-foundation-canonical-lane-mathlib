import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure ComplexAnalysisFoundation where
  complexPlane : Type u
  topology : TopologicalSpace complexPlane
  holomorphicFunction : Type v
  meromorphicFunction : Type w
  cauchyIntegralFormula : Prop
  identityTheorem : Prop
  openMappingTheorem : Prop

structure ComplexAnalysisFoundationEvidence (F : ComplexAnalysisFoundation) where
  cauchyIntegralFormulaClosed : F.cauchyIntegralFormula
  identityTheoremClosed : F.identityTheorem
  openMappingTheoremClosed : F.openMappingTheorem

def ComplexAnalysisFoundationClosed (F : ComplexAnalysisFoundation) : Prop :=
  F.cauchyIntegralFormula ∧ F.identityTheorem ∧ F.openMappingTheorem

theorem complex_analysis_foundation_closed_from_evidence
    (F : ComplexAnalysisFoundation) (E : ComplexAnalysisFoundationEvidence F) :
    ComplexAnalysisFoundationClosed F := by
  exact And.intro E.cauchyIntegralFormulaClosed
    (And.intro E.identityTheoremClosed E.openMappingTheoremClosed)

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse