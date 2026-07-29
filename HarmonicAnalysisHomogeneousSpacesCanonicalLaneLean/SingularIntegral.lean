import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure SingularIntegralOperator where
  kernel : Type u
  calderonZygmundEstimates : Prop
  boundednessOnLp : Prop
  weakType : Prop

structure SingularIntegralPackage where
  operator : SingularIntegralOperator
  maximalFunctionBoundedness : Prop
  squareFunction : Prop
  littlewoodPaleyTheory : Prop

structure SingularIntegralEvidence (S : SingularIntegralPackage) where
  maximalFunctionBoundednessClosed : S.maximalFunctionBoundedness
  squareFunctionClosed : S.squareFunction
  littlewoodPaleyTheoryClosed : S.littlewoodPaleyTheory

def SingularIntegralClosed (S : SingularIntegralPackage) : Prop :=
  S.maximalFunctionBoundedness ∧ S.squareFunction ∧ S.littlewoodPaleyTheory

theorem singular_integral_closed_from_evidence (S : SingularIntegralPackage)
    (E : SingularIntegralEvidence S) : SingularIntegralClosed S := by
  exact And.intro E.maximalFunctionBoundednessClosed
    (And.intro E.squareFunctionClosed E.littlewoodPaleyTheoryClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse
