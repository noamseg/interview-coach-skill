# Interview Coach Skill — 项目状态与交接记录

## 任务信息

- **任务标记：** Sprint 1 / Issue #1 - Baseline Review
- **项目名称：** `interview-coach-skill`
- **项目位置：** 仓库根目录
- **检查时本地路径：** 已验证；出于隐私和可移植性，不在交接文档中记录绝对路径
- **检查日期：** 2026-09-02
- **检查方式：** 只读项目基线检查
- **文档用途：** 供 Codex 与 ChatGPT Desktop Work 之间继续沟通、完善项目和传递上下文
- **任务状态：** 基线检查已完成

## 当前状态快照

- **Sprint / Issue：** Sprint 1 / Issue #1 - Baseline Review
- **检查日期：** 2026-09-02
- **Baseline source commit：** `634a8dd8689e0420c21e5f0c8ae3cfa9e1a7ab7e`
- **当前分支：** `codex/sprint-1-status-review`（本次文档修正分支）
- **基线检查状态：** 已完成
- **交接报告状态：** 未解决项、待确认项、决策、待验证项和下一步行动已集中更新，等待用户 Review 和 Commit
- **Report version state：** 本报告创建于上述 Commit 之后；当前是本地工作版本，尚未包含在正式 Commit 中
- **原始 working-tree 状态：** 未在原始基线检查中验证
- **最高优先级风险：** `apply` 会生成可能含个人信息的 `job-search/` 文件，但该目录未被 `.gitignore` 排除
- **Codex 默认项目指令状态：** 根目录没有 `AGENTS.md`；是否通过备用文件名、全局配置或其他上下文读取 `SKILL.md` 尚未验证
- **Immediate next action：** 用户在 GitHub Desktop 检查 Changes；确认无误后完成 Issue #1 的 Commit，再决定是否 Push 或创建 Pull Request

## 一、执行边界

本次基线检查只读取和分析项目，没有修改、创建、删除或重命名项目文件，也没有运行会改变项目状态的命令。

`PROJECT_STATUS.md` 是基线检查结束后根据用户明确授权创建的交接文件。

**历史任务约束：** 只读和禁止修改其他文件的限制，仅适用于 Sprint 1 / Issue #1 基线检查及 `PROJECT_STATUS.md` 的创建任务。它不自动限制用户之后明确授权的修改任务。

检查范围包括：

1. 根目录的 `README.md`、`SKILL.md` 和 `VERSIONS.md`。
2. `references/` 的完整目录和文件清单。
3. 所有 `references/commands/` 命令文件的存在性与标题结构。
4. `references/commands/kickoff.md` 的完整工作流。
5. `references/coaching-state-schema.md` 的完整状态结构。
6. 根目录主要配置、Git Clone 信息及指定文件的存在性。
7. OpenAI 官方文档中 Codex 对 `AGENTS.md` 的识别规则。

## 二、项目摘要

`interview-coach-skill` 是一套由 Markdown 规则驱动的 AI 面试教练，而不是传统的网页应用或需要编译运行的软件。

项目使用：

- `SKILL.md` 作为面试教练的核心行为规则。
- `references/commands/` 作为每条命令的详细工作流。
- 其他 `references/*.md` 文件作为评分、故事库、逐字稿、岗位匹配和校准等专项规则。
- `coaching_state.md` 作为用户的长期辅导状态和跨会话记忆。

预期工作链路如下：

```text
用户输入
    ↓
核心规则识别命令或意图
    ↓
读取 references/commands/<command>.md
    ↓
按需读取其他专项参考文件
    ↓
生成结构化辅导结果
    ↓
把需要长期保留的数据写入 coaching_state.md
```

## 三、项目解决的问题

项目旨在解决普通面试题库和一次性 AI 对话缺少个性化、连续性和结果校准的问题。

主要能力包括：

- 分析职位描述并评估候选人与岗位的匹配度。
- 研究公司，并对公司相关结论标注证据和可信度。
- 优化简历、LinkedIn、个人定位和人脉拓展消息。
- 建立和维护 STAR 面试故事库。
- 把故事映射到最适合的面试问题。
- 运行针对性练习和完整模拟面试。
- 处理并分析多种来源和类型的面试逐字稿。
- 记录面试结果、招聘方反馈和长期表现趋势。
- 比较教练评分与真实面试结果，并在必要时校准评分。
- 准备早期薪资沟通和正式 offer 谈判。
- 通过 `coaching_state.md` 在不同会话间保持连续性。

项目使用五个核心评分维度：

1. **Substance：** 回答是否有事实、证据和足够深度。
2. **Structure：** 表达是否清晰、有组织。
3. **Relevance：** 是否真正回答了面试问题。
4. **Credibility：** 内容是否可信并能被证据支持。
5. **Differentiation：** 回答是否体现候选人的独特价值。

## 四、Git 仓库基线

当前目录是有效的 Git Clone，因为存在 `.git/`。

- **原始基线检查时记录的分支：** `main`
- **本次文档修正分支：** `codex/sprint-1-status-review`
- **Baseline source commit：** `634a8dd8689e0420c21e5f0c8ae3cfa9e1a7ab7e`
- **Report version state：** `PROJECT_STATUS.md` 创建于上述 Commit 之后；当前尚未包含在正式 Commit 中
- **原始 working-tree 状态：** 未验证
- **远程仓库名称：** `origin`
- **远程仓库地址：** `https://github.com/Arden-Deng007/interview-coach-skill.git`
- **Git 元数据：** `.git/` 存在

`.git/` 保存 Git 的版本历史和仓库配置，不应手动修改。

## 五、根目录结构

| 文件或目录 | 当前状态 | 作用 |
|---|---:|---|
| `README.md` | 存在 | 用户说明书：功能、安装方式、命令、使用案例和 FAQ。 |
| `SKILL.md` | 存在 | AI 面试教练的核心行为规则文件。 |
| `VERSIONS.md` | 存在 | 版本路线图：v1-v3 已发布，v4-v5 为规划。 |
| `PROJECT_STATUS.md` | 本任务创建，尚未 Commit | Codex 与 ChatGPT Desktop Work 的项目交接文件。 |
| `LICENSE` | 存在 | MIT 开源许可证。 |
| `.gitignore` | 存在 | 指定不应被 Git 跟踪的本地或私人文件。 |
| `.claude/` | 存在 | Claude Code 项目配置目录。 |
| `.claude/settings.json` | 存在 | 为 Claude Code 配置读取、编辑、写入和联网权限。 |
| `.git/` | 存在 | Git 版本历史与仓库配置。 |
| `references/` | 存在 | 命令流程、评分标准、状态结构和专项协议。 |
| `releases/` | 存在 | v2 和 v3 的版本发布说明。 |
| `AGENTS.md` | 不存在 | Codex 默认项目指令文件缺失；是否通过备用文件名、全局配置或其他上下文读取了 `SKILL.md` 尚未验证。 |
| `coaching_state.md` | 不存在 | 首次正常执行 `kickoff` 后预计生成。 |
| `coaching_state.example.md` | 不存在 | 没有独立示例；模板位于 `references/coaching-state-schema.md`。 |
| `materials/` | 不存在 | `.gitignore` 预留的私人简历和逐字稿目录。 |

当前 `.gitignore` 排除：

- `.DS_Store`
- `coaching_state.md`
- `materials/`
- `CLAUDE.md`

`coaching_state.md` 和 `materials/` 在尚未被 Git 跟踪的情况下，会被上述规则排除。这个保护范围不包括所有可能含个人信息的生成文件：`apply` 命令还会把申请答案写入 `job-search/[company]_application.md`，而当前 `.gitignore` 没有排除 `job-search/`。

## 六、`SKILL.md` 的作用

`SKILL.md` 是项目最重要的操作规则文件，当前大小约为 15 KB。

它定义：

- AI 面试教练的身份与目标。
- 多条规则发生冲突时的优先级。
- 如何读取、保存、迁移和归档 `coaching_state.md`。
- 原则上一次只问一个问题的交互方式。
- 证据和置信度要求。
- 五维评分规则。
- 反馈直接程度 1-5 的行为差异。
- 完整命令注册表。
- 每个命令执行前应读取的参考文件。
- 标准输出栏目。
- 每项工作完成后的下一步推荐格式。
- 用户没有显式输入命令时的意图识别方式。

## 七、`references/` 结构

检查时，`references/` 共有 43 个 Markdown 文件，合计约 9,742 行，其中 `references/commands/` 有 25 个命令工作流文件。

### 7.1 命令工作流

```text
references/commands/
├── analyze.md
├── apply.md
├── concerns.md
├── debrief.md
├── decode.md
├── feedback.md
├── help.md
├── hype.md
├── kickoff.md
├── linkedin.md
├── mock.md
├── negotiate.md
├── outreach.md
├── pitch.md
├── practice.md
├── prep.md
├── present.md
├── progress.md
├── questions.md
├── reflect.md
├── research.md
├── resume.md
├── salary.md
├── stories.md
└── thankyou.md
```

### 7.2 共享和专项规则

| 文件 | 作用 |
|---|---|
| `archival-rules.md` | 规定长期数据何时归档或压缩。 |
| `calibration-engine.md` | 检查评分漂移、真实结果关联和未测量因素。 |
| `challenge-protocol.md` | 反馈直接程度为 5 时使用的挑战规则。 |
| `coaching-state-schema.md` | `coaching_state.md` 的完整模板。 |
| `coaching-voice.md` | 控制反馈语气和直接程度。 |
| `cross-cutting.md` | 多命令共享的差距处理、心理准备、文化意识、岗位匹配和依赖关系。 |
| `differentiation.md` | 提炼候选人的独特经验和观点。 |
| `evidence-sourcing.md` | 防止没有证据的公司和面试结论。 |
| `examples.md` | 用完整示例校准输出质量。 |
| `mode-detection.md` | 把自然语言请求路由到正确命令。 |
| `role-drills.md` | 产品、工程、设计、数据、研究、运营、市场等岗位专项训练。 |
| `rubrics-detailed.md` | 五维评分锚点、根因和职级校准。 |
| `schema-migration.md` | 把旧状态结构升级到新结构。 |
| `state-update-triggers.md` | 规定命令完成后应保存哪些数据。 |
| `story-mapping-engine.md` | 根据匹配度和整体覆盖情况分配面试故事。 |
| `storybank-guide.md` | 建立、维护、改进和检索面试故事。 |
| `transcript-formats.md` | 识别并标准化多种逐字稿格式。 |
| `transcript-processing.md` | 清理、拆分、评分和总结不同面试类型的逐字稿。 |

## 八、核心命令清单

当前 `SKILL.md` 和 `references/commands/` 实际定义了 25 个命令。

### 入门

- `kickoff` — 初始化候选人资料和辅导计划。
- `help` — 显示命令菜单和推荐下一步。

### 公司和岗位

- `research [company]` — 公司研究和初步匹配评估。
- `decode` — JD 分析和多个 JD 的比较筛选。
- `prep [company]` — 公司和岗位面试准备。

### 申请材料与定位

- `resume` — 简历优化。
- `linkedin` — LinkedIn 优化。
- `pitch` — 个人核心定位陈述。
- `outreach` — 人脉拓展消息辅导。
- `apply [company]` — 申请表书面问题回答。

### 面试准备

- `concerns` — 预测面试官可能担心的问题。
- `questions` — 生成候选人向面试官提出的问题。
- `present` — 演示型面试准备。
- `salary` — 早期和中期薪资沟通。
- `hype` — 面试前心理和表达热身。

### 练习和模拟

- `practice` — 针对性面试训练。
- `mock [format]` — 完整模拟面试。
- `stories` — 建立和维护故事库。

### 面试后和长期跟踪

- `analyze` — 分析逐字稿并评分。
- `debrief` — 面试当天快速记录。
- `feedback` — 记录招聘方反馈、结果和修正。
- `thankyou` — 生成感谢信和跟进消息。
- `progress` — 分析长期趋势、结果和评分校准。
- `negotiate` — 正式 offer 谈判。
- `reflect` — 求职阶段复盘和归档。

建议新用户首先理解：

```text
kickoff → stories → prep → practice → analyze
```

## 九、`kickoff` 预期行为

本次基线检查没有运行 `kickoff`。以下行为来自 `references/commands/kickoff.md`。

### 9.1 收集信息

它会原则上一次只问一个问题，收集：

1. `Quick Prep` 或 `Full System` 辅导路线。
2. 目标岗位。
3. 目标职级。
4. 反馈直接程度 1-5，文档默认值为 5。
5. 面试时间线。
6. 最大担忧。
7. 已有面试经历和结果。
8. 简历文本或简历摘要。
9. 可选的 LinkedIn、目标公司和初始故事。

### 9.2 分析简历和目标

它会识别：

- 最强职业定位。
- 招聘经理最容易看到的优势。
- 可能的职业经历疑虑。
- 职业叙事断层。
- 可发展为面试故事的简历内容。
- 职能、行业、领域、管理方式或职业重启等转换。
- 目标岗位是否存在明显职级、领域、职能或硬技能差距。

### 9.3 按时间线选择辅导模式

- **48 小时以内：** 紧急模式，优先 `prep` 和 `hype`。
- **1-2 周：** 聚焦模式，完成准备和一项针对性练习。
- **3 周以上：** 完整模式，建立故事库并运行系统训练。

### 9.4 输出首次计划

预计输出：

- `Kickoff Summary`
- `Profile Snapshot`
- `Interview Readiness Assessment`
- 必要时的 `Target Reality Check`
- `First Plan`
- 一条推荐命令和若干替代选项

### 9.5 创建 `coaching_state.md`

首次成功执行后预计保存：

- 候选人资料和简历分析。
- 故事库。
- 分数历史和面试结果。
- 面试情报。
- 训练阶段。
- 活跃面试流程。
- 当前辅导策略。
- 校准数据。
- 会话记录和教练备注。

## 十、版本基线

- **v1：Foundation，已发布。** 建立核心命令、五维评分、故事库、练习、模拟面试和持久状态。
- **v2：Coaching Depth，已发布。** 增加多格式逐字稿、格式感知分析、故事映射、结果校准和公司研究。
- **v3：Full Lifecycle，已发布。** 增加简历、LinkedIn、定位、人脉拓展、JD 分析、演示面试和薪资辅导。
- **v4：Interaction Model，计划中。** 语音模式、会话回放、只读看板、日历感知和协作故事库。
- **v5：Platform，计划中。** Web 应用、教练市场、团队模式和匿名聚合情报。

## 十一、已读取或检查的文件

### 根目录

- `README.md` — 完整读取和分析。
- `SKILL.md` — 完整读取和分析。
- `VERSIONS.md` — 完整读取和分析。
- `.gitignore` — 读取和分析。
- `.claude/settings.json` — 读取和分析。
- `.git/HEAD` — 读取以确认当前分支。
- `.git/config` — 读取以确认远程仓库。
- `LICENSE` — 存在性和用途检查。

### `references/`

已检查全部 43 个文件的文件名、行数和标题结构。

重点完整读取：

- `references/commands/kickoff.md`
- `references/coaching-state-schema.md`

已检查结构和用途：

- `references/archival-rules.md`
- `references/calibration-engine.md`
- `references/challenge-protocol.md`
- `references/coaching-voice.md`
- `references/cross-cutting.md`
- `references/differentiation.md`
- `references/evidence-sourcing.md`
- `references/examples.md`
- `references/mode-detection.md`
- `references/role-drills.md`
- `references/rubrics-detailed.md`
- `references/schema-migration.md`
- `references/state-update-triggers.md`
- `references/story-mapping-engine.md`
- `references/storybank-guide.md`
- `references/transcript-formats.md`
- `references/transcript-processing.md`

已检查全部 25 个 `references/commands/*.md` 文件的存在性和标题结构。除 `kickoff.md` 外，其他命令文件没有在本次基线检查中逐行全文审阅；实际执行某个命令前，AI 仍应读取该命令的完整工作流。

### 发布说明

- `releases/v2.md` — 存在性和结构检查。
- `releases/v3.md` — 存在性和结构检查。

## 十二、指定文件存在性

| 文件 | 当前是否存在 | 说明 |
|---|---:|---|
| `AGENTS.md` | 否 | 默认项目指令文件不存在；Codex 的实际项目指令加载状态尚未验证。 |
| `coaching_state.md` | 否 | 首次 `kickoff` 前属于正常状态。 |
| `coaching_state.example.md` | 否 | 状态模板位于 `references/coaching-state-schema.md`。 |

## 十三、Codex 准备情况

项目 README 建议 OpenAI Codex 用户把：

```text
SKILL.md → AGENTS.md
```

README 给出的具体方式是使用 `mv SKILL.md AGENTS.md` 重命名文件。

OpenAI 官方文档说明，Codex 默认会在开始工作前读取 `AGENTS.md`，并从项目根目录向当前目录组合项目指令；官方机制也允许配置备用项目指令文件名：

- https://learn.chatgpt.com/docs/agent-configuration/agents-md

当前准备事项：

1. 决定 `SKILL.md` 应该重命名、复制还是以其他方式同步到 `AGENTS.md`。
2. 决定是否保留原始 `SKILL.md`，以兼容其他 AI 工具和项目原始结构。
3. 决定 `AGENTS.md` 是正式项目文件还是仅本地使用。
4. 如果只在本地使用，评估是否应加入 `.gitignore`。
5. 创建或配置后重新打开 Codex，验证项目规则是否被读取。
6. 准备简历、目标岗位、目标职级、面试时间线和最大担忧，再运行 `kickoff`。

`SKILL.md` 单文件约 15 KB；它本身低于默认上限，但默认限制针对组合后的完整指令链，因此完整指令链的总大小尚未验证。

## Open Issues / 未解决问题

### 1. `job-search/` 申请答案存在未覆盖的个人信息风险

- **问题是什么：** README 和 `references/commands/apply.md` 都说明，`apply` 会把申请答案保存到 `job-search/[company]_application.md`；当前 `.gitignore` 没有对应规则。
- **为什么重要：** 文件可能包含个人经历、求职公司、职业故事和其他私人信息，并可能被意外加入 Git 后提交到 GitHub。
- **当前状态：** 风险已验证；保护方案尚未决定。尚不确定应整体排除 `job-search/`、只排除个人实例，还是保留可提交的示例文件。
- **建议下一步：** 在独立的个人数据保护检查中盘点全部生成路径，再提出最小修改方案。

### 2. 命令数量不一致

- **问题是什么：** README 和 `VERSIONS.md` 多次写 23 个命令；`SKILL.md` 注册表、`references/commands/` 文件数以及 README 命令表实际都是 25 个。
- **为什么重要：** 使用者和维护者可能对项目功能范围产生不同理解，后续文档和测试也没有稳定的计数基准。
- **当前状态：** 差异已验证；设计意图未验证。尚不确定文案应更新为 25，还是有两个命令不应计入宣传数字。
- **建议下一步：** 由维护者确认计数口径后统一文档，并把该数字加入后续一致性检查。

### 3. 根目录没有默认的 `AGENTS.md`

- **问题是什么：** 根目录不存在 Codex 默认项目指令文件之一 `AGENTS.md`。
- **为什么重要：** 新的 Codex 会话可能无法通过默认文件名获得项目规则，导致不同会话执行方式不一致。
- **当前状态：** `AGENTS.md` 不存在是已验证事实；Codex 是否通过备用文件名、全局配置或其他上下文读取了 `SKILL.md` 尚未验证。
- **建议下一步：** 单独验证实际项目指令加载方式，不能把“缺少默认文件”直接等同于“完全没有加载项目指令”。

### 4. `SKILL.md` 与 `AGENTS.md` 的激活方式尚未确定

- **问题是什么：** 尚未决定应把 `SKILL.md` 重命名、复制、链接还是同步为 `AGENTS.md`。
- **为什么重要：** 重命名会让原始 `SKILL.md` 路径消失；复制可能产生两份内容不同步；链接和自动同步又会增加维护要求。
- **当前状态：** README 建议重命名；其他方案及其兼容性尚未验证，也未作最终决定。
- **建议下一步：** 在隐私准备完成后建立独立的 Codex 激活设计任务，先比较方案，再由用户确认。

### 5. `.gitignore` 没有说明 `AGENTS.md` 的处理方式

- **问题是什么：** `.gitignore` 排除了 `CLAUDE.md`，但没有排除 `AGENTS.md`；`AGENTS.md` 的版本管理策略没有说明。
- **为什么重要：** 创建 `AGENTS.md` 后，维护者可能不清楚它应该提交到 GitHub，还是只在本地使用。
- **当前状态：** `.gitignore` 内容已验证；是否跟踪 `AGENTS.md` 尚未决定。
- **建议下一步：** 与激活方式一起决定，并把决策写入项目文档。

### 6. README 目录树不是完整仓库快照

- **问题是什么：** README 示例树包含尚未生成的 `coaching_state.md`，但没有列出 `VERSIONS.md`、`releases/`、`.claude/` 和 `.gitignore`。
- **为什么重要：** 新贡献者可能把示例树误认为完整当前结构，进而误判文件缺失或项目组成。
- **当前状态：** 差异已验证；尚未决定将它改成完整仓库树，还是明确标记为功能示意。
- **建议下一步：** 在文档一致性任务中选择一种表达方式并统一 README。

### 7. 没有独立的状态示例文件

- **问题是什么：** `coaching_state.example.md` 不存在；完整模板只位于 `references/coaching-state-schema.md`。
- **为什么重要：** 新手不容易从根目录发现状态文件示例；但新增示例也可能造成两份模板不同步。
- **当前状态：** 文件不存在及模板位置已经验证；是否需要独立示例文件尚未决定。
- **建议下一步：** 先比较“容易发现”和“重复维护”的成本，再由用户决定是否创建。

### 8. 激活说明中的“复制”与“重命名”不一致

- **问题是什么：** README 对 Claude Code 和 Codex 使用 `mv` 并称为“重命名”；`.gitignore` 注释却称 `CLAUDE.md` 是通过复制 `SKILL.md` 创建。
- **为什么重要：** 复制会保留 `SKILL.md`，重命名会移走它；两种操作对项目结构、其他 AI 工具兼容性和后续同步的影响不同。
- **当前状态：** 文档措辞不一致已经验证；哪一种才是项目预期行为尚未决定。
- **建议下一步：** 与 `AGENTS.md` 激活策略一起确认唯一推荐方式，然后统一 README、`.gitignore` 注释和相关说明。

### 9. `PROJECT_STATUS.md` 尚未进入正式版本历史

- **问题是什么：** 当前 Git 状态把 `PROJECT_STATUS.md` 显示为未跟踪文件，它尚未包含在任何 Commit 中，也尚未上传到 GitHub。
- **为什么重要：** 在正式 Commit 前，这份交接报告只存在于本机工作区；其他设备或协作者无法从远程仓库可靠取得它。
- **当前状态：** 2026-09-02 已通过只读 `git status --short --branch` 验证；当前分支为 `codex/sprint-1-status-review`，Git 只显示 `?? PROJECT_STATUS.md`。
- **建议下一步：** 用户先在 GitHub Desktop 检查完整 Diff，确认只有本文件后再 Commit；是否 Push 或创建 Pull Request 由用户另行决定。

### 10. 全部个人数据生成路径尚未完成盘点

- **问题是什么：** 当前只明确识别了 `coaching_state.md`、`materials/` 和 `job-search/` 等路径，但尚未逐个审查 25 个命令可能创建、保存、归档或更新的全部文件。
- **为什么重要：** 如果遗漏其他包含简历、面试记录、公司名称或职业故事的路径，只保护 `job-search/` 仍可能发生隐私泄露。
- **当前状态：** “盘点尚未完成”是已验证的检查范围事实；是否还存在其他未保护路径属于未验证事项。
- **建议下一步：** 把它作为 Sprint 1 / Issue #2 的首项工作，只读扫描所有命令的写入行为和输出路径，再决定 `.gitignore` 修改。

### 11. 其余命令工作流尚未逐项完成内容审查

- **问题是什么：** 基线检查确认了 25 个命令文件存在并读取了标题，但除 `kickoff`、`apply` 和部分核心参考资料外，没有逐项验证全部命令的输入、输出、状态更新和交叉引用。
- **为什么重要：** “文件存在”不等于“工作流内容一致且可执行”；遗漏的交叉引用或状态规则会影响后续功能质量。
- **当前状态：** 检查范围已经确认；其余工作流是否全部正确属于未验证事项。
- **建议下一步：** 在隐私任务后建立分批命令审查清单，为每个命令记录输入、输出、写入路径、依赖文件和验收结果。

### 12. 没有检测到自动化验证或评估机制

- **问题是什么：** 当前仓库文件清单中没有检测到常见的测试目录、测试配置、构建配置或专用评估脚本。
- **为什么重要：** 文档数量、内部链接、命令注册表和状态结构发生变化时，目前主要依赖人工检查，容易出现回归或不一致。
- **当前状态：** “未检测到常见自动化机制”已通过当前文件清单验证；此纯 Markdown 项目是否需要、需要到什么程度尚未决定。
- **建议下一步：** 在结构稳定后评估一个最小静态检查方案，优先检查内部链接、25 个命令文件、命令计数和必要章节，不要在当前 Issue 擅自新增工具。

### 13. 实际运行行为尚未经过端到端验证

- **问题是什么：** 本次遵守只读限制，没有运行 `kickoff`，也没有实际执行从建档、状态保存到再次读取状态的完整流程。
- **为什么重要：** 文档定义完整并不能单独证明 AI 会按规则创建正确状态、自动保存并在下一次会话恢复上下文。
- **当前状态：** 未运行是已验证事实；`kickoff` 及其他命令的实际行为属于未验证事项，而不是已确认功能结果。
- **建议下一步：** 在隐私保护和 Codex 激活策略完成后，使用不含真实个人信息的测试资料做一次受控验收，并在运行前单独获得用户授权。

### 14. 交接文件是否会被新会话自动读取尚未验证

- **问题是什么：** `PROJECT_STATUS.md` 被设计为 Codex 与 ChatGPT Desktop Work 的交接文件，但目前没有证据表明新的 AI 会话一定会自动读取它。
- **为什么重要：** 如果新会话没有获得这份报告，后续 AI 可能重复工作、忽略既有决策或把未验证事项写成事实。
- **当前状态：** 文件用途由用户确认；自动加载行为未验证。根目录又没有默认 `AGENTS.md` 指示 Codex 先读取本文件。
- **建议下一步：** 在自动加载机制验证前，每次新任务都明确附加或点名 `PROJECT_STATUS.md`；以后再决定是否通过项目指令建立固定交接流程。

### 15. Claude Code 项目权限尚未完成安全与必要性审查

- **问题是什么：** `.claude/settings.json` 允许 `Read`、`Edit`、`Write`、`WebFetch` 和 `WebSearch`，但报告尚未评估这些项目级权限是否都是必要且符合维护者预期。
- **为什么重要：** 这些权限包含文件修改和联网能力，会影响 Claude Code 在项目中的操作边界；新手可能把“项目允许”误解为“每次操作都无需审查”。
- **当前状态：** 配置文件及允许项已经只读验证；权限是否过宽、是否只用于 Claude Code、是否需要调整均未验证，也未作修改。
- **建议下一步：** 在独立的 AI 工具权限检查中确认每项权限的用途、适用工具和最小必要范围，再由用户决定是否修改配置。

## Open Questions / 待确认问题

1. `job-search/` 应整体加入 `.gitignore`，还是只忽略个人实例？
2. 是否需要保留可提交的 `job-search` 示例文件？
3. 除 `job-search/` 外，还有哪些生成路径必须纳入个人数据保护范围？
4. `SKILL.md` 应重命名、复制、链接还是同步为 `AGENTS.md`？
5. `AGENTS.md` 应提交到 GitHub，还是只在本地使用？
6. README 与 `.gitignore` 的激活说明最终应统一为复制还是重命名？
7. 文档中的命令数量应改成 25，还是有两个命令不应计入？
8. 是否需要创建 `coaching_state.example.md`？
9. README 的仓库结构应更新为完整结构，还是明确标记为功能示意？
10. 是否需要为纯 Markdown 项目建立最小自动化验证；如果需要，验收范围是什么？
11. 首次端到端验收应使用哪一组不含真实个人信息的测试资料？
12. 新的 Codex 和 ChatGPT Desktop Work 会话是否会自动读取 `PROJECT_STATUS.md`，还是必须每次手动点名或附加？
13. Issue #1 完成后应直接 Push 当前分支，还是创建 Pull Request 后再合并？
14. `PROJECT_STATUS.md` 应在每个 Issue 结束时更新，还是只在 Sprint 结束时更新？
15. `.claude/settings.json` 中的文件写入和联网权限是否全部必要，是否需要采用更小的权限范围？

这些问题尚未由用户或维护者作出最终决定。

## Decisions / 已确认决策

1. Sprint 1 / Issue #1 基线检查已经完成。
2. `PROJECT_STATUS.md` 是用户明确授权创建的交接文件。
3. 原始只读限制只适用于历史基线检查任务，不永久限制用户之后明确授权的任务。
4. 本轮只允许修改 `PROJECT_STATUS.md`。
5. 本轮不修改 `.gitignore`。
6. 本轮不创建 `AGENTS.md`。
7. 本轮不运行 `kickoff`，也不创建 `coaching_state.md`。
8. 本轮只记录 `job-search/` 风险，不决定最终保护方案。
9. 缺少 `AGENTS.md` 不等于已经证明 Codex 完全没有加载项目指令。
10. Issue #1 完成后，下一项独立任务是 Sprint 1 / Issue #2 - Personal Data Protection Review。
11. 当前文档修正任务不运行自动化测试、`kickoff` 或任何会创建个人状态的命令。
12. `PROJECT_STATUS.md` 的自动加载行为不能被假定为已确认；验证前，新会话需要明确点名或附加本文件。
13. 是否 Commit、Push 或创建 Pull Request 仍由用户决定，Codex 不在本任务中代为执行。

## Verification Needed / 尚待验证

1. 原始基线检查时的 Working tree 状态没有验证。
2. 当前 `PROJECT_STATUS.md` 尚未包含在正式 Commit 中；本轮完成后的最终 Diff 仍需用户在 GitHub Desktop 核对。
3. 当前分支后续是否已经 Push、是否创建 Pull Request、是否合并到主分支，需要在用户操作后重新验证。
4. Codex 是否通过备用文件名、全局配置或其他上下文读取 `SKILL.md` 尚未验证。
5. 完整项目指令链的总大小是否超过默认限制尚未验证。
6. `job-search/` 之外是否还有其他生成文件包含个人信息尚未验证。
7. `AGENTS.md` 的最终激活方式和版本管理策略尚未验证。
8. README 中“23 个命令”的设计意图尚未验证。
9. 25 个命令的输入、输出、写入路径、状态更新和内部引用尚未逐项验证。
10. `kickoff` 是否会按 schema 正确创建状态、保存状态并支持后续会话恢复，尚未通过端到端流程验证。
11. 文档中的 v1、v2、v3 功能声明目前主要依据文档和文件存在性，尚未通过完整功能评估验证。
12. 新的 Codex 或 ChatGPT Desktop Work 会话是否会自动读取 `PROJECT_STATUS.md` 尚未验证。
13. 项目是否需要自动化验证，以及最小验收标准是什么，尚未决定。
14. `.claude/settings.json` 中各项权限的实际用途、适用工具和最小必要范围尚未验证。

## Next Actions / 下一步行动

### Immediate / 立即行动

1. Codex 完成本轮只读核对和 `PROJECT_STATUS.md` 修正。
2. 用户在 GitHub Desktop 的 Changes 中确认只有 `PROJECT_STATUS.md`，并阅读完整 Diff。
3. 用户确认 15 个 Open Issues、15 个 Open Questions 和 14 个 Verification Needed 是否完整准确。
4. 用户确认后再为 Sprint 1 / Issue #1 创建 Commit。
5. 用户决定直接 Push 当前分支，还是创建 Pull Request；Codex 本轮不执行这些操作。

### After Issue #1 / Issue #1 完成后

1. 启动 Sprint 1 / Issue #2 - Personal Data Protection Review。
2. 只读盘点 25 个命令可能创建、保存、更新或归档的所有文件和目录。
3. 重点检查 `job-search/`，同时确认是否还有其他包含个人信息的路径。
4. 把“已验证路径”和“未验证推测”分开记录，并提出最小 `.gitignore` 修改方案。
5. 用户确认方案后，才能在独立任务中修改 `.gitignore`。

### Later / 后续

1. 决定 `SKILL.md` 与 `AGENTS.md` 的激活策略。
2. 统一“复制”与“重命名”的激活说明，并决定 `AGENTS.md` 是否进入版本管理。
3. 验证 Codex 实际读取的项目指令和完整指令链大小。
4. 处理 23 与 25 个命令的文档差异。
5. 分批审查其余命令的输入、输出、状态更新和交叉引用。
6. 决定是否建立最小自动化验证。
7. 决定是否更新 README 仓库结构。
8. 决定是否创建 `coaching_state.example.md`。
9. 明确新会话读取 `PROJECT_STATUS.md` 的交接流程。
10. 单独审查 `.claude/settings.json` 的项目权限是否符合最小必要原则。
11. 完成隐私和激活准备并获得用户授权后，再使用非真实测试资料运行首次 `kickoff` 验收。

## 新手术语速查

| 术语 | 它是什么 | 有什么作用 | 当前是否需要掌握 |
|---|---|---|---|
| AI Agent | 能读取规则、使用工具并连续完成任务的 AI | 让 AI 不只回答问题，还能执行项目流程 | 先理解概念 |
| Codex | OpenAI 的编程智能体 | 读取、分析和修改项目，并运行开发任务 | 需要掌握基本使用 |
| GitHub | 保存和协作开发项目的网站 | 托管仓库、Issue 和版本历史 | 需要逐步掌握 |
| Git | 记录文件变化的版本控制工具 | 查看修改、提交版本和恢复历史 | 需要掌握基础 |
| GitHub Desktop | 用图形界面操作 Git 和 GitHub 的桌面软件 | 查看 Changes、阅读 Diff、创建 Commit 和执行 Push | 需要掌握基础操作 |
| Repository / 仓库 | 一个项目的文件和版本历史集合 | GitHub 管理项目的基本单位 | 需要掌握 |
| Clone / 克隆 | 从远程仓库复制项目和历史到本机 | 在本地得到可继续开发的项目 | 已完成，需理解 |
| Branch / 分支 | 一条独立的开发路线 | 避免新工作直接影响主线 | 暂时了解 |
| Commit / 提交 | 项目在某个时间点的固定版本记录 | 保存可追踪、可恢复的修改节点 | 需要理解基本概念 |
| Push / 推送 | 把本地 Commit 上传到 GitHub | 让远程仓库获得本地修改 | 需要理解，但提交前不要操作 |
| Pull Request / 合并请求 | 请求把分支变化合并到另一分支的审查流程 | 在进入主线前讨论和检查修改 | 暂时了解 |
| Review / 审查 | 检查修改是否正确、完整和安全 | 在正式提交或合并前发现问题 | 需要掌握基本流程 |
| Working tree / 工作区 | 本地当前文件及尚未提交的变化 | 区分已提交版本和本地修改 | 需要学会在 GitHub Desktop 查看 Changes |
| Untracked file / 未跟踪文件 | Git 已发现但尚未纳入版本历史的新文件 | 提醒使用者该文件尚未进入任何 Commit | 需要会在 Changes 中识别 |
| Git Index / Git 索引 | Git 准备纳入下一次 Commit 的文件清单 | 判断哪些变化已进入版本管理准备区 | 暂时了解 |
| Diff / 差异 | 修改前后的内容对比 | 查看具体新增、删除和改写 | 需要学会阅读基本差异 |
| Baseline source commit / 基线源版本 | 基线检查所依据的固定 Commit | 让报告与被检查的项目版本准确对应 | 需要理解 |
| Remote / 远程仓库 | 本地仓库对应的在线仓库 | 上传和下载项目变化 | 暂时了解 |
| Markdown | `.md` 纯文本文档格式 | 编写本项目的规则和说明 | 需要会阅读 |
| Skill | 给 AI 使用的一组专业规则 | 把通用 AI 变成面试教练 | 需要理解 |
| Command | 用户触发功能的关键词 | 选择具体辅导流程 | 需要掌握常用命令 |
| Workflow | 完成任务的固定步骤 | 保证命令执行一致 | 先理解概念 |
| Schema | 数据结构规范 | 规定状态文件包含哪些栏目 | 暂时不用设计 |
| State | 被保存的用户资料和历史 | 让辅导跨会话连续 | 需要理解 |
| Open Issues / 未解决问题 | 已发现但尚未解决的项目问题 | 集中显示风险和缺口 | 需要会查看 |
| Open Questions / 待确认问题 | 尚未作出决定的问题 | 防止 AI 擅自替用户决定 | 需要会查看和逐项确认 |
| Decisions / 已确认决策 | 已由用户或项目明确确定的事项 | 防止后续重复讨论或推翻已确认范围 | 需要会维护 |
| Verification Needed / 尚待验证 | 需要进一步收集证据的事项 | 区分事实与尚未确认的推断 | 需要会查看 |
| Next Actions / 下一步行动 | 按顺序排列的后续任务 | 告诉下一位参与者先做什么 | 需要会执行第一项 |
| Automated verification / 自动化验证 | 由工具重复执行的规则检查 | 自动发现缺失文件、错误链接或数量不一致 | 先理解概念，暂时不用编写 |
| Static check / 静态检查 | 不实际运行功能，只检查文件和规则结构 | 低风险地检查链接、命令清单和必需章节 | 暂时了解 |
| End-to-end verification / 端到端验证 | 从输入、处理、保存到再次读取的完整流程检查 | 确认整条工作链按预期运行 | 以后在保护隐私后再执行 |
| Project permissions / 项目权限 | 项目为 AI 工具配置的可用操作范围 | 控制是否允许读取、写入或联网 | 需要知道它是安全边界，暂时不用修改 |
| WebFetch / WebSearch | AI 获取网页或搜索互联网的联网能力 | 为公司研究等任务获取外部资料 | 需要知道会访问外部网络 |
| JD | Job Description，职位描述 | 分析岗位要求和候选人匹配度 | 求职中需要掌握 |
| ATS | 企业解析和筛选简历的软件 | 影响简历能否被正确读取 | 了解即可 |
| STAR | 背景、任务、行动、结果 | 组织面试故事 | 建议掌握 |
| Transcript | 面试录音转换的文字 | 用于复盘和评分 | 了解即可 |
| Rubric | 评分标准 | 降低评分随意性 | 暂时不用深入 |
| MIT License | 宽松的开源许可证 | 允许使用、修改和分发项目 | 了解即可 |

## 最终交接结论

Sprint 1 / Issue #1 - Baseline Review 的基线检查和交接文档未解决项汇总已经完成。当前报告等待用户 Review，尚未 Commit，也尚未 Push。

从已经读取的文档结构看，当前项目具备 v3 面试教练规则架构：

- 三份核心文档存在，并已完成本次基线阅读。
- `references/` 模块化结构清晰。
- 25 个命令都有对应工作流文件。
- `kickoff` 和持久状态 schema 已完整定义。
- Git Clone、原始 `main` 分支、本次文档修正分支和远程仓库配置存在。
- 当前没有个人辅导状态文件。

以上结论证明的是文档和文件结构；25 个命令的全部内容与实际运行行为尚未逐项或端到端验证。

当前最高优先级风险是：`apply` 生成的 `job-search/` 申请答案可能包含个人信息，但该目录没有被 `.gitignore` 排除。

Immediate next action 是：用户先在 GitHub Desktop 检查 Changes，确认只有 `PROJECT_STATUS.md` 被修改并完成 Review；确认无误后再 Commit。Issue #1 完成后，再启动 Sprint 1 / Issue #2 - Personal Data Protection Review。

根目录没有默认的 `AGENTS.md`；Codex 是否通过备用文件名、全局配置或其他上下文读取了 `SKILL.md` 尚未验证。后续仍需单独确认项目指令加载方式。
