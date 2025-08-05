---
title: Prompt Pattern2-Order the Stories
author: Yuming
date: 2025-08-04
category: Prompt
layout: post
mermaid: true
---
# Prompt Pattern-2


请根据以下需求，对这组 User Story 进行排序，排序逻辑需考量以下两大原则：

---

### 🎯 排序目标

1. **使用者价值（User Value）**：优先满足使用者在旅游规划中最核心的痛点或需求，特别是能直接提升任务效率、情绪体验或降低阻力的功能。
2. **最小可行产品（MVP）原则**：优先满足使用者「核心需求」的最小功能组合，能让产品尽早上线并验证价值假设

---

### 📌 任务说明：

请你扮演一位精通敏捷以及精益创业的产品负责人，针对下列一组User Stories，根据「先解决痛点、再加强体验」的逻辑进行排序。

排序结果请列出：

*  每一条 User Story 的排序顺位
* 简要说明排序原因（例如：依赖其他功能、技术难度高、属于加值体验等）

---

### User Story：

{User Story}

---

###  输出格式：

请按照下列格式回覆结果：

```
1. [User Story 内容]  
 排序原因（例如：属于核心痛点、可独立完成）

2. [User Story 内容]  
 排序原因（...）

...

15. [User Story 内容]  
 排序原因（属于次要体验，依赖其他模组完成）
```

---

### 要求
* 如功能之间有依赖性，请标明（例如：调整行程需先产生行程）
* 请特别指出哪些功能**可以形成最小可行版本**（例如排序第 1～5 可构成 V1.0）


# CN Prompt Pattern 介绍


##   区块介绍


| 区块名称             | 功能               | 建议写法重点                      |
| ---------------- | ---------------- | --------------------------- |
| 1. 语意引导段         | 说明排序任务的本质与重要性    | 用一句话清楚定义目标与考量面向             |
| 2.  排序目标       | 明确指出排序依据         | 切记要**具体且可操作**，避免抽象词         |
| 3.  任务说明       | 建立 AI 的角色扮演与行为逻辑 | 模拟真实情境，赋予 AI 背景角色（如 PM）     |
| 4. User Story 区块 | 放入具体要排序的素材       | 格式统一、语句清楚、有标准 User Story 结构 |
| 5. 输出格式区块        | 定义回覆结果的格式标准      | 条列式、有层次、搭配说明文字              |
| 6. 额外要求区块        | 补充排序的进阶判断标准      | 例如依赖关系、MVP 分界、技术成本等         |

---

##  各区块撰写与设计教学

---

### 1️ 开场说明段（请根据以下需求...）

 **目的**：建立任务上下文，让 AI 明确知道「要做什么」。

 **撰写建议**：

* 使用「请根据以下需求...」作为自然语句开头
* 明确点出任务动作（例如：「对这组 User Story 进行排序」）

 **错误示范**：「请帮我看看这些 User Story 哪个重要」→ 太模糊，无法触发正确逻辑

---

### 2️⃣ 排序目标段（排序逻辑需考量...）

 **目的**：明确列出排序的**逻辑依据与判断准则**

 **撰写建议**：

* 使用标题提升辨识性
* 建议条列两到三项，避免过度复杂
* 避免使用如「请考虑实用性」等抽象词，改为具体可推理的语言

 **范例**：

```
1. 使用者价值（User Value）：优先解决高频痛点、能立即改善使用者效率或情绪体验的功能
2. 最小可行产品（MVP）原则：构成核心旅游规划体验的最基本功能集合，可尽快验证市场反应
```

---

###  任务说明段（请你扮演一位...）

**目的**：让 AI 进入正确的专业角色，使用符合该角色的思维排序

**撰写建议**：

* 明确指定角色（如：「产品负责人」「懂精益创业的 PM」）
* 搭配任务策略，例如「先解决痛点、再强化体验」
* 语气务必专业清晰，避免指令过多造成混乱

**好写法范例**：

```
请你扮演一位精通敏捷以及精益创业的产品负责人，针对下列一组 User Stories，根据「先解决痛点、再加强体验」的逻辑进行排序。
```

---

### User Story 区块（{User Story}）

**目的**：提供排序素材，供 AI 分析内容与价值

**撰写建议**：

* 使用标准 User Story 格式：`作为一位... 我希望... 从而...`
* 多条建议置于 `{}` 中或明确段落，格式一致
* 使用者视角要清楚，避免过多系统内部描述

**错误示范**：「使用者希望功能稳定」→ 无具体情境或行为，不易判断价值

---

### 输出格式区块（请按照下列格式回覆...）

**目的**：让 AI 回答时**有逻辑、有层次、有结构**

**撰写建议**：

* 使用数字排序搭配段落（例如：1.、2.）
* 每项搭配一段简要「排序原因」
* 可使用程序区块 ` ``` ` 包起来，提升可复制性与清晰度

**建议范式**：

```markdown
1. [User Story]  
 排序原因（属于核心痛点、使用率高）

2. [User Story]  
 排序原因（依赖功能尚未开发，建议推迟）

...

15. [User Story]  
 排序原因（属于体验优化，MVP 可不纳入）
```

---

### 要求补充区块（例如：如有依赖关系...）
**目的**：强化排序逻辑的深度与可解释性

**撰写建议**：

* 提醒 AI 处理依赖关系（如「功能 A 需先于功能 B」）
* 建议标示 MVP v1.0 的范围（例如前 5 项）
* 保持条列简洁，不要再加太多复杂逻辑

**范例**：

```
* 如功能之间有依赖性，请标明（例如：调整行程需先产生行程）
* 请特别指出哪些功能**可以形成最小可行版本**（例如排序第 1～5 可构成 V1.0）
```

---

## 补充建议：提示词撰写小技巧

### Pattern 1

| 策略          | 说明                       |
| ----------- | ------------------------ |
| **语境清晰**    | 分隔背景与任务指令，帮助 LLM 精准对齐任务  |
| **格式约束明确**  | 范文句型与栏位提示帮助模型稳定输出        |
| **内容要求具体**  | 明确规范语气与内容（避免模糊词），提升实用性   |

### Pattern 2

| 策略        | 说明                               |
| -------- | ------------------------------- |
| **指派角色**   | 让 AI 模拟出更专业逻辑（如 PM、设计师、顾问）      |
| **明确任务目标** | 「排序」、「评估」、「列出优先顺序」需明确出现在开场句     |         |
| **避免模糊语言** | 例如：「请根据重要性排序」不如「请根据使用者价值排序」来得准确 |


以下是将你提供的排序任务提示翻译成英文，并保留格式一致的英文版本：

---

# Prompt Pattern-3

# EN

Please prioritize the following User Stories based on the criteria below. Your sorting logic should consider the following two core principles:

---

### 🎯 Prioritization Goals

1. **User Value**: Prioritize features that address the most critical pain points in the travel planning process—especially those that directly improve task efficiency, emotional experience, or reduce friction.
2. **Minimum Viable Product (MVP) Principle**: Prioritize the smallest functional set that fulfills core user needs, enabling the product to launch early and validate its value hypothesis.

---

### 📌 Task Instructions:

You are a product owner skilled in Agile and Lean Startup methodologies. Review the following list of User Stories and sort them based on the logic of “solving pain points first, enhancing experience later.”

Your prioritization should include:

* The ranking of each User Story
* A brief explanation for each ranking (e.g., feature dependency, technical complexity, value level)

---

### User Story:

{User Story}

---

### Output Format:

Please reply using the following structure:

```
1. [User Story content]  
Reason for prioritization (e.g., addresses core pain point, can be implemented independently)

2. [User Story content]  
Reason for prioritization (...)

...

15. [User Story content]  
Reason for prioritization (secondary experience, depends on other modules)
```

---

### Requirements

* If there are dependencies between features, please indicate them (e.g., "Adjust itinerary" requires "Itinerary generation" first)
* Clearly specify which features **can form the Minimum Viable Product (MVP)** (e.g., items 1–5 can compose V1.0)

---

# EN Prompt Pattern Overview

## Section Overview

| Section Name               | Function                                          | Key Writing Focus                                             |
| -------------------------- | ------------------------------------------------- | ------------------------------------------------------------- |
| 1. Semantic Intro          | Clarify the essence and value of the sorting task | One clear sentence defining objective and evaluation criteria |
| 2. Prioritization Goals    | Specify decision-making basis                     | Must be **concrete and actionable**                           |
| 3. Task Instructions       | Set AI’s role and sorting behavior                | Simulate a real-world scenario and role like PM               |
| 4. User Story Block        | Provide material for prioritization               | Consistent format, clear user-centric language                |
| 5. Output Format           | Define a clear reply structure                    | Bullet list with explanations                                 |
| 6. Additional Requirements | Add advanced logic for refinement                 | Dependency, MVP boundary, technical effort, etc.              |

---

## Section Writing Guidelines

---

### 1️⃣ Semantic Intro ("Please prioritize the following...")

**Goal**: Establish task context so the AI clearly understands the required action.

**Tips**:

* Start naturally with “Please prioritize the following...”
* Clearly state the action (e.g., "prioritize the User Stories")

**Bad Example**: “Please help check which one is important” → too vague for proper reasoning.

---

### 2️⃣ Prioritization Goals

**Goal**: Define the logical evaluation criteria for sorting.

**Tips**:

* Use a header for visual separation
* Keep it to 2–3 criteria to avoid overcomplexity
* Avoid vague terms like “consider practicality”—use precise language

**Example**:

```
1. User Value: Prioritize high-frequency pain points that improve user efficiency or emotional experience.  
2. MVP Principle: Prioritize core travel planning features to quickly validate market response.
```

---

### 3️⃣ Task Instructions ("You are a product owner...")

**Goal**: Put the AI into the correct professional mindset for decision-making.

**Tips**:

* Explicitly assign a role (e.g., Product Owner, Lean PM)
* Tie in a decision strategy (e.g., “pain points first”)
* Keep it professional and directive, avoid overwhelming complexity

**Good Example**:

```
You are a product owner experienced in Agile and Lean Startup. Please prioritize the following User Stories based on the logic of "solve pain points first, enhance experience later."
```

---

### 4️⃣ User Story Block ({User Story})

**Goal**: Provide structured material for AI to assess value and order.

**Tips**:

* Use standard User Story format: `As a [user], I want to [goal], so that [benefit]`
* Use consistent formatting and separate stories clearly
* Avoid vague or overly technical statements

**Bad Example**: “The user wants stable performance” → lacks scenario or behavior for value assessment.

---

### 5️⃣ Output Format Block ("Please reply using the following structure")

**Goal**: Ensure the AI produces responses that are logical, structured, and easy to follow.

**Tips**:

* Use numbered list format (1., 2., ...)
* Include a short reason per item
* Enclose in a code block `markdown` if needed for clarity and copyability

**Sample Pattern**:

```markdown
1. [User Story]  
Reason: Addresses core pain point, high user need

2. [User Story]  
Reason: Depends on another feature, should be implemented later

...

15. [User Story]  
Reason: Optional experience enhancement, not required for MVP
```

---

### 6️⃣ Additional Requirements Block ("e.g., If dependencies exist...")

**Goal**: Deepen the logic of prioritization and clarify deliverable boundaries

**Tips**:

* Remind the AI to analyze feature dependencies (e.g., "A must precede B")
* Ask for MVP boundary to be marked (e.g., “Items 1–5 form MVP v1.0”)
* Keep it concise—don’t introduce unnecessary complexity

**Example**:

```
* If dependencies exist between features, please indicate (e.g., adjusting itinerary requires itinerary generation)  
* Clearly indicate which features **can form the MVP (v1.0)** (e.g., items 1–5)
```

---

## Additional Tips: Prompt Writing Strategies

### Pattern 1

| Strategy                  | Description                                       |
| ------------------------- | ------------------------------------------------- |
| **Clear Context**         | Separate background and instruction for accuracy  |
| **Explicit Formatting**   | Sample templates and labels help stabilize output |
| **Concrete Requirements** | Specify tone and content to ensure practicality   |

### Pattern 2

| Strategy                  | Description                                                                                                         |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| **Role Assignment**       | Helps the AI simulate more professional logic (e.g., PM, designer, consultant)                                      |
| **Clear Task Objectives** | Make sure terms like “prioritize,” “evaluate,” or “list in order of importance” appear explicitly in the opening    |
| **Avoid Vague Language**  | For example, “Please prioritize based on importance” is less effective than “Please prioritize based on user value” |
