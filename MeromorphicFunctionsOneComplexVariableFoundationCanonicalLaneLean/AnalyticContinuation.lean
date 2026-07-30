import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.ComplexAnalysisFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure AnalyticContinuationPackage (F : ComplexAnalysisFoundation) where
  directAnalyticContinuation : Prop
  monodromyTheorem : Prop
  isolatedSingularityClassification : Prop
  laurentSeriesExpansion : Prop

structure AnalyticContinuationEvidence {F : ComplexAnalysisFoundation}
    (A : AnalyticContinuationPackage F) where
  directAnalyticContinuationClosed : A.directAnalyticContinuation
  monodromyTheoremClosed : A.monodromyTheorem
  isolatedSingularityClassificationClosed : A.isolatedSingularityClassification
  laurentSeriesExpansionClosed : A.laurentSeriesExpansion

def AnalyticContinuationClosed {F : ComplexAnalysisFoundation}
    (A : AnalyticContinuationPackage F) : Prop :=
  A.directAnalyticContinuation ∧ A.monodromyTheorem ∧
  A.isolatedSingularityClassification ∧ A.laurentSeriesExpansion

theorem analytic_continuation_closed_from_evidence
    {F : ComplexAnalysisFoundation} (A : AnalyticContinuationPackage F)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.directAnalyticContinuationClosed
    (And.intro E.monodromyTheoremClosed
      (And.intro E.isolatedSingularityClassificationClosed E.laurentSeriesExpansionClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse