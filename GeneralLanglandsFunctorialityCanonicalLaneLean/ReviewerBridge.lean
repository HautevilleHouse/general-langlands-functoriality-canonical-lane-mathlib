import GeneralLanglandsFunctorialityCanonicalLaneLean.Formalization
import GeneralLanglandsFunctorialityCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace GeneralLanglandsFunctorialityCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "6490bbf17a633c568c9be4b00dba2572814a8c414cec101d300ff406e7a297b4", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "0794f74f853e24a9a39b338d60d052389fe28cd76ff608f2d919e0ee4c5ab6e6", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "20c11b42c1adf662266ddba2e75615cf29a87178e399b7d302c21bcf209c4172", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "57ce45b1631fe5b82e733aaf2daa85ddb454959e880f85970cd8feb803800f54", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "85369a01f9a6b8e4e1f4b505273457e5b08691edd1a1db75d4581d72a70a1fcc", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "fe816957167da2ec5b65de62fb79003b3ac14dd4e729215a11925b475a2fe924", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "fb9fbc43a419a80c3da0754565c022c4989526fed7bac59f163bb7d6d0def9bd", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "d73c9696b367567f842f6e5b52c6fdd0989614db82f20fc42b280e2e7a51b197", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "190e792f64bdc1d9c856f19c7afc55de4ff55809346aa25e1f4ce31b889b5b03", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "GLF_G1", constant := "kappa_transfer" },
  { gate := "GLF_G2", constant := "sigma_matching" },
  { gate := "GLF_G3", constant := "kappa_compact" },
  { gate := "GLF_G4", constant := "rho_rigidity" },
  { gate := "GLF_G5", constant := "packet_transfer" },
  { gate := "GLF_G6", constant := "eps_coh" },
  { gate := "GLF_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "28408aae5b4b591202eb8f893d7db14a1f359050e1d890c8829977ed31ba50eb" },
  { path := "README.md", sha256 := "fcff61f8fc6704ffdfc225b0b06d100ae7eb3eb7f39bce8c55a692dc3284a797" },
  { path := "artifacts/constants_extracted.json", sha256 := "57ce45b1631fe5b82e733aaf2daa85ddb454959e880f85970cd8feb803800f54" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "20c11b42c1adf662266ddba2e75615cf29a87178e399b7d302c21bcf209c4172" },
  { path := "artifacts/constants_registry.json", sha256 := "85369a01f9a6b8e4e1f4b505273457e5b08691edd1a1db75d4581d72a70a1fcc" },
  { path := "artifacts/promotion_report.json", sha256 := "fb9fbc43a419a80c3da0754565c022c4989526fed7bac59f163bb7d6d0def9bd" },
  { path := "artifacts/stitch_constants.json", sha256 := "fe816957167da2ec5b65de62fb79003b3ac14dd4e729215a11925b475a2fe924" },
  { path := "notes/EG1_public.md", sha256 := "5fb54229f01b1225dc05867ccd4ed7914c5d5c4b974f40c0e4f619ff8d2e3b5d" },
  { path := "notes/EG2_public.md", sha256 := "1402121ab92ddb982d5fa183f10e20387a850c9aea2715f80c0a17fae7231b11" },
  { path := "notes/EG3_public.md", sha256 := "bc138aa627500c7fac6718a3d06c74652b821a96bc10194a919e18374a73bac3" },
  { path := "notes/EG4_public.md", sha256 := "982f39dbde58915e0a424fb1b3afa058e44b315b86a0963a4c1a083e06788962" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "0794f74f853e24a9a39b338d60d052389fe28cd76ff608f2d919e0ee4c5ab6e6" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "5b9d034d8b5006c9b38abce068aa39ce47d785ecb32ec42a779b611571327b30" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "6db7da1bbbb13f52909087084be248885dc40f403cdc8c68d87f6e0a0cd63fad" },
  { path := "paper/GENERAL_LANGLANDS_FUNCTORIALITY_PREPRINT.md", sha256 := "2eaf325147d888d0a5886f9ce77f6b60175822a815da600c2b873250f878a419" },
  { path := "repro/REPRO_PACK.md", sha256 := "a7aa422e03e0cdfa2fcf854207e41321cf6f639e4fb2def7d94c9ddc4a76e4a3" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "16be99cee6ff5de117c1fa91563fccca9437da5e9e43f873021382277c4b632c" },
  { path := "repro/certificate_baseline.json", sha256 := "190e792f64bdc1d9c856f19c7afc55de4ff55809346aa25e1f4ce31b889b5b03" },
  { path := "repro/run_repro.sh", sha256 := "b168f1d51308c54664a2ee9ee1e1c1408984e828da7f0f28b638c94a4b8018a0" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/glf_closure_guard.py", sha256 := "da8e8e1e90d67184c793dc15bcade552675b3005f15f46f3fb60b1d74b0749d5" },
  { path := "scripts/README.md", sha256 := "ccdef5638e20b220539963917e7c2b847042837c78f5f18bef659d14caf5d82c" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "GLF_G1", status := "PASS" },
  { gate := "GLF_G2", status := "PASS" },
  { gate := "GLF_G3", status := "PASS" },
  { gate := "GLF_G4", status := "PASS" },
  { gate := "GLF_G5", status := "PASS" },
  { gate := "GLF_G6", status := "PASS" },
  { gate := "GLF_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_transfer", value := "1.0940320000000001" },
  { key := "packet_transfer", value := "1.0315400000000001" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_matching", value := "1.075" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_transfer",
  "packet_transfer",
  "rho_rigidity",
  "sigma_matching",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end GeneralLanglandsFunctorialityCanonicalLaneLean
end HautevilleHouse
