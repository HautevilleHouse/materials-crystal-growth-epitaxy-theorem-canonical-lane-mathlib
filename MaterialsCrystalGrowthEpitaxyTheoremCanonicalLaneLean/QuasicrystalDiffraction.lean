import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure QuasicrystalDiffractionPackage where
  penroseTilingModel : Prop
  nonCrystallographicRotationalSymmetry : Prop
  sharpBraggPeaks : Prop
  selfSimilarity : Prop
  indexScheme : Prop

structure QuasicrystalDiffractionEvidence (Q : QuasicrystalDiffractionPackage) where
  penroseTilingModelClosed : Q.penroseTilingModel
  nonCrystallographicRotationalSymmetryClosed : Q.nonCrystallographicRotationalSymmetry
  sharpBraggPeaksClosed : Q.sharpBraggPeaks
  selfSimilarityClosed : Q.selfSimilarity
  indexSchemeClosed : Q.indexScheme

def QuasicrystalDiffractionClosed (Q : QuasicrystalDiffractionPackage) : Prop :=
  Q.penroseTilingModel ∧ Q.nonCrystallographicRotationalSymmetry ∧
  Q.sharpBraggPeaks ∧ Q.selfSimilarity ∧ Q.indexScheme

theorem quasicrystal_diffraction_closed_from_evidence
    (Q : QuasicrystalDiffractionPackage) (E : QuasicrystalDiffractionEvidence Q) :
    QuasicrystalDiffractionClosed Q := by
  exact And.intro E.penroseTilingModelClosed
    (And.intro E.nonCrystallographicRotationalSymmetryClosed
      (And.intro E.sharpBraggPeaksClosed
        (And.intro E.selfSimilarityClosed E.indexSchemeClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse