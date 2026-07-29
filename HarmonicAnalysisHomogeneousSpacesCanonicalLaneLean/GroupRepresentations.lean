import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure GroupRepresentationPackage where
  group : Type u
  representation : Type v
  irreducibleDecomposition : Prop
  unitaryProperty : Prop
  matrixCoefficients : Prop

structure GroupRepresentationEvidence (G : GroupRepresentationPackage) where
  irreducibleDecompositionClosed : G.irreducibleDecomposition
  unitaryPropertyClosed : G.unitaryProperty
  matrixCoefficientsClosed : G.matrixCoefficients

def GroupRepresentationClosed (G : GroupRepresentationPackage) : Prop :=
  G.irreducibleDecomposition ∧ G.unitaryProperty ∧ G.matrixCoefficients

theorem group_representation_closed_from_evidence (G : GroupRepresentationPackage)
    (E : GroupRepresentationEvidence G) : GroupRepresentationClosed G := by
  exact And.intro E.irreducibleDecompositionClosed
    (And.intro E.unitaryPropertyClosed E.matrixCoefficientsClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse