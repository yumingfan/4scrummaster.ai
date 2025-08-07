---
title: AI For Scrummasters RSG Singapore
author: Yuming
date: 2025-08-05
category: Training
layout: post
---

---

## PRD Sample


> **PRD Sample File**: [Download PRD Sample](https://docs.google.com/document/d/1mbkW4OP3bsjIzx0cH-OxifRixYsiTBVX7oXAI59BZaQ/export?format=docx){:download="PRD-Sample.docx"} - Sample product requirements document used in this training course

---

## SPARK Pattern

| Element | Function | Description |
|---------|----------|-------------|
| **S - Situation（Context）** | Provide background and context | Establish problem space and context |
| **P - Purpose（Objective）** | Clarify task output objectives | Focus output content |
| **A - Action Role（Role Assignment）** | Set professional roles | Simulate thinking patterns close to actual business needs |
| **R - Rule（Task Rules）** | Establish behavior and style standards | Ensure consistency, professionalism and practicality of output content |
| **K - Knowledge Format（Output Format）** | Define output format | Help model maintain output consistency |

---

##  Example 1: PRD to User Story 

### Best Practices

#### **S - Situation（Context）**

- **No Instructions**: Don't write task instructions, just describe the background
- **Use {}**: Use `{paste complete background and concept}` as a placeholder to let users dynamically fill in specific content and improve template reusability

**Example**:
```
 ## S - Situation（Context）
Background is a travel App that aims to help users easily plan independent travel arrangements including itineraries, accommodation, dining and transportation, providing smart, fashionable and customizable travel experiences.

Background content:
{paste complete background and concept} / Please refer to the uploaded file
```
---

#### **P - Purpose（Objective）**

- **One Sentence**: Summarize the task objective in one sentence
- **Verb**: Use verb-oriented instructions
- **Key Requirements**: Add key requirement descriptions (such as INVEST principles)
- **One or Two Check Standards**: Clearly require "each Story must contain at least V (Value) and T (Testable)" in the objective, directly integrating quality check standards into objective setting

**Example**:
```
## P - Purpose（Objective）
Please transform the above concept content into a set of User Stories that comply with INVEST principles.
- **Key Point: Each Story must contain at least V (Value) and T (Testable)**
- Your task is to transform product concept connotations into structured development story entries
```
---

#### **A - Action Role（Role Assignment）**

- **Professional Role**: Designate professional roles with task-related skills
- **Domain**: Emphasize the role's areas of expertise

**Example**:
```
## A - Action Role（Role Assignment）
You are a senior agile product manager who is good at transforming vague concepts into executable User Stories, ensuring the development team has clear objectives, value and acceptance criteria.
```

---

#### **R - Rule（Task Rules）**

- **Checklist**: Use checklist method to list specific behavior requirements
- **Transformation, Boundaries**: Cover content scope, language transformation, output boundaries
- **Format**: Require output format
- **Specific Behavior**: Clearly require "avoid vague statements, such as 'please describe as clearly as possible' → change to 'each User Story must provide at least 3 scenarios'", transforming abstract requirements into specific behavior instructions
- **Quality Requirement Description**: If there are some quality requirements, you can add specific descriptions.

**Example**:
```
## R - Rule（Task Rules）
Please follow the following behavior and style standards:

Requirements                                              
- Use standard format: "As a [role], I want [objective], so that [benefit]"  
- Each Story clearly expresses its value (V) and testability (T)              
- Transform vague, emotional language (such as "fun", "feeling good") into behavior or function-oriented
- Only output User Story content, do not generate unnecessary explanations                        
- User Story granularity must be specific and executable                              
- Cover all key functions or scenarios mentioned in the background concept 

### INVEST Principles Checklist (Appendix)

Standards for reviewing the qualification of each Story (**must satisfy at least V and T**):

| Principle Code | Description                                 |
| -------------- | ------------------------------------------- |
| **I – Independent** | Story should be independently completable, not dependent on other stories             |
| **N – Negotiable**  | Negotiable, should not be fixed specification descriptions                     |
| **V – Valuable**    | Must have clear value for users or business                  |
| **E – Estimable**   | Can estimate workload or complexity                         |
| **S – Small**       | Small enough to be completed within one Sprint                |
| **T – Testable**    | Have verifiable acceptance criteria or conditions                    |

 **Note**: Although not every Story needs to fully comply with all INVEST elements, **must satisfy at least V (Valuable) and T (Testable)**.


```


---

#### **K - Knowledge Format（Output Format）**

- **Template**: Specify sentence pattern templates

**Example**:
```
## K - Knowledge Format（Output Format）
Please organize the results in numbered list format, each Story using standard sentence patterns:

1. As a..., I want..., so that...
2. As a..., I want..., so that...
```



### Sample Prompt

```
## S - Situation（Context）
Please read the following product concept. The background is a travel App that aims to help users easily plan independent travel arrangements including itineraries, accommodation, dining and transportation, providing smart, fashionable and customizable travel experiences.

Background content:
{paste complete background and concept}

---

## P - Purpose（Objective）
Please transform the above concept content into a set of User Stories that comply with INVEST principles.
- **Key Point: Each Story must contain at least V (Value) and T (Testable)**
- Your task is to transform product concept connotations into structured development story entries

---

## A - Action Role（Role Assignment）
You are a senior agile product manager who is good at transforming vague concepts into executable User Stories, ensuring the development team has clear objectives, value and acceptance criteria.

---

## R - Rule（Task Rules）
Please follow the following behavior and style standards:

Requirements                                              
- Use standard format: "As a [role], I want [objective], so that [benefit]"  
- Each Story clearly expresses its value (V) and testability (T)              
- Transform vague, emotional language (such as "fun", "feeling good") into behavior or function-oriented
- Only output User Story content, do not generate unnecessary explanations                        
- User Story granularity must be specific and executable                              
- Cover all key functions or scenarios mentioned in the background concept     

### INVEST Principles Checklist (Appendix)

Standards for reviewing the qualification of each Story (**must satisfy at least V and T**):

| Principle Code | Description                                 |
| -------------- | ------------------------------------------- |
| **I – Independent** | Story should be independently completable, not dependent on other stories             |
| **N – Negotiable**  | Negotiable, should not be fixed specification descriptions                     |
| **V – Valuable**    | Must have clear value for users or business                  |
| **E – Estimable**   | Can estimate workload or complexity                         |
| **S – Small**       | Small enough to be completed within one Sprint                |
| **T – Testable**    | Have verifiable acceptance criteria or conditions                    |

 **Note**: Although not every Story needs to fully comply with all INVEST elements, **must satisfy at least V (Valuable) and T (Testable)**.

---

## K - Knowledge Format（Output Format）
Please organize the results in numbered list format, each Story using standard sentence patterns:

1. As a..., I want..., so that...
2. As a..., I want..., so that...

---


```


---

## Example 2：User Story Prioritization 

### Best Practices

#### **S - Situation（Context）**

- **Explain Input Materials**: First provide product background, then clarify input content "You will face a set of pre-written User Stories", letting AI clearly know what to process
  
**Example**:

```
S - **Situation（Context）**

Please read the following product concept and User Stories. The background is a travel App that aims to help users easily plan independent travel arrangements including itineraries, accommodation, dining and transportation, providing smart, fashionable and customizable travel experiences.

You will face a set of pre-written User Stories, and the next task is to reasonably prioritize them according to their value and launch priority.

The provided User Story list is as follows:

{User Story}
```

---

#### **P - Purpose（Objective）**

- **Prioritize by Importance**: Explain prioritization basis (value, minimum launch unit)
- **Verifiable**: Avoid vague vocabulary, transform into actionable standards
- **One Purpose at a Time**: Avoid multiple tasks at once, currently LLM multi-task performance is difficult to tune


**Example**:

```
## P - **Purpose（Objective）**

Your task is:
**Prioritize the above User Stories according to user value and MVP principles, and explain the prioritization reasons.**

Prioritization judgment needs to balance two major objectives:

1. **User Value**: Prioritize meeting the most core pain points in travel planning, improving efficiency, reducing anxiety or bringing key help.
2. **Minimum Viable Product (MVP) Principle**: Find the minimum functional combination that constitutes V1.0 for early launch to validate product assumptions.
```

---


#### **A - Action Role（Role Assignment）**

- **Domain Matches Objective**: Designate professional roles with judgment capabilities
- **What Skills**: Add professional background description


**Example**:

```
## A - **Action Role（Role Assignment）**

You are a **product manager proficient in agile development and lean startup**, good at judging functional priorities, breaking down launch rhythms, and quickly identifying pain points and growth value from a user value perspective.
```

---

#### **R - Rule（Task Rules）**

- **Structure**: Clarify structural requirements for each part
- **Style**: Specify output content style


**Example**:

```
## R - **Rule（Task Rules）**

Please follow the following standards to complete prioritization:

* Each User Story needs to be assigned a clear priority order (1~N)
* Each Story below needs to add a **prioritization reason**, for example: "core pain point", "need to generate itinerary data first", "secondary experience", etc.
* If certain functions have **prerequisites**, please mark dependency descriptions
* Please indicate which User Stories can constitute the **minimum combination of MVP (V1.0) version**
* Please avoid unnecessary explanations, only output prioritization and reasons
```

---

#### **K - Knowledge Format（Output Format）**

- **Clear Order**: Explain format order (content + reason + notes)
- **Examples**: Provide example output formats
- **Key Output**: Clearly state in format requirements "Please indicate which User Stories can constitute the minimum combination of MVP (V1.0) version", directly incorporating decision results into output format 


**Example**:

```
## K - **Knowledge Format（Output Format）**

Please use the following format for output:

1. [User Story content]  
Prioritization reason: (e.g., core pain point, user primary need, can be completed independently)

2. [User Story content]  
Prioritization reason: (e.g., built on Story 1 foundation, secondary experience)

...

15. [User Story content]  
Prioritization reason: (e.g., dependent on other modules, non-essential function)

---
Minimum Viable Version (MVP) includes: Items 1~5
---


```


> Sample Prompt

```
## S - **Situation（Context）**

Please read the following product concept and User Stories. The background is a travel App that aims to help users easily plan independent travel arrangements including itineraries, accommodation, dining and transportation, providing smart, fashionable and customizable travel experiences.

You will face a set of pre-written User Stories, and the next task is to reasonably prioritize them according to their value and launch priority.

The provided User Story list is as follows:

{User Story}


---

## P - **Purpose（Objective）**

Your task is:
**Prioritize the above User Stories according to user value and MVP principles, and explain the prioritization reasons.**

Prioritization judgment needs to balance two major objectives:

1. **User Value**: Prioritize meeting the most core pain points in travel planning, improving efficiency, reducing anxiety or bringing key help.
2. **Minimum Viable Product (MVP) Principle**: Find the minimum functional combination that constitutes V1.0 for early launch to validate product assumptions.

---

## A - **Action Role（Role Assignment）**

You are a **product manager proficient in agile development and lean startup**, good at judging functional priorities, breaking down launch rhythms, and quickly identifying pain points and growth value from a user value perspective.

---

## R - **Rule（Task Rules）**

Please follow the following standards to complete prioritization:

* Each User Story needs to be assigned a clear priority order (1~N)
* Each Story below needs to add a **prioritization reason**

* For example: "core pain point", "need to generate itinerary data first", "secondary experience", etc.
* If certain functions have **prerequisites**, please mark dependency descriptions
* Please indicate which User Stories can constitute the **minimum combination of MVP (V1.0) version**
* Please avoid unnecessary explanations, only output prioritization and reasons

---

## K - **Knowledge Format（Output Format）**

Please use the following format for output:

1. [User Story content]  
Prioritization reason: (e.g., core pain point, user primary need, can be completed independently)

2. [User Story content]  
Prioritization reason: (e.g., built on Story 1 foundation, secondary experience)

...

15. [User Story content]  
Prioritization reason: (e.g., dependent on other modules, non-essential function)

---
Minimum Viable Version (MVP) includes: Items 1~5
---


```





---

## Step 3: User Story to Acceptance Criteria - Test Design Skills


### Best Practices

#### **S - Situation（Context）**

- **Define Purpose**: Clearly state "write structured acceptance criteria for the product development team", positioning the output purpose in the context 

**Example**:

```
##  S - **Situation（Context）**

Please read the following User Story. This task background is a travel App that aims to help users easily plan independent travel arrangements including itineraries, accommodation, dining and transportation, and provide customizable intelligent experiences.

The provided User Story is as follows:

{paste complete User Story, can be multiple}
```

---

#### **P - Purpose（Objective）**

- **Specify the end use**: Clearly write the purpose of writing acceptance criteria
- **Clarify Multiple Scenarios**: Point out key requirements (such as multiple scenarios)


**Example**:

```
Please write detailed **Acceptance Criteria** for each of the above User Stories.
Focus on clearly defining "under what circumstances this requirement can be considered complete and acceptable", and focus on **user behavior and system response**.

Each User Story should list at least **3 scenarios**, covering:

*  Normal flow (Happy Path)
*  Boundary scenarios (such as empty values, extreme inputs)
*  Exception scenarios (such as insufficient permissions, format errors)

```
---

#### **A - Action Role（Role Assignment）**


**Example**:

```
##  A - **Action Role（Role Assignment）**

You are a **senior product manager familiar with business requirements and user journeys**, good at clearly describing system behavior in non-technical language, ensuring the team has consistent understanding of functional completion standards.
```

---
#### **R - Rule（Task Rules）**


- **Standard Format**: Clearly require "use Given-When-Then (Gherkin) format", directly writing test standard format into rules 
- **Language Restrictions**: Clarify language style requirements
- **Multiple Scenarios**: Require multiple scenario types


**Example**:

```
##  R - **Rule（Task Rules）**

Please follow the following standards for writing:

* Use **Given-When-Then** (Gherkin) format to express each acceptance scenario
* Language should maintain **business terminology, avoid technical terms**
* Each scenario title should start with "Scenario:" to briefly describe the scenario
* If Story involves the following scenarios, please prioritize:
  *  Permission control (whether logged in, whether has operation permissions)
  *  Cross-device or browser differences (mobile / desktop, iOS / Android)
```

---

#### **K - Knowledge Format（Output Format）**

- **Consider the Future**: Provide complete Gherkin format examples to ensure output can be directly used for test case generation 

**Example**:

```
##  K - **Knowledge Format（Output Format）**

Please use the following format for writing, each scenario as a block:

gherkin
Scenario: Briefly describe the scenario name  
Given certain preconditions are met  
And certain system states exist (if any)  
When the user performs a certain action  
And (additional operations or inputs)  
Then the system should respond accordingly  
And (additional verification points or state changes)


Write at least three scenarios for each User Story. Please ensure the content is **specific, verifiable, and close to user language**.
```


> Sample Prompt

```
##  S - **Situation（Context）**

Please read the following User Story. This task background is a travel App that aims to help users easily plan independent travel arrangements including itineraries, accommodation, dining and transportation, and provide customizable intelligent experiences.

You will base on these User Stories to write structured acceptance criteria for the product development team, used to clarify development completion criteria and assist in testing and validating whether functions are deliverable.

The provided User Story is as follows:

{paste complete User Story, can be multiple}


---

##  P - **Purpose（Objective）**

Please write detailed **Acceptance Criteria** for each of the above User Stories.
Focus on clearly defining "under what circumstances this requirement can be considered complete and acceptable", and focus on **user behavior and system response**.

Each User Story should list at least **3 scenarios**, covering:

*  Normal flow (Happy Path)
*  Boundary scenarios (such as empty values, extreme inputs)
*  Exception scenarios (such as insufficient permissions, format errors)

---

##  A - **Action Role（Role Assignment）**

You are a **senior product manager familiar with business requirements and user journeys**, good at clearly describing system behavior in non-technical language, ensuring the team has consistent understanding of functional completion standards.

---

##  R - **Rule（Task Rules）**

Please follow the following standards for writing:

* Use **Given-When-Then** (Gherkin) format to express each acceptance scenario
* Language should maintain **business terminology, avoid technical terms**
* Each scenario title should start with "Scenario:" to briefly describe the scenario
* If Story involves the following scenarios, please prioritize:

  *  Permission control (whether logged in, whether has operation permissions)
  *  Cross-device or browser differences (mobile / desktop, iOS / Android)

---

##  K - **Knowledge Format（Output Format）**

Please use the following format for writing, each scenario as a block:

gherkin
Scenario: Briefly describe the scenario name  
Given certain preconditions are met  
And certain system states exist (if any)  
When the user performs a certain action  
And (additional operations or inputs)  
Then the system should respond accordingly  
And (additional verification points or state changes)


Write at least three scenarios for each User Story. Please ensure the content is **specific, verifiable, and close to user language**.
```

---
<br>
<br>
<br>
<br>

>## Don't try to write it perfectly the first time, use iteration to approach the prompt that best suits you


