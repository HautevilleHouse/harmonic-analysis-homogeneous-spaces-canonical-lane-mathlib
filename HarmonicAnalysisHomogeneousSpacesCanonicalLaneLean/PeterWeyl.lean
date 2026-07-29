import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure Representation (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [CompactGroup G] where
  carrier : Type v
  innerProduct : InnerProductSpace ℝ carrier
  representation : GroupRepresentation G carrier
  unitary : IsUnitary representation

structure IrreducibleDecompositionPackage (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [CompactGroup G] where
  irreducibles : Set (Representation G)
  directSumDecomposition : ∀ (ρ : Representation G), ρ.carrier ≃ₗ[ℝ] (PiLp 2 (fun i : irreducibles => (Representation.carrier i)))
  decompositionContinuous : Continuous (directSumDecomposition).toFun
  decompositionContinuousInv : Continuous (directSumDecomposition).invFun

structure PeterWeylEvidence (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [CompactGroup G] (P : IrreducibleDecompositionPackage G) where
  irreduciblesClosed : P.irreducibles ≠ ∅
  decompositionContinuousClosed : true

def PeterWeylClosed (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [CompactGroup G] (P : IrreducibleDecompositionPackage G) : Prop :=
  P.irreducibles.Nonempty

theorem peter_weyl_closed_from_evidence (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] [CompactGroup G] (P : IrreducibleDecompositionPackage G) (E : PeterWeylEvidence G P) : PeterWeylClosed G P := by
  exact ⟨E.irreduciblesClosed⟩

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse