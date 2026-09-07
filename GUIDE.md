# AI Agent Pro Kit: Руководство пользователя / User Guide

[🇷🇺 Читать на русском](#руководство-на-русском) | [🇬🇧 Read in English](#user-guide-in-english)

---

## Руководство на русском

### 1. Что внутри этого набора?
**AI Agent Pro Kit** объединяет два критических компонента современной работы с AI-ассистентами:
1. **Agent Memory Engine (`skills/agent-memory`)**: Долговременная память без амнезии. Агент помнит архитектурные решения, правила и стек проекта между сессиями.
2. **Anti-Slop Quality Gate (`skills/antislop*`)**: Жесткий фильтр AI-воды, шаблонного UI и очевидных комментариев. 38 правил качества.

---

### 2. Быстрая установка за 1 минуту

#### Вариант А: Windows PowerShell (1 клик)
Откройте PowerShell в корне этого репозитория и выполните:
```powershell
.\install.ps1
```
*Скрипт автоматически установит скиллы в Antigravity (`~/.gemini/config/skills`), добавит правила в Cursor (`.cursor/rules`) и Windsurf.*

#### Вариант Б: Linux / macOS (1 клик)
В терминале выполните:
```bash
chmod +x install.sh
./install.sh
```

#### Вариант В: Ручная установка под вашу среду
- **Antigravity**: Скопируйте папки из `skills/` в `~/.gemini/config/skills/`, а файл `rules/agent-superkit.md` положите в корневую папку правил.
- **Cursor**: Скопируйте `.cursor/rules/agent-superkit.mdc` в свой проект.
- **Windsurf**: Скопируйте `.windsurfrules` в корень вашего проекта.
- **Claude Code**: Скопируйте `CLAUDE.md` в корень проекта.
- **ChatGPT / Claude Web**: Скопируйте содержимое `prompts/UNIVERSAL_AGENT_PROMPT_RU.md` в поле **Custom Instructions** или системный промпт проекта.

---

### 3. Как настроить память проекта (`templates/memory`)
1. Скопируйте папку `templates/memory` в корень вашего рабочего проекта или в `~/.ai-memory`.
2. Переименуйте `USER_CONTEXT.template.md` в `USER_CONTEXT.md` и укажите ваш стек, привычки и жесткие табу.
3. Переименуйте `projects/project-template` в имя вашего проекта (например, `projects/my-saas/`) и заполните `technical-context.md`.
4. Теперь, открывая сессию, просто напишите агенту:
   > *"Проверь контекст проекта в memory/ перед началом задачи."*

---

### 4. Как запускать Анти-Слоп проверку
Анти-слоп фильтр активен по умолчанию. Перед сдачей любого кода или текста вы можете написать агенту:
> *"Проведи аудит результата через Delivery Gate (antislop)."*
Агент выдаст строгий отчет: PASS/FAIL по 4 критериям (структура, читаемость, отсутствие AI-клише, доступность).

---

## User Guide in English

### 1. Overview
The **AI Agent Pro Kit** integrates two essential pillars for modern agentic development:
1. **Agent Memory Engine (`skills/agent-memory`)**: Persistent cross-session project memory and architectural decision records.
2. **Anti-Slop Quality Gate (`skills/antislop*`)**: 38 rules eliminating generic AI aesthetics, buzzword-heavy copy, and redundant code comments.

### 2. 1-Click Installation
- **Windows**: Run `.\install.ps1` in PowerShell.
- **macOS / Linux**: Run `chmod +x install.sh && ./install.sh`.
- **Web AI (ChatGPT / Claude)**: Paste `prompts/UNIVERSAL_AGENT_PROMPT_EN.md` into Custom Instructions.

### 3. Setting Up Project Memory
1. Copy `templates/memory` to your repository.
2. Fill out `USER_CONTEXT.md` with your preferences.
3. Duplicate `projects/project-template` for your active repository.
4. AI agents will read past decisions and preserve architectural integrity automatically.
