import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean.CrystalLatticePackage

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure XRayDiffractionStructure (C : CrystalLatticePackage) where
  incidentBeam : Prop
  diffractedIntensity : Prop
  structureFactor : Prop
  phaseProblem : Prop
  braggCondition : Prop
  incidentBeamTerm : incidentBeam
  diffractedIntensityTerm : diffractedIntensity
  structureFactorTerm : structureFactor
  phaseProblemTerm : phaseProblem
  braggConditionTerm : braggCondition

structure XRayDiffractionEvidence (C : CrystalLatticePackage) (X : XRayDiffractionStructure C) where
  incidentBeamClosed : X.incidentBeam
  diffractedIntensityClosed : X.diffractedIntensity
  structureFactorClosed : X.structureFactor
  phaseProblemClosed : X.phaseProblem
  braggConditionClosed : X.braggCondition

def XRayDiffractionClosed (C : CrystalLatticePackage) (X : XRayDiffractionStructure C) : Prop :=
  X.incidentBeam ∧ X.diffractedIntensity ∧ X.structureFactor ∧ X.phaseProblem ∧ X.braggCondition

theorem xray_diffraction_closed_from_evidence (C : CrystalLatticePackage) (X : XRayDiffractionStructure C) (E : XRayDiffractionEvidence C X) :
    XRayDiffractionClosed C X := by
  exact And.intro E.incidentBeamClosed (And.intro E.diffractedIntensityClosed (And.intro E.structureFactorClosed (And.intro E.phaseProblemClosed E.braggConditionClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse