import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure XRayDiffractionCharacterizationPackage where
  diffractionPattern : Type u
  peakPositions : Type v
  intensities : Type w
  braggLaw : Prop
  laueCondition : Prop
  structureFactor : Prop

structure XRayDiffractionCharacterizationEvidence
    (X : XRayDiffractionCharacterizationPackage) where
  diffractionPatternClosed : X.diffractionPattern
  peakPositionsClosed : X.peakPositions
  intensitiesClosed : X.intensities
  braggLawClosed : X.braggLaw
  laueConditionClosed : X.laueCondition
  structureFactorClosed : X.structureFactor

def XRayDiffractionCharacterizationClosed
    (X : XRayDiffractionCharacterizationPackage) : Prop :=
  X.diffractionPattern ∧ X.peakPositions ∧ X.intensities ∧
  X.braggLaw ∧ X.laueCondition ∧ X.structureFactor

theorem xray_diffraction_characterization_closed_from_evidence
    (X : XRayDiffractionCharacterizationPackage)
    (E : XRayDiffractionCharacterizationEvidence X) :
    XRayDiffractionCharacterizationClosed X := by
  exact And.intro E.diffractionPatternClosed
    (And.intro E.peakPositionsClosed
      (And.intro E.intensitiesClosed
        (And.intro E.braggLawClosed
          (And.intro E.laueConditionClosed E.structureFactorClosed))))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse