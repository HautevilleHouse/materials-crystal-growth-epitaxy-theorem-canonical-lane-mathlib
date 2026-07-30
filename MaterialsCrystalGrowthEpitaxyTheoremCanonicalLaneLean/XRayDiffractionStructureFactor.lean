import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure XRayDiffractionPackage where
  structureFactorEquation : Prop
  braggCondition : Prop
  atomicFormFactor : Prop
  extinctionRules : Prop
  intensityProfile : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  structureFactorEquationClosed : X.structureFactorEquation
  braggConditionClosed : X.braggCondition
  atomicFormFactorClosed : X.atomicFormFactor
  extinctionRulesClosed : X.extinctionRules
  intensityProfileClosed : X.intensityProfile

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.structureFactorEquation ∧ X.braggCondition ∧ X.atomicFormFactor ∧
  X.extinctionRules ∧ X.intensityProfile

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPackage)
    (E : XRayDiffractionEvidence X) : XRayDiffractionClosed X := by
  exact And.intro E.structureFactorEquationClosed
    (And.intro E.braggConditionClosed
      (And.intro E.atomicFormFactorClosed
        (And.intro E.extinctionRulesClosed E.intensityProfileClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse