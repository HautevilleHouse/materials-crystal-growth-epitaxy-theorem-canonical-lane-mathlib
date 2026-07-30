import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure CrystalGrowthPackage where
  substrateLattice : Type u
  latticeParameters : Type v
  epilayerCrystalStructure : Type w
  misfitStrain : Prop
  growthMode : Prop
  surfaceDiffusion : Prop

structure CrystalGrowthEvidence (G : CrystalGrowthPackage) where
  substrateLatticeClosed : G.substrateLattice
  latticeParametersClosed : G.latticeParameters
  epilayerCrystalStructureClosed : G.epilayerCrystalStructure
  misfitStrainClosed : G.misfitStrain
  growthModeClosed : G.growthMode
  surfaceDiffusionClosed : G.surfaceDiffusion

def CrystalGrowthClosed (G : CrystalGrowthPackage) : Prop :=
  G.substrateLattice ∧ G.latticeParameters ∧ G.epilayerCrystalStructure ∧
  G.misfitStrain ∧ G.growthMode ∧ G.surfaceDiffusion

theorem crystal_growth_closed_from_evidence (G : CrystalGrowthPackage)
    (E : CrystalGrowthEvidence G) : CrystalGrowthClosed G := by
  exact And.intro E.substrateLatticeClosed
    (And.intro E.latticeParametersClosed
      (And.intro E.epilayerCrystalStructureClosed
        (And.intro E.misfitStrainClosed
          (And.intro E.growthModeClosed E.surfaceDiffusionClosed))))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse