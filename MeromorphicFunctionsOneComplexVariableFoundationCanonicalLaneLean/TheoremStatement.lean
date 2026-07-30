import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure MeromorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MeromorphicAdmittedObject where
  space : MeromorphicSpace
  domain : Prop
  meromorphicFunction : Prop
  complexStructure : Prop
  conclusion : domain ∧ meromorphicFunction ∧ complexStructure

structure MeromorphicEndgameState where
  object : MeromorphicAdmittedObject

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  let c := O.conclusion
  c.1 ∧ c.2.1 ∧ c.2.2

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse