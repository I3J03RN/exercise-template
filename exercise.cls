\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercise}
\LoadClass{article}

\RequirePackage{xparse}
\RequirePackage{etoolbox}

\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=Exercise,
  prefix=Exercise@
}
\DeclareStringOption{serie}

\ProcessKeyvalOptions*

\NewDocumentCommand{\serie}{}{\Exercise@serie}

\RequirePackage[a4paper, margin=2cm]{geometry}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage{lmodern, textcomp}

\RequirePackage{mathtools}
\RequirePackage{amssymb, amsthm, amsmath, amsfonts}

\RequirePackage{xcolor}

\RequirePackage{fancyhdr}

\RequirePackage[hidelinks]{hyperref}
\RequirePackage{cleveref}

\RequirePackage{enumitem}

\RequirePackage[most]{tcolorbox}

% translations
\RequirePackage{translations}
\DeclareTranslation{English}{exercise}{Exercise}
\DeclareTranslation{German}{exercise}{Aufgabe}
\DeclareTranslationFallback{exercise}{Exercise}

\DeclareTranslation{English}{series}{Series}
\DeclareTranslation{German}{series}{Serie}
\DeclareTranslationFallback{series}{Series}

\setlength{\parindent}{0pt}

\newcommand{\bA}{\mathbb{A}}
\newcommand{\cA}{\mathcal{A}}
\newcommand{\bB}{\mathbb{B}}
\newcommand{\cB}{\mathcal{B}}
\newcommand{\bC}{\mathbb{C}}
\newcommand{\cC}{\mathcal{C}}
\newcommand{\bD}{\mathbb{D}}
\newcommand{\cD}{\mathcal{D}}
\newcommand{\bE}{\mathbb{E}}
\newcommand{\cE}{\mathcal{E}}
\newcommand{\bF}{\mathbb{F}}
\newcommand{\cF}{\mathcal{F}}
\newcommand{\bG}{\mathbb{G}}
\newcommand{\cG}{\mathcal{G}}
\newcommand{\bH}{\mathbb{H}}
\newcommand{\cH}{\mathcal{H}}
\newcommand{\bI}{\mathbb{I}}
\newcommand{\cI}{\mathcal{I}}
\newcommand{\bJ}{\mathbb{J}}
\newcommand{\cJ}{\mathcal{J}}
\newcommand{\bK}{\mathbb{K}}
\newcommand{\cK}{\mathcal{K}}
\newcommand{\bL}{\mathbb{L}}
\newcommand{\cL}{\mathcal{L}}
\newcommand{\bM}{\mathbb{M}}
\newcommand{\cM}{\mathcal{M}}
\newcommand{\bN}{\mathbb{N}}
\newcommand{\cN}{\mathcal{N}}
\newcommand{\bO}{\mathbb{O}}
\newcommand{\cO}{\mathcal{O}}
\newcommand{\bP}{\mathbb{P}}
\newcommand{\cP}{\mathcal{P}}
\newcommand{\bQ}{\mathbb{Q}}
\newcommand{\cQ}{\mathcal{Q}}
\newcommand{\bR}{\mathbb{R}}
\newcommand{\cR}{\mathcal{R}}
\newcommand{\bS}{\mathbb{S}}
\newcommand{\cS}{\mathcal{S}}
\newcommand{\bT}{\mathbb{T}}
\newcommand{\cT}{\mathcal{T}}
\newcommand{\bU}{\mathbb{U}}
\newcommand{\cU}{\mathcal{U}}
\newcommand{\bV}{\mathbb{V}}
\newcommand{\cV}{\mathcal{V}}
\newcommand{\bW}{\mathbb{W}}
\newcommand{\cW}{\mathcal{W}}
\newcommand{\bX}{\mathbb{X}}
\newcommand{\cX}{\mathcal{X}}
\newcommand{\bY}{\mathbb{Y}}
\newcommand{\cY}{\mathcal{Y}}
\newcommand{\bZ}{\mathbb{Z}}
\newcommand{\cZ}{\mathcal{Z}}

\renewcommand{\epsilon}{\varepsilon}
\renewcommand{\phi}{\varphi}
\newcommand{\PP}{{\normalfont\textsf{P}}}
\newcommand{\NP}{{\normalfont\textsf{NP}}}
\DeclareMathOperator{\poly}{poly}

\newcommand{\setM}[2]{\ensuremath{\left\{#1 : #2 \right\}}}
\DeclarePairedDelimiterX{\abs}[1]{\lvert}{\rvert}{#1}
\DeclarePairedDelimiterX{\norm}[1]{\lVert}{\rVert}{#1}

\newtcbtheorem[crefname={Lemma}{Lemmata}]{lemma}{Lemma}{ %
  enhanced,
  left=1mm,
  right=2mm,
  top=0mm,
  middle=0mm,
  bottom=2mm,
  toprule=0mm,
  titlerule=0mm,
  bottomrule=0mm,
  boxsep=5pt,
  frame hidden,
  % colbacktitle=teal!40,
  coltitle=teal!80!black,
  colbacktitle=black!5!white,
  fonttitle=\sffamily\bfseries,
  fontupper=\itshape,
  segmentation style={solid, help lines},
  lower separated=false,
  borderline west={4pt}{0pt}{teal!100},
  % fuzzy shadow={.5mm}{-.5mm}{0mm}{0.1mm}{black!50!white}, 
  sharp corners=west,
  breakable,
  break at=-\baselineskip/0pt,
  before lower*=\begin{proof}\renewcommand\qedsymbol{\rotatebox[origin=c]{45}{$\textcolor{teal!80!white}{\blacksquare}$}},
  after lower*=\end{proof}
}{lem}

\renewcommand{\thesection}{\Large\sffamily\GetTranslation{exercise} \arabic{section}}
\renewcommand{\thesubsection}{\color{blue}\large\sffamily\GetTranslation{exercise} \arabic{section}.\alph{subsection}} 
\renewcommand{\thesubsubsection}{\color{blue}\sffamily\GetTranslation{exercise} \arabic{section}.\alph{subsection}.\roman{subsubsection}}
 
% Header
\pagestyle{fancy}
\fancyhf{}
\makeatletter
\lhead{\@title\notblank{\Exercise@serie}{ -- \GetTranslation{series} \Exercise@serie}{}} 
\rhead{\@author}
\makeatother

