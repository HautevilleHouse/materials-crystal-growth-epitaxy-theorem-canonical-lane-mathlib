import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure MisfitDislocationPackage where
  latticeMismatch : ℝ
  dislocationDensity : ℝ
  strainEnergy : ℝ
  criticalThickness : ℝ
  misfitRelaxation : Prop

structure MisfitDislocationEvidence (p : MisfitDislocationPackage) where
  latticeMismatchClosed : p.latticeMismatch > 0
  dislocationDensityClosed : p.dislocationDensity > 0
  strainEnergyClosed : p.strainEnergy > 0
  criticalThicknessClosed : p.criticalThickness > 0
  misfitRelaxationClosed : p.misfitRelaxation

def MisfitDislocationClosed (p : MisfitDislocationPackage) : Prop :=
  p.latticeMismatch > 0 ∧ p.dislocationDensity > 0 ∧
  p.strainEnergy > 0 ∧ p.criticalThickness > 0 ∧ p.misfitRelaxation

theorem misfit_dislocation_closed_from_evidence (p : MisfitDislocationPackage)
    (e : MisfitDislocationEvidence p) : MisfitDislocationClosed p := by
  exact And.intro e.latticeMismatchClosed
    (And.intro e.dislocationDensityClosed
      (And.intro e.strainEnergyClosed
        (And.intro e.criticalThicknessClosed e.misfitRelaxationClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse