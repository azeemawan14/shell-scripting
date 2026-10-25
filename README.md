# Shell Scripting — From Beginner to Automation

**Practical Bash learning | English & Roman Urdu notes | Labs | Assignments | Solutions | MCQs | Posters | Linux & DevOps automation**

A structured, hands-on Bash scripting repository for learning foundational shell skills and progressing toward real Linux administration and DevOps automation. Materials are organized by topic, with complete lesson packages and supporting lab data kept together.

> **Learning method:** Learn → Type → Run → Make Mistakes → Debug → Verify → Automate

## Start Here

1. Start with [Chapter 01 — Foundations](01_Foundations/).
2. Continue through the chapters in order, practicing each topic in a Linux environment.
3. For each lesson, read the study notes, perform the labs, attempt assignments **before** opening solutions, and complete MCQs where available.
4. Use the [interview and revision section](10_Interview_and_Revision/) to reinforce your knowledge.

The repository includes materials in **English and Roman Urdu**, where available. Not every topic has every type of resource.

## Learning Roadmap & Chapter Navigation

| Chapter | Topics and learning focus | Open |
|---|---|---|
| 01 — Foundations | Shell vs. terminal, Bash basics, Linux commands, editors, shebang, permissions, first scripts, aliases | [01_Foundations](01_Foundations/) |
| 02 — Variables and Input | Variables, quoting, expansion, PATH, `read`, positional arguments, parameters, variable scope | [02_Variables_and_Input](02_Variables_and_Input/) |
| 03 — Decision Making | Exit codes, operators, tests, `if`/`elif`/`else`, conditionals, deployment validation | [03_Decision_Making](03_Decision_Making/) |
| 04 — Loops | `for`, `while`, `until`, loop control, repeatable automation | [04_Loops](04_Loops/) |
| 05 — Functions and Arrays | Reusable functions, parameters, scope, indexed and associative arrays | [05_Functions_and_Arrays](05_Functions_and_Arrays/) |
| 06 — Files, Text and Pipelines | Standard streams, redirection, `find`, parsing with `grep`, `sed`, `awk`, `cut`, `jq` and more | [06_Files_Text_and_Pipelines](06_Files_Text_and_Pipelines/) |
| 07 — Logging, Scheduling and Debugging | Error handling, logging, exit status, troubleshooting and script reliability | [07_Logging_Scheduling_and_Debugging](07_Logging_Scheduling_and_Debugging/) |
| 08 — Linux Administration Automation | Linux users, permissions, sudoers, configuration, system administration utilities | [08_Linux_Administration_Automation](08_Linux_Administration_Automation/) |
| 09 — DevOps Projects | Applied Bash practice, backups, operations scripts, AWS-related workflows and automation projects | [09_DevOps_Projects](09_DevOps_Projects/) |
| 10 — Interview and Revision | Practice challenges, homework, quizzes, references and review | [10_Interview_and_Revision](10_Interview_and_Revision/) |

Additional supporting material: [Git, GitHub and other references](99_Reference_and_Archive/).

## Day-by-Day Course Materials

The core teaching sequence includes these lesson areas:

| Day | Lesson |
|---|---|
| 01 | [Bash Introduction](01_Foundations/Day_01_Bash_Introduction/) |
| 02 | [Bash Variables](02_Variables_and_Input/Day_02_Bash_Variables/) |
| 03 | [Bash Arguments](02_Variables_and_Input/Day_03_Bash_Arguments/) |
| 04 | [Bash Conditionals](03_Decision_Making/Day_04_Bash_Conditionals/) |
| 05 | [Bash Loops](04_Loops/Day_05_Bash_Loops/) |
| 06 | [Bash Functions](05_Functions_and_Arrays/Day_06_Bash_Functions/) |
| 07 | [Error Handling](07_Logging_Scheduling_and_Debugging/Day_07_Error_Handling/) |

Within each lesson, explore the existing **study notes, student labs, assignments, solutions, lab data, posters and MCQs**, as available. Directory names inside lesson packages reflect the original learning materials.

## Learning Method

Each learning day may include:

- Lesson notes in English and/or Roman Urdu
- Beginner-friendly terminal practice and hands-on lab exercises
- Assignments, student challenges, and separate instructor solutions
- Interactive MCQs and visual study posters
- Supporting sample files, test data and verification instructions

**Beginner rule:** Early scripts should use concepts already taught. Functions, arrays, loops, advanced parsing, regular expressions and strict error handling are introduced progressively rather than required on Day 01.

## Practice Environment

Use one of the following approved learning environments:

- Ubuntu Linux or another compatible Linux distribution
- WSL Ubuntu on Windows
- A disposable Linux virtual machine
- An authorized AWS EC2 lab instance

Check your environment:

```bash
echo "$SHELL"
echo "$0"
bash --version
whoami
hostname
pwd
```

## Running a Bash Script

Run an ordinary readable script:

```bash
bash hello.sh
```

Or make it executable and run it directly:

```bash
chmod u+x hello.sh
./hello.sh
```

Check syntax without executing the script:

```bash
bash -n hello.sh
```

A silent `bash -n` usually means no syntax error was detected; it does **not** prove the script works correctly.

## Working with Assignments and Solutions

1. Read the lesson and assignment.
2. Type commands and scripts yourself.
3. Test both successful and failing scenarios.
4. Record errors, diagnose causes and correct them.
5. Follow lab verification instructions and inspect outputs.
6. Compare with the provided solution only after your own attempt.
7. Review relevant MCQs and posters.

For additional practice, browse [Homework Challenges](10_Interview_and_Revision/Homework_Challenges/) and [Bash Practice Labs](09_DevOps_Projects/Bash_Practice_Labs/).

## Safety Guidelines

- Prefer WSL, disposable VMs or other approved lab systems. **Do not test destructive commands on production servers.**
- Review all scripts before using `sudo`, changing accounts or permissions, or deleting files.
- Do not manually edit `/etc/passwd`, `/etc/shadow` or `/etc/group`.
- Never commit credentials, tokens, passwords, `.pem` private keys or other secrets to Git.
- Use dummy data for demonstrations and verify command results before reporting success.
- Lab logs, archives and temporary files may be intentional teaching fixtures; inspect their role before cleaning them up.

## Git Workflow

Work on a feature branch and review changes before committing:

```bash
git status
git diff --stat
git add <specific-files-or-directories>
git diff --cached --stat
git commit -m "Document Bash learning materials"
```

Push only after confirming the staged changes contain no secrets or unintended large files. Avoid blindly staging generated backups, credentials, and local tooling.

## Repository & Author

**Repository:** [kcommit/shell-scripting](https://github.com/kcommit/shell-scripting)
**Author:** Muhammad Khalid Khan
**GitHub:** [kcommit](https://github.com/kcommit)

The pre-restructuring introduction and learning notes are preserved in [Original README Before Restructure](99_Reference_and_Archive/ORIGINAL_README_BEFORE_RESTRUCTURE.md).

---

**Start simple. Understand every line. Then automate with confidence.**
