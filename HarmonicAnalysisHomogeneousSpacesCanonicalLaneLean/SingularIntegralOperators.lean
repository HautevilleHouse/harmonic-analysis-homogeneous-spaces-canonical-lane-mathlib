import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure SingularIntegralOperatorPackage where
  homogeneousSpace : Type u
  kernelType : Type v
  boundednessOnL2 : Prop
  interpolation : Prop
  endpointEstimates : Prop

structure SingularIntegralOperatorEvidence (S : SingularIntegralOperatorPackage) where
  boundednessOnL2Closed : S.boundednessOnL2
  interpolationClosed : S.interpolation
  endpointEstimatesClosed : S.endpointEstimates

def SingularIntegralOperatorClosed (S : SingularIntegralOperatorPackage) : Prop :=
  S.boundednessOnL2 ∧ S.interpolation ∧ S.endpointEstimates

theorem singular_integral_operator_closed_from_evidence (S : SingularIntegralOperatorPackage)
    (E : SingularIntegralOperatorEvidence S) : SingularIntegralOperatorClosed S := by
  exact And.intro E.boundednessOnL2Closed
    (And.intro E.interpolationClosed E.endpointEstimatesClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse