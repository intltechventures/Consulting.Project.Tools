
# Quality > Code > Static Analysis Resources 

## References

- Cyclomatic Complexity 
  + https://en.wikipedia.org/wiki/Cyclomatic_complexity


- Technical Debt 
  + https://intltechventures.blogspot.com/2024/05/2024-05-28-tuesday-proposed-definition.html



## Some of my ideas:

- Minimal Complexity Distance (MCD)
  + (e..g., the simplest thing that could work)


- Maximum Allowed Complexity Distance (MACD)
  * (.e.g, you are NOT ALLOWED to go beyond this theoretical limit, see suggested candidate CEDs below)


- Complexity Estimating Dimension (CED)
  + Some *possible* suggested candidate CEDs:
    * (some of these may just be proxies/derivatives, or indicators/factors/modifiers of possible complexity) 
    * Cost
    * Effort 
    * Time 
    * Major Abstraction Layers involved
    * Number of Workflows 
    * Maximum Workflow Steps (in longest workflow)
    * Maximum Workflow Cyclomatic Complexity
    * Internal Dependencies 
    * External Dependencies 
    * Levels of Approval / Sign-Off Required for Changes
    * Number of Integration Points 
    * Blast Radius Factor 
    * Business Criticality Tier Designation
    * Business Risk Score
    * Technical Risk Score
    * Skill/Experience Difficulty (think: technical scores for climbing routes)
    * Skill/Experience Capability (existing skills within the organization)
    * Change Management Impact Score
    * Technical Debt Encumbrances



## Possible Static Analysis Code Quality Tooling:


- **big-code-analysis**
  + https://dekobon.github.io/big-code-analysis/
  + https://github.com/dekobon/big-code-analysis/
  + Report Examples: (Search for "```check-rustfmt-bail.py``` in the sample report for an example of how the metrics provide a cogent picture, across the different metrics)
    * HTML: 
      * https://dekobon.github.io/big-code-analysis/reports/
    * Markdown: 
      * https://dekobon.github.io/big-code-analysis/reports/report.md


- **CodeScene**
  + https://www.thoughtworks.com/radar/tools/codescene
    * "_CodeScene’s CodeHealth metric provides a useful guardrail by identifying areas where code is too complex for LLMs to safely refactor without a high risk of hallucinations._" 
    * "_We recommend teams assess CodeScene as a guardrail for coding agent adoption. Its CodeHealth metric highlights safe refactoring targets and flags areas that require remediation before agents are applied._"


- **Gemini CLI Conductor**
  + https://github.com/gemini-cli-extensions/conductor
  + https://developers.googleblog.com/conductor-update-introducing-automated-reviews/
  + https://www.infoq.com/news/2026/03/gemini-cli-conductor-reviews/


- **Microsoft Visual Code** | **Microsoft Visual Studio**
  + ```TO-DO``` - add links, and cite plugins to suggest 



- **sentrux**
  + https://github.com/sentrux/sentrux
    *"_Real-time architectural sensor that helps AI agents close the feedback loop, enabling recursive self-improvement of code quality. Pure Rust._"
    

- **SonarQube**
  + ```TO-DO``` - add links, and cite appropriate plugins 
