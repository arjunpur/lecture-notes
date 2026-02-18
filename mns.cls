\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mns}[2026/02/17 Models of Neural Systems Lecture Notes]

% ---------- Base class ----------
\LoadClass[
  12pt,
  twoside,
  openright,
  headings=normal,
  chapterprefix=true,
  numbers=noenddot
]{scrbook}

% ---------- Typography ----------
\RequirePackage{fontspec}
\RequirePackage{mathtools}  % Load before unicode-math to suppress warning
\RequirePackage{unicode-math}
\RequirePackage{microtype}

\defaultfontfeatures{Ligatures=TeX, Scale=MatchLowercase}
\setmainfont{Latin Modern Roman}
\setsansfont{Latin Modern Sans}
\setmonofont{Latin Modern Mono}
\setmathfont{Latin Modern Math}

% ---------- Layout (Tufte-like wide margins) ----------
\RequirePackage{geometry}
\geometry{
  papersize={8.5in, 11in},
  textheight=8.5in,
  inner=1.0in,
  outer=2.5in,
  marginparwidth=1.8in,
  marginparsep=0.3in,
  top=1.0in
}

\setlength{\parskip}{0.5em}
\setlength{\parindent}{0pt}
\linespread{1.08}

% ---------- Colors ----------
\RequirePackage{xcolor}

% Primary palette
\definecolor{mnsNavy}{RGB}{31, 51, 115}
\definecolor{mnsRust}{RGB}{191, 64, 38}
\definecolor{mnsTeal}{RGB}{38, 128, 115}

% Environment backgrounds
\definecolor{mnsIntuitionBg}{RGB}{235, 241, 249}
\definecolor{mnsExampleBg}{RGB}{253, 248, 237}
\definecolor{mnsDerivationBorder}{RGB}{160, 160, 160}
\definecolor{mnsWarningBorder}{RGB}{191, 64, 38}
\definecolor{mnsConnectionBorder}{RGB}{130, 130, 130}
\definecolor{mnsKeyEqFrame}{RGB}{50, 50, 50}

% ---------- Core packages ----------
\RequirePackage{graphicx}
\RequirePackage{amsmath}
% NOTE: Do not load amssymb when using unicode-math
% NOTE: mathtools loaded before unicode-math above
\RequirePackage{booktabs}
\RequirePackage{enumitem}
\RequirePackage{marginnote}
\RequirePackage{mparhack}      % Fix margin note placement
\RequirePackage[most]{tcolorbox}

% ---------- Diagrams ----------
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
\RequirePackage[european, straightvoltages]{circuitikz}

\usetikzlibrary{
  arrows.meta,
  calc,
  decorations.pathmorphing,
  decorations.markings,
  positioning,
  shapes.geometric,
  patterns,
  backgrounds
}

% ---------- Cross-references ----------
\RequirePackage{hyperref}
\hypersetup{
  colorlinks=true,
  linkcolor=mnsNavy,
  citecolor=mnsTeal,
  urlcolor=mnsRust,
  pdfauthor={Arjun Puri},
  pdftitle={Models of Neural Systems: Lecture Notes}
}
\RequirePackage[capitalise, noabbrev]{cleveref}

% ---------- Bibliography ----------
\RequirePackage{csquotes}

% ---------- Index ----------
\RequirePackage{imakeidx}
\makeindex[intoc]

% ---------- Headers and footers (KOMA-Script) ----------
\RequirePackage{scrlayer-scrpage}
\pagestyle{scrheadings}
\clearpairofpagestyles
\ofoot[\pagemark]{\pagemark}
\ohead{\headmark}

% Chapter mark: just chapter title, no number prefix in header
\automark[chapter]{chapter}

% ---------- Chapter heading style ----------
\addtokomafont{chapter}{\sffamily\color{mnsNavy}}
\addtokomafont{section}{\sffamily\color{mnsNavy}}
\addtokomafont{subsection}{\sffamily\color{mnsNavy}}
\addtokomafont{chapterprefix}{\sffamily\large}
\renewcommand*{\raggedchapter}{\raggedright}

% ---------- Part heading style ----------
\addtokomafont{part}{\sffamily\color{mnsNavy}}
\addtokomafont{partprefix}{\sffamily\large}

% ---------- Chapter abstract ----------
\newenvironment{chapterabstract}{%
  \begin{quote}\itshape
}{%
  \end{quote}\medskip
}

% ---------- Margin "What You Will Learn" box ----------
\newcommand{\learninggoals}[1]{%
  \marginnote{%
    \begin{tcolorbox}[
      enhanced,
      colback=mnsIntuitionBg,
      colframe=mnsNavy,
      boxrule=0.4pt,
      arc=1.5mm,
      left=0.5em,
      right=0.5em,
      top=0.5em,
      bottom=0.5em,
      fonttitle=\sffamily\bfseries\footnotesize,
      title=What You Will Learn,
      width=\marginparwidth
    ]
    \footnotesize #1
    \end{tcolorbox}
  }%
}

% ---------- Margin note shorthand ----------
\newcommand{\sidenote}[1]{\marginnote{\footnotesize #1}}

\endinput
