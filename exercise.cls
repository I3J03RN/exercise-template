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

\RequirePackage{iftex}

\ifpdftex
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}
\fi

\ifluatex
  \RequirePackage{fontspec}
\fi

\RequirePackage{lmodern, textcomp}

\RequirePackage{mathtools}
\RequirePackage{amssymb, amsthm, amsmath, amsfonts}

\RequirePackage{xcolor}

\RequirePackage{fancyhdr}

\RequirePackage[hidelinks]{hyperref}

\RequirePackage{enumitem}

\RequirePackage[most]{tcolorbox}

% translations
\RequirePackage{babel}
\RequirePackage{translations}

\ifcurrentlanguage{German}{
  \RequirePackage[german, onelanguage, linesnumbered, noend]{algorithm2e}
}{
  \RequirePackage[linesnumbered, noend]{algorithm2e}
} 

\DeclareTranslation{English}{exercise}{Exercise}
\DeclareTranslation{German}{exercise}{Aufgabe}
\DeclareTranslationFallback{exercise}{Exercise}

\DeclareTranslation{English}{series}{Series}
\DeclareTranslation{German}{series}{Serie}
\DeclareTranslationFallback{series}{Series}

\DeclareTranslation{English}{algorithm}{algorithm}
\DeclareTranslation{German}{algorithm}{Algorithmus}
\DeclareTranslationFallback{algorithm}{algorithm}

\DeclareTranslation{English}{Algorithm}{Algorithm}
\DeclareTranslation{German}{Algorithm}{Algorithmus}
\DeclareTranslationFallback{Algorithm}{Algorithm}

\DeclareTranslation{English}{algorithms}{algorithms}
\DeclareTranslation{German}{algorithms}{Algorithmen}
\DeclareTranslationFallback{algorithms}{algorithms}

\DeclareTranslation{English}{Algorithms}{Algorithms}
\DeclareTranslation{German}{Algorithms}{Algorithmen}
\DeclareTranslationFallback{Algorithms}{Algorithms}

\DeclareTranslation{English}{lemma}{lemma}
\DeclareTranslation{German}{lemma}{Lemma}
\DeclareTranslationFallback{lemma}{lemma}

\DeclareTranslation{English}{Lemma}{Lemma}
\DeclareTranslation{German}{Lemma}{Lemma}
\DeclareTranslationFallback{Lemma}{Lemma}

\DeclareTranslation{English}{lemmata}{lemmata}
\DeclareTranslation{German}{lemmata}{Lemmata}
\DeclareTranslationFallback{lemmata}{lemmata}

\DeclareTranslation{English}{Lemmata}{Lemmata}
\DeclareTranslation{German}{Lemmata}{Lemmata}
\DeclareTranslationFallback{Lemmata}{Lemmata}

\DeclareTranslation{English}{def}{definition}
\DeclareTranslation{German}{def}{Definition}
\DeclareTranslationFallback{def}{definition}

\DeclareTranslation{English}{Def}{Definition}
\DeclareTranslation{German}{Def}{Definition}
\DeclareTranslationFallback{Def}{Definition}

\DeclareTranslation{English}{defs}{definitions}
\DeclareTranslation{German}{defs}{Definitionen}
\DeclareTranslationFallback{defs}{definitions}

\DeclareTranslation{English}{Defs}{Definitions}
\DeclareTranslation{German}{Defs}{Definitionen}
\DeclareTranslationFallback{Defs}{Definitions}

\DeclareTranslation{English}{lst}{listing}
\DeclareTranslation{German}{lst}{Protokoll}
\DeclareTranslationFallback{lst}{listing}

\DeclareTranslation{English}{Lst}{Listing}
\DeclareTranslation{German}{Lst}{Protokoll}
\DeclareTranslationFallback{Lst}{Listing}

\DeclareTranslation{English}{lsts}{listings}
\DeclareTranslation{German}{lsts}{Protokolle}
\DeclareTranslationFallback{lsts}{listings}

\DeclareTranslation{English}{Lsts}{Listings}
\DeclareTranslation{German}{Lsts}{Protokolle}
\DeclareTranslationFallback{Lsts}{Listings}

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
\newcommand{\abs}[1]{\ensuremath{\left\lvert#1\right\rvert}}
\newcommand{\norm}[1]{\ensuremath{\left\lVert#1\right\rVert}}

\RequirePackage{cleveref}

\tcbset{sidestrokebox/.style={ %
    enhanced,
    left=1mm,
    right=2mm,
    top=0mm,
    middle=0mm,
    bottom=0mm,
    toprule=0mm,
    titlerule=0mm,
    bottomrule=0mm,
    boxsep=5pt,
    frame hidden,
    fonttitle=\sffamily\bfseries,
    sharp corners=west,
    breakable,
    break at=-\baselineskip/0pt,
    coltitle=#1!80!black,
    colbacktitle=black!5!white,
    borderline west={4pt}{0pt}{#1},
  }}

\newtcbtheorem[crefname={\GetTranslation{lemma}}{\GetTranslation{lemmata}},Crefname={\GetTranslation{Lemma}}{\GetTranslation{Lemmata}}]{lemma}{\GetTranslation{Lemma}}{ %
  sidestrokebox={teal},
  fontupper=\itshape,
  lower separated=false,
  before lower*={\begin{proof}\renewcommand\qedsymbol{\rotatebox[origin=c]{45}{$\textcolor{teal!80!white}{\blacksquare}$}}},
  after lower*={\vspace{2mm}\end{proof}}
}{lem}

\newtcbtheorem[crefname={\GetTranslation{def}}{\GetTranslation{defs}},Crefname={\GetTranslation{Def}}{\GetTranslation{Defs}}]{definition}{\GetTranslation{Definition}}{ %
  sidestrokebox={darkgray}
}{def}

\DeclareTCBListing[auto counter,crefname={\GetTranslation{lst}}{\GetTranslation{lsts}},Crefname={\GetTranslation{Lst}}{\GetTranslation{Lsts}}]{listingbox}{mm}{ %
  sidestrokebox={brown},
  listing only,
  title=\GetTranslation{Lst} \thetcbcounter\notblank{#1}{: #1}{},
  label=lst:\ifblank{#2}{\thetcbcounter}{#2}
}

\DeclareTColorBox[auto counter,crefname={\GetTranslation{algorithm}}{\GetTranslation{algorithms}},Crefname={\GetTranslation{Algorithm}}{\GetTranslation{Algorithms}}]{algorithmbox}{mm}{ %
  sidestrokebox={violet},
  title=\GetTranslation{Algorithm} \thetcbcounter\notblank{#1}{: #1}{},
  label=alg:\ifblank{#2}{\thetcbcounter}{#2},
  before upper*={\begin{algorithm}[H]},
  after upper*={\end{algorithm}}
}

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
