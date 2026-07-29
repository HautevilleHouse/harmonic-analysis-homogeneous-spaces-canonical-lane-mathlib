import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure WeakTypeOperatorPackage where
  homogeneousSpace : Type u
  convolutionKernel : Type v
  weakTypeBounds : Prop
  maximalFunction : Type w
  interpolationTheorem : Prop
  endpointEstimates : Prop

structure WeakTypeOperatorEvidence (W : WeakTypeOperatorPackage) where
  weakTypeBoundsClosed : W.weakTypeBounds
  interpolationTheoremClosed : W.interpolationTheorem
  endpointEstimatesClosed : W.endpointEstimates

def WeakTypeOperatorClosed (W : WeakTypeOperatorPackage) : Prop :=
  W.weakTypeBounds ∧ W.interpolationTheorem ∧ W.endpointEstimates

theorem weak_type_operator_closed_from_evidence (W : WeakTypeOperatorPackage) (E : WeakTypeOperatorEvidence W) :
    WeakTypeOperatorClosed W := by
  exact And.intro E.weakTypeBoundsClosed
    (And.intro E.interpolationTheoremClosed E.endpointEstimatesClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse
