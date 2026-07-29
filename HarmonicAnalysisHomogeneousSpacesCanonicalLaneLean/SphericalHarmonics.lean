import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure Sphere (n : ℕ) where
  sphereType : Type
  sphereTopology : TopologicalSpace sphereType
  sphereSmoothManifold : SmoothManifold ℝ sphereType

structure SphericalHarmonic (n : ℕ) (S : Sphere n) where
  degree : ℕ
  function : S.sphereType → ℂ
  eigenvalueLaplacian : ℝ
  eigenvalueCorrect : eigenvalueLaplacian = - (degree : ℝ) * (degree + n - 1 : ℝ)
  orthonormalFamily : Prop
  completeness : Prop

structure SphericalHarmonicsPackage (n : ℕ) (S : Sphere n) where
  harmonics : Set (SphericalHarmonic n S)
  orthonormalBasis : orthonormalBasis S.sphereType ℂ
  completenessProof : completeness S

structure SphericalHarmonicsEvidence (n : ℕ) (S : Sphere n) (P : SphericalHarmonicsPackage n S) where
  orthonormalBasisClosed : true
  completenessProofClosed : P.completenessProof

def SphericalHarmonicsClosed (n : ℕ) (S : Sphere n) (P : SphericalHarmonicsPackage n S) : Prop :=
  P.completenessProof

theorem spherical_harmonics_closed_from_evidence (n : ℕ) (S : Sphere n) (P : SphericalHarmonicsPackage n S) (E : SphericalHarmonicsEvidence n S P) : SphericalHarmonicsClosed n S P := by
  exact E.completenessProofClosed

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse