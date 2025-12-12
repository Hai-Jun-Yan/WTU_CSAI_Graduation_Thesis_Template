# 武汉纺织大学计算机与人工智能学院硕士学位论文 LaTeX 模板 (WTU Master's Thesis Template)

![LaTeX](https://img.shields.io/badge/Language-LaTeX-green.svg)
![Version](https://img.shields.io/badge/Version-1.0-blue.svg)
![Institution](https://img.shields.io/badge/Institution-WTU-red.svg)

本项目是武汉纺织大学（WTU）硕士学位论文的 LaTeX 模板（2025修订版）。基于原作者架构进行了深度优化与功能扩展，旨在符合学校最新的学位论文排版规范，修复了多项排版痛点，提供了更加自动化、规范化的写作体验。

> > **注意**：本模板适用于 2025 年最新学位论文标准。请下载本项目并导入 [TeXPage](https://www.texpage.com/) 平台编译（引擎选 XeLaTeX）。因时间紧迫，暂未适配本地环境和 Overleaf，敬请谅解。。

## ✨ 更新内容与特性 (Features)

本版本 (v1.0 2025-11-24) 主要包含以下改进：

*   **封面矢量化方案**：
    *   前三页（中文封面、英文封面、独创性声明）不再使用 LaTeX 排版，而是改为直接插入 PDF 矢量图。
    *   **优势**：彻底解决了封面字体缺失、下划线难以对齐的问题。用户仅需在 Word 中编辑好前三页，导出 PDF 替换即可。
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

为了顺利编译本模板，建议您的系统环境如下：

*   **TeX 发行版**：TeX Live 2023 或更高版本 (推荐) / MacTeX / MiKTeX。
*   **编译引擎**：必须使用 **XeLaTeX**。
*   **字体支持**：
    *   系统需安装基础中文字体（宋体 SimSun、黑体 SimHei）。
    *   *已知问题*：部分系统可能缺失 `仿宋_GB2312` 和 `楷体_GB2312`，如有报错请自行安装对应字体或修改字体映射。

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
└── README.md                  # 说明文档
```

## 🚀 使用指南 (Usage)

### 1. 准备封面 (关键步骤)
由于 LaTeX 制作中文封面难以完美匹配学校 Word 模板的下划线和特定间距，本模板采用 **PDF 插入法**：
1. 使用学校提供的官方 Word 模板填写中文封面、英文封面和独创性声明。
2. 将这三页分别导出为 PDF 文件。
3. 替换项目目录 `figs/First_Three_Pages/` 下的 `Page_1.pdf`, `Page_2.pdf`, `Page_3.pdf`。

### 2. 编译文档
建议使用以下命令链进行编译，以确保交叉引用和参考文献正确生成：

```bash
xelatex thesis_template
bibtex thesis_template
xelatex thesis_template
xelatex thesis_template
```

### 3. 常用代码示例

#### 插入双语标题图片
```latex
\begin{figure}[h]
    \centering
    \includegraphics[width=0.9\textwidth]{figs/example.jpg} 
    % 中文标题
    \caption{中文标题内容}
    \vspace{-9pt}
    % 英文标题 (注意格式)
    \caption*{{Fig. \thefigure} English Title Content}
    \label{fig:example}
\end{figure}
```

#### 引用参考文献
```latex
% 单篇引用
...结论见文献\cite{key1}。

% 多篇引用（自动合并为 [1-3]）
...多项研究表明\cite{key1, key2, key3}。
```

## 👥 作者信息 (Authors)

*   **Author 1**: Xin Du (杜鑫)
    *   Institution: School of Economics, Wuhan Textile University
    *   Email: hhkaaen@hotmail.com
*   **Author 2**: Yan Haijun (严海军)
    *   Institution: School of Computer and Artificial Intelligence, Wuhan Textile University
    *   Email: yanhaijun666@gmail.com

## 📜 许可证

本模板仅供学术交流与学习使用。在使用前请务必核对学校最新的学位论文撰写规范。
