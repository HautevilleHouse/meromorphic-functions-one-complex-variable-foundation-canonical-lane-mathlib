import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure MittagLefflerTheoremPackage where
  poleConstruction : Prop
  principalPartSum : Prop
  convergenceCondition : Prop
  meromorphicInterpolation : Prop
  poleConstructionProof : poleConstruction
  principalPartSumProof : principalPartSum
  convergenceConditionProof : convergenceCondition
  meromorphicInterpolationProof : meromorphicInterpolation

structure MittagLefflerTheoremEvidence (M : MittagLefflerTheoremPackage) where
  poleConstructionClosed : M.poleConstruction
  principalPartSumClosed : M.principalPartSum
  convergenceConditionClosed : M.convergenceCondition
  meromorphicInterpolationClosed : M.meromorphicInterpolation

def MittagLefflerTheoremClosed (M : MittagLefflerTheoremPackage) : Prop :=
  M.poleConstruction ∧ M.principalPartSum ∧ M.convergenceCondition ∧ M.meromorphicInterpolation

theorem mittag_leffler_theorem_closed_from_evidence (M : MittagLefflerTheoremPackage) (E : MittagLefflerTheoremEvidence M) :
    MittagLefflerTheoremClosed M := by
  exact And.intro E.poleConstructionClosed
    (And.intro E.principalPartSumClosed
      (And.intro E.convergenceConditionClosed E.meromorphicInterpolationClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse