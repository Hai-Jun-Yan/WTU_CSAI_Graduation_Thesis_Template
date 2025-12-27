# 武汉纺织大学计算机与人工智能学院硕士学位（研究生）毕业论文 LaTeX 模板 (WTU Master's Thesis Template)

![LaTeX](https://img.shields.io/badge/Language-LaTeX-green.svg)
![Version](https://img.shields.io/badge/Version-1.0-blue.svg)
![Institution](https://img.shields.io/badge/Institution-WTU-red.svg)
![Status](https://img.shields.io/badge/Status-Unofficial-orange.svg)

### 如有疑问或想讨论结果，请前往我的[**个人博客网站**](https://www.blog-haijun.site)在对应的文章下留言，我会第一时间回复。

[**👀 在线预览**](https://cdn.jsdmirror.com/gh/Hai-Jun-Yan/WTU_CSAI_Graduation_Thesis_Template/Preview.pdf) | [**⚡TexPage官网**](https://www.texpage.com)

本项目是武汉纺织大学（WTU）硕士学位论文的 LaTeX 模板（2025修订版）。基于[原作者](https://github.com/dux1n4real)架构进行了深度优化与功能扩展，旨在符合学校最新的学位论文排版规范，修复了多项排版痛点，提供了更加自动化、规范化的写作体验。

<mark>各学院同学仅需替换前三页（封面及声明）内容即可直接使用。</mark>

> **注意**：本模板适用于 2025 年最新学位论文标准。请下载本项目并导入 [TeXPage](https://www.texpage.com/) 平台编译（引擎选 XeLaTeX）。因时间紧迫，暂未适配本地环境和 Overleaf，敬请谅解。


## ✨ 更新内容与特性 (Features)

本版本 (v1.0 2025-11-24) 主要包含以下改进：

*   **封面矢量化方案**：
    *   前三页（中文封面、英文封面、独创性声明）不再使用 LaTeX 排版，而是改为直接插入 PDF 矢量图。
    *   **优势**：彻底解决了封面字体缺失、下划线难以对齐的问题。各学院同学仅需在 Word 中编辑好前三页（封面及声明），导出 PDF 替换即可。
*   **双语标题标准化**：实现了图表标题的中英文自动双排。
    *   图片：五号宋体 + 英文（Fig. x）。
    *   表格：五号宋体加粗 + 英文（Table x）。
*   **参考文献规范化 (GB/T 7714)**：
    *   引入自定义 `.bst` 样式文件，严格遵循 GB/T 7714 标准。
    *   配置 `natbib` 宏包，支持右上角上标引用、自动排序与合并（如 `[1-3]`）。
*   **版面精准复刻**：
    *   **正文字号**：修正为标准的小四号宋体（原模板为五号）。
    *   **目录样式**：重构生成逻辑，修正缩进与引导线。
    *   **页眉布局**：校准高度与间距，对标 Word 标准模板。
    *   **三线表**：优化 `booktabs` 线条粗细。
*   **细节优化**：
    *   各级标题数字编号修正为黑体。
    *   修复浮动体（图/表）单独成页时的居中显示问题。

## 🛠️ 环境依赖 (Prerequisites)

为了获得最流畅的写作体验并避免复杂的本地环境配置，建议采用以下方式：

*   **编译平台**：推荐使用 [TeXPage](https://www.texpage.com/) 平台编译，因时间紧迫，暂未适配本地环境和 Overleaf，敬请谅解。
*   **编译引擎**：必须使用 **XeLaTeX**。

## 📂 项目结构 (File Structure)

```text
.
├── WTUthesis.cls              # 核心文档类文件（定义样式）
├── thesis_template.tex        # 主文档（入口文件，可重命名为 main.tex）
├── reference.bib              # 参考文献数据库
├── gbt7714-numerical.bst      # 参考文献样式文件（GB/T 7714）
├── figs/                      # 图片资源文件夹
│   ├── First_Three_Pages/     # 【重要】存放封面及声明的 PDF 文件
│   │   ├── Page_1.pdf         # 中文封面
│   │   ├── Page_2.pdf         # 英文封面
│   │   └── Page_3.pdf         # 独创性声明
│   └── ...                    # 其他正文插图
└── Readme.md                  # 说明文档
```

## 🚀 使用指南 (Usage)

本模板已针对 [TeXPage](https://www.texpage.com/) 在线编译平台进行优化。请按照以下步骤操作：

### 1. 项目导入与配置
1.  **下载项目**：点击 GitHub 页面右上角的 `Code` -> `Download ZIP` 下载本项目压缩包。
2.  **上传平台**：登录 TeXPage，点击“新建项目” -> “上传项目”，选择刚刚下载的 ZIP 包。
3.  **设置引擎**：进入TeXPage页面右上角项目设置或编译选项，**务必将编译引擎设置为 `XeLaTeX`**（否则中文无法显示）。

### 2. 封面与声明替换（关键步骤）
由于 LaTeX 制作中文封面难以完美复刻 Word 格式的下划线与间距，本模板采用 **PDF 插入法**，通用于所有学院：
1.  使用学校官方提供的 Word 模板，填写好**中文封面**、**英文封面**和**独创性声明**。
2.  将这三页分别导出为独立的 PDF 文件。
3.  将导出的文件重命名为 `Page_1.pdf` (中文封面)、`Page_2.pdf` (英文封面)、`Page_3.pdf` (声明)。
4.  在 TeXPage 的文件列表中，找到 `figs/First_Three_Pages/` 目录，上传并**覆盖**原有的同名文件。

### 3. 内容撰写
打开主文档 `thesis_template.tex` 开始写作：
*   **摘要修改**：搜索 `\abstract` 和 `\engabstract` 修改中英文摘要。
*   **正文撰写**：在 `Main body content` 区域编写章节，使用 `\chapter{}`、`\section{}` 、`\subsection{}`构建文档结构。
*   **参考文献**：在 `reference.bib` 文件中添加 BibTeX 格式的文献数据。

## 👏 致谢原作者

本项目是基于 [**杜鑫**](https://github.com/dux1n4real) 学长的原版模板进行的二次开发与维护。原作者为本项目的架构奠定了坚实基础，特此致谢。


## 👥 作者信息 (Authors)

*   **Xin Du (杜鑫)**
    *   🏫 **学院**：经济学院 (School of Economics)
    *   🛠️ **贡献**：项目发起、构建核心文档类 (`.cls`)、定义基础宏包架构
    *   📫 **邮箱**：hhkaaen@hotmail.com

*   **Haijun Yan (严海军)**
    *   🏫 **学院**：计算机与人工智能学院 (School of Computer Science and Artificial Intelligence)
    *   💻 **贡献**：代码重构、修复字体/目录/页眉等排版 Bug、引入矢量封面。
    *   📫 **邮箱**：yanhaijun666@gmail.com
    *   🌐 **Blog**：[www.blog-haijun.site](https://www.blog-haijun.site)

---
*我们也欢迎更多的 WTUer 加入维护列表，共同完善此模板！*

## ⚖️ 免责声明与许可 (Disclaimer & License)

1.  **非官方性质**：本项目属于**个人维护**的开源项目，**非武汉纺织大学官方发布**。
    *   模板样式是根据作者个人对学校最新格式规范的理解编写的，虽已尽力确保符合要求，但无法保证 100% 无误。
    *   **使用风险自负**：请在使用前务必对照学校教务处/研究生院发布的最新《学位论文撰写规范》。如果因为格式问题影响论文送审或答辩，作者不承担任何责任。
2.  **开源协议**：本项目遵循 [MIT License](https://opensource.org/licenses/MIT) 开源协议。
    *   ✅ 允许：免费使用、修改、分发、私有化部署。
    *   ❌ 禁止：将本项目的代码或衍生作品用于**商业出售**（如淘宝代写、付费模板等）。
