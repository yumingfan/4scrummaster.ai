---
title: Prompt pattern3-Story to AC
author: Yuming
date: 2025-08-04
category: Prompt
layout: post
mermaid: true
---
# Prompt Pattern-3

# CN
请为以下 User Story 撰写详细的 **验收标准（Acceptance Criteria）**，重点是清楚定义「在什么情况下此需求可被视为完成且可接受」，并聚焦**使用者行为与系统回应**，以利后续开发、测试与共识建立。

---

## 背景：

{粘贴完整 User Story，可多个}

---

## 要求：

* 使用 **Given-When-Then**（Gherkin）格式表达每个情境
* 语言请务必保持 **商业用语，避免技术术语**
* 每条 User Story 至少提供 **3 种场景**，包含：

  * ✅ 正常流程（Happy Path）
  * ⚠️ 边界条件（例如：空值、极限输入）
  * ❌ 异常情境（例如：权限不足、格式错误）
* 如有登录、表单、存取等动作，请额外考虑：

  * 🔒 权限与安全控制
  * 📱 不同装置／浏览器表现

---

## 输出格式：

请按下列格式输出，每个场景一个区块：

```
场景：简要说明情境名称  
Given 某些前置条件成立  
And 某些系统状态存在  
When 使用者执行某个动作  
And （若有）额外操作或输入  
Then 系统应有的回应  
And 额外的验证点或状态变更
```

---

## 范例：

**User Story：**
作为一位偏好客制化的使用者，我希望能自行调整推荐行程中的景点与时间，以便让旅程更贴近我的需求与节奏。

**生成的验收标准：**

```gherkin
场景：使用者成功调整推荐行程  
Given 使用者已登录并建立个人旅程  
And 系统已显示一组推荐行程  
When 使用者点击「调整行程」按钮  
And 修改其中一项景点时间  
Then 系统应更新该项目时间  
And 显示「修改成功」讯息

场景：输入不合理时间（边界条件）  
Given 使用者正在调整行程  
When 使用者将景点时间调整为「凌晨 3 点」  
Then 系统应提示「输入时间不在可访时间内」  
And 禁止提交行程变更

场景：未登录状态调整行程（异常情况）  
Given 使用者尚未登录  
When 尝试进入「推荐行程调整页」  
Then 系统应导向登录页面  
And 显示「请先登录以使用此功能」的讯息
```


# CN Prompt Pattern 介绍

## 区块介紹

| 区块        | 用途           | 本次案例包含                     | 设计重点                    |
| --------- | ------------ | ------------------------- | ----------------------- |
| 1. 语意引导段  | 引导 AI 聚焦任务本质 | 强调「什么叫做完成」、使用者行为、系统回应     | 用语务必**清楚明确**、**非技术化**   |
| 2. 背景区块   | 提供上下文        | 一条或多条 User Story（标准格式）    | 格式稳定、清楚标示               |
| 3. 任务规则区块 | 限定产出格式与品质    | Gherkin 语法、场景类型、语言风格、异常考量 | 条列式，使用 Emoji 与分类，帮助快速理解 |
| 4. 输出格式区块 | 提供生成参考样板     | 标准 Gherkin 的输出架构          | 简短、可复制、变量化，让 AI 模仿      |
| 5. 范例区块   | 训练 AI 如何写    | 写好的一组范例供模仿（含正常＋异常＋边界）     | 范例真实且完整，避免过于简略          |

---

## 各区块撰写教学

### 1. 语意引导段

**目标：建立意图明确的开场语句**
避免直接说「请帮我写 Gherkin」，而要引导 AI 知道「我希望你根据需求、使用者行为与预期回应，产出符合验收条件的内容」。

**写法范例：**

> 请为以下 User Story 撰写详细的验收标准（Acceptance Criteria），重点是清楚定义「在什么情况下此需求可被视为完成且可接受」，并聚焦**使用者行为与系统回应**，以利后续开发、测试与共识建立。

---

### 2. 背景区块

**目标：提供上下文让 AI 能理解需求语境**

**注意：**

* 支持贴上多条 User Story
* 每条最好使用标准格式（As a... I want... So that...）

**写法范例：**

```
## 背景：

作为一位偏好客制化的使用者，我希望能自行调整推荐行程中的景点与时间，以便让旅程更贴近我的需求与节奏。
```

---

### 3. 📋 任务规则区块（最关键）

**目标：定义 AI 输出的格式与质量标准**

**设计技巧：**

* 使用条列式写法搭配 Emoji（✅ ⚠️ ❌ 🔐 📱）以视觉化分类
* 明确列出输出的范围（例如要 3 种情境）
* 避免模糊语句，如「请尽量清楚描述」→ 改为「每条 User Story 至少提供 3 种场景」

**范例段落：**

```
## 要求：

* 使用 **Given-When-Then**（Gherkin）格式表达每个情境  
* 语言请务必保持 **商业用语，避免技术术语**  
* 每条 User Story 至少提供 **3 种场景**，包含：  
  * ✅ 正常流程（Happy Path）  
  * ⚠️ 边界条件（例如：空值、极限输入）  
  * ❌ 异常情境（例如：权限不足、格式错误）  
* 如有登录、表单、存取等动作，请额外考虑：  
  * 🔒 权限与安全控制  
  * 📱 不同装置／浏览器表现
```

---

### 4.  输出格式区块

 **目标：提供 AI 模仿的格式模版**

**设计建议：**

* 使用程序区块标记 \`\`\`gherkin（语法高亮用）\*\*
* 标题行要简单：「场景：XXX」
* 建议保留「And」段，鼓励丰富细节

**范例格式：**

```gherkin
场景：简要说明情境名称  
Given 某些前置条件成立  
And 某些系统状态存在  
When 使用者执行某个动作  
And （若有）额外操作或输入  
Then 系统应有的回应  
And 额外的验证点或状态变更
```

---

### 5. 范例区块

**目标：让 AI 学会「好内容长怎样」**

📌 **注意事项：**

* 范例至少要涵盖：正常流程 + 边界条件 + 错误情境
* 每段都要清楚对应到前面的格式范本
* 一次只给一条 User Story，让 AI 专注模仿

📌 **写法范例：**

```gherkin
场景：使用者成功调整推荐行程  
Given 使用者已登录并建立个人旅程  
And 系统已显示一组推荐行程  
When 使用者点击「调整行程」按钮  
And 修改其中一项景点时间  
Then 系统应更新该项目时间  
And 显示「修改成功」讯息
```



# Prompt Pattern-3

# EN

Please write detailed **Acceptance Criteria** for the following User Story. Focus on clearly defining “under what conditions this requirement can be considered complete and acceptable,” emphasizing **user behavior and system response** to support development, testing, and team alignment.

---

## Background:

{Paste full User Story here; multiple stories allowed}

---

## Requirements:

* Express each scenario using **Given-When-Then** (Gherkin) format
* Ensure the language remains **business-oriented and avoids technical jargon**
* Provide **at least 3 scenarios per User Story**, including:

  * ✅ Happy Path (normal flow)
  * ⚠️ Boundary Conditions (e.g., null values, extreme input)
  * ❌ Exception Scenarios (e.g., insufficient permissions, format errors)
* If login, forms, or data access actions are involved, also consider:

  * 🔒 Permission and security controls
  * 📱 Behavior across devices/browsers

---

## Output Format:

Please use the following structure, with one block per scenario:

```gherkin
Scenario: Brief description of the situation  
Given certain preconditions are met  
And specific system states exist  
When the user performs a particular action  
And (if any) additional actions or inputs  
Then expected system response  
And additional verification point or state change
```

---

## Example:

**User Story:**
As a user who prefers customization, I want to adjust the suggested itinerary’s attractions and timings so that my trip better fits my needs and pace.

**Generated Acceptance Criteria:**

```gherkin
Scenario: User successfully adjusts recommended itinerary  
Given the user is logged in and has created a personal itinerary  
And the system has displayed a recommended itinerary  
When the user clicks the "Adjust Itinerary" button  
And modifies the timing of an attraction  
Then the system should update the timing for that item  
And display a "Modification Successful" message

Scenario: Inputting an unreasonable time (boundary condition)  
Given the user is adjusting the itinerary  
When the user sets the time of an attraction to "3:00 AM"  
Then the system should display a message "Time is outside visitable hours"  
And block submission of itinerary changes

Scenario: Adjusting itinerary while not logged in (exception case)  
Given the user is not logged in  
When attempting to access the "Recommended Itinerary Adjustment Page"  
Then the system should redirect to the login page  
And display a message "Please log in to use this feature"
```

---

#  Prompt Pattern Introduction

## 🧱 Five Key Sections of a High-Quality Prompt

| Section          | Purpose                             | Present in This Template                                             | Design Focus                                 |
| ---------------- | ----------------------------------- | -------------------------------------------------------------------- | -------------------------------------------- |
| 1. Semantic Lead | Directs AI to the task's core       | Emphasizes “what is considered done,” user behavior, system response | Language must be **clear and non-technical** |
| 2. Background    | Provides context                    | One or more User Stories (standard format)                           | Stable format with clear labels              |
| 3. Task Rules    | Constrains output style and quality | Gherkin syntax, scenario types, tone, edge cases                     | Bullet format, uses emojis for readability   |
| 4. Output Format | Offers a structural template        | Standard Gherkin output structure                                    | Simple, copyable, templated for imitation    |
| 5. Example       | Trains AI with quality reference    | Complete sample with normal + exception + boundary                   | Realistic and complete, not overly brief     |

---

## Writing Instructions for Each Section

### 1. Semantic Lead

**Goal: Set a clearly intentional opening statement**
Avoid simply saying “write Gherkin.” Instead, guide the AI by stating, “I want you to write criteria based on user behavior and expected system response.”

**Sample Wording:**

> Please write detailed Acceptance Criteria for the following User Story. Focus on clearly defining “under what conditions this requirement can be considered complete and acceptable,” emphasizing **user behavior and system response** to support development, testing, and team alignment.

---

### 2. Background Section

**Goal: Provide context for AI to understand the task**

**Tips:**

* Support multiple User Stories
* Preferably use the standard format: "As a... I want... So that..."

**Sample Format:**

```
## Background:

As a user who prefers customization, I want to adjust the suggested itinerary’s attractions and timings so that my trip better fits my needs and pace.
```

---

### 3. 📋 Task Rules Section (Most Critical)

**Goal: Define output format and quality standards for the AI**

**Design Tips:**

* Use bullet format with emojis (✅ ⚠️ ❌ 🔐 📱) to visually categorize
* Clearly state output scope (e.g., 3 scenarios required)
* Avoid vague phrases like “describe clearly” → use “at least 3 scenarios per User Story”

**Example Paragraph:**

```
## Requirements:

* Express each scenario using **Given-When-Then** (Gherkin) format  
* Ensure the language remains **business-oriented and avoids technical jargon**  
* Provide **at least 3 scenarios per User Story**, including:  
  * ✅ Happy Path (normal flow)  
  * ⚠️ Boundary Conditions (e.g., null values, extreme input)  
  * ❌ Exception Scenarios (e.g., insufficient permissions, format errors)  
* If login, forms, or data access actions are involved, also consider:  
  * 🔒 Permission and security controls  
  * 📱 Behavior across devices/browsers
```

---

### 4. Output Format Section

**Goal: Provide an output template for AI to mimic**

**Design Tips:**

* Use code block and `gherkin` for syntax highlighting
* Keep the title line simple: “Scenario: XXX”
* Include “And” lines to encourage detailed steps

**Sample Format:**

```gherkin
Scenario: Brief description of the situation  
Given certain preconditions are met  
And specific system states exist  
When the user performs a particular action  
And (if any) additional actions or inputs  
Then expected system response  
And additional verification point or state change
```

---

### 5. Example Section

**Goal: Teach the AI what good output looks like**

📌 **Notes:**

* Example must include: Happy Path + Boundary Condition + Exception
* Each scenario should follow the format above precisely
* Provide one User Story at a time to help the AI stay focused

📌 **Sample:**

```gherkin
Scenario: User successfully adjusts recommended itinerary  
Given the user is logged in and has created a personal itinerary  
And the system has displayed a recommended itinerary  
When the user clicks the "Adjust Itinerary" button  
And modifies the timing of an attraction  
Then the system should update the timing for that item  
And display a "Modification Successful" message
```
