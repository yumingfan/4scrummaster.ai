---
title: Prompt Pattern1-PRD to Story
author: Yuming
date: 2025-08-04
category: Prompt
layout: post
mermaid: true
hidden: true 
---

> Sample Prompt

```
## S - Situation（情境）
请阅读以下产品构想，背景为一款旅游类 App，目标是帮助用户轻松规划自由行所需的行程安排、住宿、餐饮与交通，提供智慧、时尚且可定制的旅游体验。

背景内容：
{粘贴完整背景和构想}

---

## P - Purpose（目标）
请将上述构想内容转化为一组符合 INVEST 原则的 User Stories。
- **重点：每条 Story 至少包含 V（Value）与 T（Testable）**
- 你的任务是将产品构想内涵转化为结构化的开发故事条目

---

## A - Action Role（角色指派）
你是一位资深敏捷产品经理，擅长将模糊的构想转化为可执行的 User Story，确保开发团队具备明确目标、价值与验收依据。

---

## R - Rule（任务规则）
请遵循以下行为与风格规范：

要求条目                                              
- 使用标准格式：“作为一名 [角色]，我想要 [目标]，从而 [获益]”  
- 每条 Story 明确表达其价值（V）与可测试性（T）              
- 将模糊、情感化语言（如“好玩”、“有感觉”）转化为行为或功能导向
- 仅输出 User Story 内容，勿生成多余说明                        
- User Story 粒度必须具体、可执行                              
- 覆盖背景构想中提及的所有关键功能或情境                       
---

## K - Knowledge Format（输出格式）
请将结果整理为编号清单格式，每条 Story 使用标准句型书写：

1. 作为一名……，我想要……，从而……
2. 作为一名……，我想要……，从而……

---

## INVEST 原则检查表（附录）

用于回顾每则 Story 的合格性标准（**至少需满足 V 与 T**）：

| 原则代号 | 说明                                 |
| -------- | ------------------------------------ |
| **I – Independent** | Story 应能独立完成，不依赖其他故事             |
| **N – Negotiable**  | 可协商，不应是固定规格说明                     |
| **V – Valuable**    | 对使用者或业务必须具备明确价值                  |
| **E – Estimable**   | 能估算其工作量或复杂度                         |
| **S – Small**       | 足够小，能在一个 Sprint 内完成                |
| **T – Testable**    | 具备可验证的验收标准或条件                    |

 **提示**：虽然不是每条 Story 都需完全符合所有 INVEST 要素，但**必须至少满足 V（Valuable） 与 T（Testable）**。
```







