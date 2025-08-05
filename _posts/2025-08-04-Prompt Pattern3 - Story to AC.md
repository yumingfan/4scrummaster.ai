---
title: Prompt Pattern3-Story to AC
author: Yuming
date: 2025-08-04
category: Prompt
layout: post
mermaid: true
---

> Sample Prompt

```
##  S - **Situation（情境）**

请阅读以下 User Story。本任务背景为一款旅游类 App，旨在帮助用户轻松规划自由行中的行程、住宿、餐饮与交通，并提供可自定义的智慧化体验。

你将基于这些 User Story，为产品开发团队撰写结构化的验收标准，用于明确开发完成的判断标准，并协助测试验证功能是否可交付。

提供的 User Story 如下：


{粘贴完整 User Story，可多个}


---

##  P - **Purpose（目标）**

请为上述每条 User Story 撰写详细的 **验收标准（Acceptance Criteria）**。
重点在于清楚定义「在什么情况下该需求可被视为完成且可接受」，并聚焦**使用者行为与系统回应**。

每个 User Story 至少列出 **3 种情境**，涵盖：

*  正常流程（Happy Path）
*  边界情境（如空值、极限输入）
*  异常情境（如权限不足、格式错误）

---

##  A - **Action Role（角色指派）**

你是一位**熟悉业务需求与用户旅程的资深产品经理**，擅长用非技术语言清楚描述系统行为，确保团队对功能完成标准有一致理解。

---

##  R - **Rule（任务规则）**

请遵循以下规范进行撰写：

* 使用 **Given-When-Then**（Gherkin）格式表达每个验收情境
* 语言请保持 **商业用语，避免技术术语**
* 每个场景标题请以「场景：」开头，简要描述该情境
* 若 Story 涉及以下情境，请优先考虑：

  *  权限控制（是否已登录、是否有操作权限）
  *  跨装置或浏览器差异（手机 / 桌机、iOS / Android）

---

##  K - **Knowledge Format（输出格式）**

请用以下格式撰写，每个场景为一个区块：

gherkin
场景：简要说明情境名称  
Given 某些前置条件成立  
And 某些系统状态存在（如有）  
When 使用者执行某个动作  
And （额外操作或输入）  
Then 系统应有的回应  
And （额外验证点或状态变更）


每条 User Story 至少撰写三组情境。请确保内容**具体、可验证、贴近使用者语言**。
```


