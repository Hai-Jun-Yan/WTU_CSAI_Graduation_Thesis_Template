%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   声明和基本信息
%            Statement and basic information
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% 2025-3-20 v1.0
% 作者：杜鑫// 机构：武汉纺织大学经济学院// 联系方式：hhkaaen@hotmail.com (欢迎联系！)
% Author: Xin Du// Institution: School of Economics, Wuhan Textile University// Email: hhkaaen@hotmail.com (open to suggestions!)
% GitHub: https://github.com/dux1n4real

% 2025-11-24 v2.0
% 作者 2：严海军// 机构：武汉纺织大学计算机与人工智能学院// 联系方式：yanhaijun66@gmail.com (欢迎联系！)
% Author 2: Yan Haijun // Institution: School of Computer Science and Artificial Intelligence, Wuhan Textile University // Email: yanhaijun666@gmail.com (Welcome to contact!)
% GitHub: https://github.com/Hai-Jun-Yan/WTU_CSAI_Graduation_Thesis_Template
% 个人博客: https://www.blog-haijun.site/

% WTUthesis.cls -- 本文件适用于武汉纺织大学毕业论文格式 (非官方)
% 本文件是一个 cls 文件，主要用于定义 class，而非直接编译.
% WTUthesis.cls -- this document is used for graduate thesis template of Wuhan Textile University (non-official)
% this document is used for defining class, not for direct encode.

% 希望各位毕业的学弟学妹们在使用本模板的过程中能够遇到最少的问题，也欢迎各位在使用过程中遇到的问题与我联系。祝大家顺利毕业！
% 个人博客: https://www.blog-haijun.site/


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{WTUthesis}[2025/03/18 v1.0 WTUthesis class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   加载必要的宏包
%                 Necessary packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[a4paper,openany,twoside,12pt]{book}

\RequirePackage[zihao=-4]{ctex}  % 中文支持//Chinese support
\RequirePackage{geometry}   % 页面布局//page
\RequirePackage{fancyhdr}   % 页眉页脚//head and foot
\RequirePackage{titlesec}   % 标题格式//title
\RequirePackage{graphicx}   % 图像处理//graphics
\RequirePackage{xcolor}     % 颜色支持//color
\RequirePackage{setspace}   % 行距设置//line distances
\RequirePackage{ifthen}     % 条件判断//ifthen
\RequirePackage{array}	  % 表格处理//table
\RequirePackage{tabularx}   % 表格处理//table
\RequirePackage{hyperref}   % 超链接//hyperlink
\RequirePackage{titletoc}   % 目录格式//table of contents
\RequirePackage{titlesec}   % 标题格式//title
% \RequirePackage{tocloft}
\RequirePackage{fancyhdr}   % 页眉页脚//head and foot
\RequirePackage{etoolbox}
\RequirePackage{amssymb}    % 【确保这一行存在】
\RequirePackage{bm}         % 【新增】用于加粗数学符号
\RequirePackage{fontspec}

% 2. 定义一个新字体命令 \heinum (黑体数字)
% 专门读取 'SimHei' 字体，并开启伪粗体
\newfontfamily\heinum{SimHei}[
    AutoFakeBold=true,  % 允许加粗
]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                     文档总体设置
%                 document total settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 页边距//page layout
\geometry{
	top=35mm,
	bottom=30mm,
	left=25mm,
	right=25mm,
  headsep=15mm,
	headheight=5mm,
	footskip=12.5mm,
	bindingoffset=0mm
}

% 定义字体//font
\newcommand{\shuoshi}{\fontsize{26pt}{31.2pt}\selectfont\kaishu\bfseries}  % 开头字体//title font
\newcommand{\timu}{\fontsize{22pt}{28pt}\selectfont\fangsong\bfseries\centering}  % 标题字体//title font


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      摘要页设置
%                 Abstract page settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 摘要页设置//abstract page
\long\def\abstract#1{\def\@abstract{#1}}
\def\keywords#1{\def\@keywords{#1}}
\def\researchtype#1{\def\@researchtype{#1}}
\def\engabstract#1{\def\@engabstract{#1}}
\def\engkeywords#1{\def\@engkeywords{#1}}
\def\engresearchtype#1{\def\@engresearchtype{#1}}

% 默认值//default
\abstract{}
\keywords{}
\researchtype{}
\engabstract{}
\engkeywords{}
\engresearchtype{}

% 中文摘要页设置//Chinese abstract page
\newcommand{\makeabstract}{
  \phantomsection

  % 标题//title
  {\centering\fontsize{16pt}{19.2pt}\selectfont\heiti 摘\quad 要\par}
  
  \vspace{1\baselineskip}
  
  % 内容//content
  \setlength{\parindent}{2em}
  {\fontsize{12pt}{18pt}\selectfont\songti
  \@abstract\par
	}
  
  \vspace{1\baselineskip}
  
  % 关键词和研究类型//keywords and research type
  {\noindent\fontsize{12pt}{14.4pt}\selectfont\bfseries 关键词：}
  {\fontsize{12pt}{14.4pt}\selectfont\@keywords}\par

  \vspace{0.5\baselineskip}

  {\noindent\fontsize{12pt}{14.4pt}\selectfont\bfseries 研究类型：}
  {\fontsize{12pt}{14.4pt}\selectfont\@researchtype}
  
  \clearpage
}


% 英文摘要页设置//English abstract page
\newcommand{\engmakeabstract}{
  \phantomsection
  {\centering\fontsize{16pt}{19.2pt}\selectfont\bfseries Abstract\par}
  
  \vspace{1\baselineskip}
  
  % content
  \setlength{\parindent}{2em}
  {\fontsize{12pt}{18pt}\selectfont\rmfamily
	\@engabstract\par
	}
  
  \vspace{1\baselineskip}
  
  % keywords and research type
  {\noindent\fontsize{12pt}{14.4pt}\selectfont\bfseries Keywords: }
  {\fontsize{12pt}{14.4pt}\selectfont\@engkeywords}\par

  \vspace{0.5\baselineskip}

  {\noindent\fontsize{12pt}{14.4pt}\selectfont\bfseries Thesis: }
  {\fontsize{12pt}{14.4pt}\selectfont\@engresearchtype}
  
  \clearpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      目录页设置
%                 Table of contents settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 目录字体//table of contents font
\renewcommand{\contentsname}{目\quad 录}
% \renewcommand{\cfttoctitlefont}{\hfill\fontsize{16pt}{48pt}\selectfont\heiti}
% \renewcommand{\cftaftertoctitle}{\hfill}

% \renewcommand{\cftchapfont}{\fontsize{12}{15}\heiti}
% \renewcommand{\cftchappagefont}{\fontsize{12}{15}\heiti}

% \renewcommand{\cftsecfont}{\fontsize{12}{15}\songti}
% \renewcommand{\cftsecpagefont}{\fontsize{12}{15}\songti}

% \renewcommand{\cftsubsecfont}{\fontsize{12}{15}\songti}
% \renewcommand{\cftsubsecpagefont}{\fontsize{12}{15}\songti}

%% 目录页码//table of contents page number
\AtBeginDocument{
  \pagestyle{empty}
}

\let\originalcontentsname\contentsname
\renewcommand{\tableofcontents}{
  \clearpage
  \pagenumbering{Roman}
  \pagestyle{tocpage}
  % \null  % 1. 放置一个看不见的空盒子作为“伪”起始点
  % \vspace{-40pt}
  {\centering
  \heiti
  \fontsize{16pt}{48pt}\selectfont\contentsname\par}
  \vspace{2em}
  \@starttoc{toc}
  % \clearpage
}

\let\originalchapter\chapter
\renewcommand{\chapter}{%
  \ifnum\value{chapter}=0
    \clearpage
    \pagestyle{plain}
    \pagenumbering{arabic}
  \fi
  \originalchapter
}

% 目录缩进//indent
% \setlength{\cftchapindent}{0em}
% \setlength{\cftsecindent}{0em}
% \setlength{\cftsubsecindent}{0em}

% \setlength{\cftaftertoctitleskip}{10pt}
% \setlength{\cftbeforetoctitleskip}{10pt}

% 一级标题格式//First level title format
% \renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}


% % % % ===================================================================
% % %      实现 Word 风格的目录 (根据图片精确复现)
% % % ==================================================================
% 1. 一级标题 (Chapter)
% 要求：小四号(-4) + 黑体(\heiti) + 左对齐(0em)
\titlecontents{chapter}[0em]
  % 全局格式：垂直间距0pt，字体设为小四号黑体
  {\addvspace{0pt}\zihao{-4}\heiti} 
  % 有编号时的标签：编号 + 5pt间距
  {\heiti\thecontentslabel\hspace*{5pt}} 
  % 无编号时的标签 (如致谢、参考文献)：强制再次应用小四黑体
  {\zihao{-4}\heiti}
  % 引导线和页码：点间距4pt，页码靠右，不加括号，引导线也用小四黑体
  {\titlerule*[4pt]{\zihao{-4}\bfseries.}\thecontentspage}
  
% 2. 二级标题 (Section)
% 要求：小四号(-4) + 宋体(\songti) + 左对齐(0em)
\titlecontents{section}[0em]
 % 全局格式：小四号宋体
  {\zihao{-4}\songti}
  % 编号后空 2pt
  {\thecontentslabel\hspace*{2pt}}
  {}
  % 引导线和页码: 点间距4pt，页码靠右，不加括号，引导线也用小四宋体
  {\titlerule*[4pt]{.}\thecontentspage}
  
% 3. 三级标题 (Subsection)
% 要求：小四号(-4) + 宋体(\songti) + 左对齐(0em)
\titlecontents{subsection}[0em]
 % 全局格式：小四号宋体
  {\zihao{-4}\songti}
  % 编号后空 2pt
  {\thecontentslabel\hspace*{2pt}}
  {}
  % 引导线和页码: 点间距4pt，页码靠右，不加括号，引导线也用小四宋体
  {\titlerule*[4pt]{.}\thecontentspage}
%===================================================================

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      正文格式设置
%                 Main body format settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\titleformat{\chapter}[block]
  {\centering\fontsize{16pt}{24pt}\selectfont\heiti}
  {\heinum\bfseries\thechapter}
  {0.5em}
  {}
  \titlespacing*{\chapter}
  {0pt}
  {-20pt}
  {0.5\baselineskip}

% 二级//Second level
\titleformat{\section}[hang]
  {\fontsize{14pt}{17.5pt}\selectfont\heiti}
  {\heinum\bfseries\thesection}
  {0.5em}
  {}
\titlespacing*{\section}
  {0pt}
  {0.5\baselineskip}
  {0.5\baselineskip}

% 三级//Third level
\titleformat{\subsection}[hang]
  {\fontsize{12pt}{15pt}\selectfont\heiti}
  {\heinum\bfseries\thesubsection}
  {0.5em}
  {}
\titlespacing*{\subsection}
  {0pt}
  {0.5\baselineskip}
  {0.5\baselineskip}


\renewcommand{\thechapter}{\arabic{chapter}}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                    页眉页脚
%                 Head and foot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\chaptermark}[1]{\markboth{\thechapter\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}

% 页眉页脚设置//head and foot
\fancypagestyle{tocpage}{
  \fancyhf{}
  % 偶数页
  \fancyhead[CE]{\kaiti\zihao{5} 武汉纺织大学硕士学位论文}
  % 奇数页
  \fancyhead[CO]{\kaiti\zihao{5} 目\quad 录}
  % 页码
  \fancyfoot[C]{\zihao{-5}\thepage}
  % 双线
  \renewcommand{\headrulewidth}{0.75pt}
  \renewcommand{\headrule}{
    {\hrule width\headwidth height\headrulewidth \vskip 0.5pt}
    {\hrule width\headwidth height\headrulewidth}
  }
}

\fancypagestyle{thesis}{
  \fancyhf{}
  % 偶数页
  \fancyhead[CE]{\CJKfamily{kai}\zihao{5} 武汉纺织大学硕士学位论文}

  % 奇数页
  \fancyhead[CO]{\CJKfamily{kai\zihao{5}}\leftmark}

  % 页码
  \fancyfoot[C]{\zihao{-5}\thepage}

  % 双线
  \renewcommand{\headrulewidth}{0.75pt}
  \renewcommand{\headrule}{
    {\hrule width\headwidth height\headrulewidth \vskip 0.5pt}
    {\hrule width\headwidth height\headrulewidth}
  }
}

\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[CE]{\itshape 武汉纺织大学硕士学位论文}
  \fancyhead[CO]{{\kaishu\leftmark}}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0.75pt}
  \renewcommand{\headrule}{
    {\hrule width\headwidth height\headrulewidth \vskip 0.5pt}
    {\hrule width\headwidth height\headrulewidth}
  }
}

% 应用页面样式
\pagestyle{tocpage}
\pagestyle{thesis}

% ==================================================
%  修复浮动体单独成页时的垂直对齐问题
% ==================================================
\makeatletter
% \@fptop: 页面顶部到第一个浮动体的距离
% 设置为 0pt，表示紧贴版心上沿（和正文第一行位置一致）
\setlength{\@fptop}{0pt} 

% \@fpsep: 同一页上两个浮动体之间的距离
% 设置为 12pt (约一行的高度)，避免两张图贴太紧
\setlength{\@fpsep}{12pt}

% \@fpbot: 最后一个浮动体到页面底部的距离
% 设置为 0pt plus 1fil，意思是“填充所有剩余空间”
% 这股力量会把上面的图片全部推到顶端
\setlength{\@fpbot}{0pt plus 1fil}
\makeatother
