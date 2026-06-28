from pathlib import Path
import subprocess
import textwrap

root = Path(".")
audit_dir = root / "audits" / "v49"
audit_dir.mkdir(parents=True, exist_ok=True)

tests = {
    "01_check_finset_card": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

#check Finset.card
""",
    "02_check_finset_sum": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

#check Finset.sum
""",
    "03_check_list_sum": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

#check List.sum
""",
    "04_finset_range_card_field": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

#check (Finset.range 4).card
""",
    "05_finset_range_card_theorem": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

example : (Finset.range 4).card = 4 := by
  native_decide
""",
    "06_finset_range_sum_field": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

#check (Finset.range 4).sum
""",
    "07_finset_range_sum_example": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

example : (Finset.range 4).sum (fun x => x) = 6 := by
  native_decide
""",
    "08_finset_literal_card": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

example : ({1, 2, 3} : Finset Nat).card = 3 := by
  native_decide
""",
    "09_finset_literal_sum": """
import FormalLanglandsLab.MathlibIntegration.V48Dashboard

example : ({1, 2, 3} : Finset Nat).sum (fun x => x) = 6 := by
  native_decide
""",
}

results = []

for name, code in tests.items():
    lean_path = audit_dir / f"{name}.lean"
    lean_path.write_text(textwrap.dedent(code).strip() + "\n")

    proc = subprocess.run(
        ["lake", "env", "lean", str(lean_path)],
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )

    status = "PASS" if proc.returncode == 0 else "FAIL"
    results.append((name, status, proc.stdout, proc.stderr))

report_lines = []
report_lines.append("# V49 Finset Summation Audit Results")
report_lines.append("")
report_lines.append("This audit records which Finset/List cardinality and summation syntax is accepted by the current Lean/mathlib environment.")
report_lines.append("")

for name, status, stdout, stderr in results:
    report_lines.append(f"## {name}: {status}")
    report_lines.append("")
    if stdout.strip():
        report_lines.append("### stdout")
        report_lines.append("```text")
        report_lines.append(stdout.strip())
        report_lines.append("```")
        report_lines.append("")
    if stderr.strip():
        report_lines.append("### stderr")
        report_lines.append("```text")
        report_lines.append(stderr.strip())
        report_lines.append("```")
        report_lines.append("")

summary = "\n".join(f"- {name}: {status}" for name, status, _, _ in results)

report_lines.insert(3, "## Summary")
report_lines.insert(4, "")
report_lines.insert(5, summary)
report_lines.insert(6, "")

report = "\n".join(report_lines) + "\n"

(audit_dir / "summation_audit_results.md").write_text(report)
Path("docs/v49_summation_audit_results.md").write_text(report)

print(report)
