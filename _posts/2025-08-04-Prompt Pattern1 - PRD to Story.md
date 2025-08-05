---
title: Prompt pattern1-PRD to Story
author: Yuming
date: 2025-08-04
category: Prompt
layout: post
mermaid: true
---
# Prompt Pattern-1

# CN
请将以下产品需求或构想转化成一组符合 INVEST 原则的 User Stories。重点是确保每个 Story 至少具有 Value（为用户或业务带来明确价值）与 Testable（可以验收）。

## 背景：

{粘贴完整背景和构想}

## 要求：

- 每个 User Story 使用标准格式书写：“作为一名 [角色]，我想要 [目标]，从而 [获益]”
- 每条 Story 应清晰表述其价值（Value）与可测试性（Testable）
- 将模糊、情感化的语言（如“好玩”“有感觉”）转化为行为和功能导向的内容
- 仅生成user story即可
- User Story 必须具体且可执行
- 确保User Story覆盖全部背景需求


## INVEST 原则检查表

| 原则代号 | 说明 |
|---------|------|
| **I – Independent** | Story 应能独立完成，不依赖其他故事 |
| **N – Negotiable** | 可协商，不应是规格书 |
| **V – Valuable** | 必须对使用者或业务有价值 |
| **E – Estimable** | 团队能估算其工作量 |
| **S – Small** | 足够小，能在一个 Sprint 内完成 |
| **T – Testable** | 具有可验证的条件与标准 |

> **注**：User Story 并非每项 INVEST 都完美符合，但至少应具备 **V（Value）** 与 **T（Testable）**



# CN Prompt Pattern 介绍
一个好的提示词的原则：
1.　Be Specific and Clear  具体明确
2.　Provide Context  提供背景资料

上面的提示词，包含了几个部分
1.　目标
2.　背景
3.　要求
4.　额外的资讯(这个案例是INVEST 原则检查表)
> 透过结构化的描述可以让让模型能辨识哪些资讯是「背景语义」，哪些是「生成任务」



##　目标
请将以下产品需求或构想转化成一组符合 INVEST 原则的 User Stories。重点是确保每个 Story 至少具有 Value（为用户或业务带来明确价值）与 Testable（可以验收）

> 明确指出「输入是构想」「输出是 User Story」，帮助模型聚焦任务转换
> 强调 INVEST 中的 V + T 是最低要求，避免模型生成无验证标准或缺乏商业价值的故事

 ## 背景：{粘贴完整背景和构想}

> 这是一个 明确的上下文栏位位子，让模型能辨识哪些资讯是「背景语义」，哪些是「生成任务」
> LLM 在撷取语义线索时会优先比对「最近且具结构标记」的内容，这个明确分隔能降低误判

## 要求：
这一区的条列设计非常关键，逐项规范了生成风格，帮助 LLM 对输出内容进行行为约束与风格默认。

| 条目                                                     | 为何对 LLM 有效                           |
| ------------------------------------------------------ | ------------------------------------ |
| 每个 User Story 使用标准格式书写：“作为一名 \[角色]，我想要 \[目标]，从而 \[获益]” | 提供明确输出模板，语言模型可重复套用语法模板以稳定格式          |
| 每条 Story 应清晰表述其价值与可测试性                                 | 建立「内容合格」的语义框架，避免模型生成只是功能描述而无验收基准的内容  |
| 将模糊、情感化的语言转化为行为和功能导向的内容                                | 指导模型避免使用非具体词（如“很酷”“感觉良好”），进而提升商业可落地性 |
| 仅生成user story即可                                        | 消除额外赘词或说明性叙述，提升输出清晰度与可读性             |
| User Story 必须具体且可执行                                    | 加强 LLM 的故事拆解粒度，避免生成太大的 Epic 或概念性输出   |
| 确保User Story覆盖全部背景需求                                   | 促使模型进行「语意范围比对」与覆盖检查（语意闭合性），降低漏项风险    |


## INVEST 原则检查表
透过提供标准让模型可以有判断依据
> 注明：「至少包含 V 与 T」是重要的提示细节，会被 LLM 解读为 minimum acceptance gate。

## 总结：

|   策略       | 说明                       |
| ----------- | ------------------------   |
| **语境清晰**    | 分隔背景与任务指令，帮助 LLM 精准对齐任务  |
| **格式约束明确**  | 范文句型与栏位提示帮助模型稳定输出        |
| **内容要求具体**  | 明确规范语气与内容（避免模糊词），提升实用性   |






# EN
Please convert the following product requirements or ideas into a set of User Stories that comply with the INVEST principles. Each story must clearly demonstrate Value (for users or the business) and be Testable (with clear acceptance criteria).

## Background:
{Paste full background and product concept here}

## Requirements:
- Each User Story should follow the standard format:
"As a [role], I want [goal], so that [benefit]"
- Each story must clearly describe its value (Valuable) and ensure it is testable (Testable)
- Replace vague or emotional language (e.g., “fun,” “cool-looking”) with behavior- or feature-oriented descriptions
- Only generate the user stories
- User Stories must be specific and actionable
- Ensure the User Stories cover all aspects of the background requirements.

## INVEST Principles Checklist
| Code | Description |
|---------|------|
| **I – Independent** |The story should be self-contained and not dependent on other stories|
| **N – Negotiable** | The story should be open to discussion and not a fixed specification|
| **V – Valuable** | The story must deliver value to the user or the business|
| **E – Estimable** | The team should be able to estimate the effort required |
| **S – Small** | The story should be small enough to complete within a single Sprint |
| **T – Testable** | The story should have clear acceptance criteria to verify completion|

> **Note**： A story may not perfectly meet every INVEST attribute, but it must at least fulfill **V (Valuable)** and **T (Testable)**.





# EN Prompt Pattern Introduction

Principles of a good prompt:

1. **Be Specific and Clear**
2. **Provide Context**


The prompt above consists of several parts:

1. **Objective**
2. **Background**
3. **Requirements**
4. **Additional Information** (in this case, an INVEST principle checklist)

> A structured description helps the model distinguish between “contextual semantics” and “generation tasks.”

---

## Objective

Please transform the following product ideas or requirements into a set of User Stories that follow the INVEST principles. Make sure each story includes at least **Value (brings clear value to the user or business)** and **Testable (can be accepted or validated).**

> Clearly state that “the input is a concept” and “the output is a User Story” to help the model focus on the transformation task.
> Emphasize that **V + T** from INVEST are the minimum standard to avoid generating stories without validation criteria or business value.

---

## Background: {paste full background and concept here}

> This is a clearly defined context section, helping the model distinguish “contextual semantics” from “generation tasks.”
> LLMs prioritize structurally marked and recent context when capturing semantic cues — this clear separation helps reduce misinterpretation.

---

## Requirements:

This section’s bullet points are critical. They regulate the output style item by item, helping the LLM apply behavioral constraints and default formatting.

| Item                                                                                          | Why It Works for LLMs                                                                                      |
| --------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| Each User Story must follow the format: “As a \[role], I want to \[goal], so that \[benefit]” | Provides a clear output template; the model can apply and repeat the grammar structure consistently        |
| Each Story must clearly state its value and testability                                       | Establishes a “content qualified” semantic frame; avoids stories with no acceptance criteria               |
| Turn vague, emotional language into action- and function-oriented content                     | Guides the model to avoid non-specific words (e.g., “cool,” “feels nice”) and improves practical usability |
| Only generate the User Story                                                                  | Eliminates extra explanations or redundant text, improving clarity and readability                         |
| User Story must be specific and actionable                                                    | Reinforces the model’s granularity, avoiding overly broad epics or conceptual outputs                      |
| Ensure all background requirements are covered                                                | Encourages the model to perform “semantic coverage check” to avoid missing parts                           |

---

## INVEST Principle Checklist

Providing standards helps the model evaluate its own output.

> Note: "At least include V and T" is a crucial prompt detail, interpreted by the LLM as the minimum acceptance gate.

---

## Additional Tips: Prompt Writing Strategies

| Strength                           | Description                                                                             |
| ---------------------------------- | --------------------------------------------------------------------------------------- |
| **Clear Context**                  | Separates background from instructions to align the model precisely with the task       |
| **Explicit Format**                | Sentence template and section cues help stabilize output                                |
| **Concrete Content**               | Specifies tone and content clearly (avoids vague wording), enhancing practical value    |


