---
title: PRD Sample
author: Yuming
date: 2025-08-04
category: PRD
layout: post
mermaid: true
---
# SingaHai Travel Buddy
## 📌 目的與背景 | Purpose & Background
本專案目的是做一款幫助旅客在新加坡和上海自由行時變得更方便的 App。現代人都很忙，沒空做功課，所以這個 App 會一次搞定吃住玩交通，讓行程變得簡單又有趣。	
這款 App 要看起來智慧、時尚、要讓人一打開就覺得好用，像是他們的旅遊靈魂伴侶。未來也可能拓展到其他城市。	
The goal of this project is to create an app that helps travelers enjoy a smoother and more fun trip between Singapore and Shanghai. Modern people are too busy to plan, so the app should handle food, lodging, sightseeing, and transport all at once.
The app should feel smart, trendy, and intuitive—like a personal travel soulmate. Expansion to other cities is possible in the future.

## 🧍‍♂️ 用戶角色 | User Personas
角色描述	 Persona Description
- **小艾（22歲，大學生）**  ：喜歡自由行，不想排隊又怕踩雷，喜歡深夜活動。	
Ai (22, student): Likes freeform travel, avoids queues and tourist traps, prefers nightlife.
- **阿邦（29歲，工程師）**：時間寶貴，希望行程有效率，偏好安靜住宿。	
Bong (29, software engineer): Time-conscious, prefers efficient itineraries and quiet hotels.
- **萱萱（25歲，美食部落客）**：每天都要吃特色美食，講究擺盤與氣氛。	
Xuan (25, food blogger): Eats photogenic, local dishes every day. Prefers stylish environments.
- **Unicorn User**：內向外向都行，想自由也想被規劃，沒錢但想奢華，有選擇障礙又要求很多。	
Unicorn User: Introverted and extroverted, wants freedom and structure, low budget but high expectations, indecisive yet picky.

## 🛠 功能需求 | Functional Requirements
### 📍 行程規劃 | Itinerary Planning
**需求	 Requirement**
- 可以滑動、拖拉式的行程安排功能，像 Notion 一樣好操作。	
Swipeable, drag-and-drop itinerary planner—similar to Notion.
- 每個活動要顯示交通方式、費用、距離與時間。	
Each activity should display transport options, rough cost, distance, and travel time.
- 希望可以「一鍵排好」，除非用戶想自己微調。	
Ideally, users can auto-generate itineraries and edit them later if desired.
- 行程可以分享、改編、複製別人行程。	
Users should be able to copy or remix others' itineraries.

### 🧠 個性推薦 | Personality-Based AI
**需求	 Requirement**
- 第一次使用時做心理測驗，要像 16型人格。	
First-time users take a personality quiz (like 16Personalities).
- 出現結果後立即生成專屬行程，如「神秘夜行者」風格。	
After the result (e.g., “Mystic Night Owl”), the app builds a matching itinerary.
- 行程每天不一樣，要有靈魂，不能太制式。	
Each day should feel unique and “crafted,” not templated.

### 🏨 住宿匹配 | Accommodation Matcher
**需求	 Requirement**
- 能用價格、交通、偏好來篩選（如安靜、有窗等）。	
Filter accommodations by price, proximity, and user preferences (e.g., quiet, natural light).
- 根據行程與人格自動推薦飯店。	
Suggest hotels based on the user’s plan and personality.
以卡片形式顯示，畫面乾淨、不業配。	
Display hotel results as clean, card-based UI—no commercial clutter.
- 最好能串接 
Agoda 或 Booking.com。	Ideally integrate with Agoda/Booking.com for booking.

### 🍜 美食推薦引擎 | Food Discovery Engine
**需求	 Requirement**
- 分類：多人餐、IG 美食、當地小吃。	
Categories: group dining, Instagrammable food, local picks.
- 篩選條件：素食、清真、無豬、無辣等。	
Filters for vegetarian, halal, pork-free, non-spicy, etc.
- 顯示熱門指數與大家都點的餐。	
Show popularity scores and common picks.
- 菜單翻譯＋emoji 表示（辣🌶️、大份量🍽️）。	
Menus should include translations and emojis (e.g., 🌶️ spicy, 🍽️ large).

### 🎨 設計要求 | Design Requirements
**需求	 Requirement**
- 色系使用 twilight blue 與薰衣草色，安靜但不無聊。	
Use twilight blue and lavender colors—calming yet interesting.

- 要有 Dark Mode，也可以切換日系或美式風格。	
Support Dark Mode and switchable UI themes (e.g., Japanese minimal vs American magazine).
- 音效要療癒，不能太吵。	
Background sounds should be soothing, not noisy.

### 🧪 加值功能 | Bonus (Nice-to-Have) Features
**需求	 Requirement**
- 「今日推薦」根據天氣與心情推薦地點。	
“Today’s Vibe” feature: recommends places based on weather/mood.
- 開啟旅伴配對，找一樣人格的人同行。	
Travel buddy matchmaking for similar personality types.
- 成就系統：連吃五天夜市、避開觀光區等。	
Achievement badges (e.g., "5-night food streak", "Avoided all tourist spots").
