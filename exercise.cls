\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercise}
\LoadClass[
numbers=noendperiod,
a4paper,
]{scrartcl}
\RequirePackage[headsepline]{scrlayer-scrpage}

\RequirePackage{xparse}
\RequirePackage{etoolbox}

\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=Exercise,
  prefix=Exercise@
}
\DeclareStringOption{serie}[ ]
\DeclareBoolOption[true]{redefsec}

\ProcessKeyvalOptions*

\NewDocumentCommand{\serie}{}{\Exercise@serie}

\RequirePackage{iftex}

\ifpdftex
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}
\fi

\ifluatex
  \RequirePackage{fontspec}
\fi

\RequirePackage{lmodern, textcomp}

\RequirePackage[hidelinks]{hyperref}

\RequirePackage{enumitem}

\RequirePackage{my-math-defines}

% translations
\RequirePackage{babel}
\RequirePackage{translations}

\RequirePackage{cleveref}

\RequirePackage{colorful-boxes}

% change parskip after loading algorithm2e to prevent algorithm shifting
% https://tex.stackexchange.com/a/299703
\KOMAoption{parskip}{half*}

\RequirePackage{todonotes}

\ifExercise@redefsec
\renewcommand{\thesection}{\color{blue}\Large\sffamily\GetTranslation{exercise} \arabic{section}}
\renewcommand{\thesubsection}{\color{blue}\large\sffamily\GetTranslation{exercise} \arabic{section}.\alph{subsection}}
\renewcommand{\thesubsubsection}{\color{blue}\sffamily\GetTranslation{exercise} \arabic{section}.\alph{subsection}.\roman{subsubsection}}
\fi

% Header
\setkomafont{pagehead}{\normalfont}
\pagestyle{scrheadings}
\makeatletter
\lohead{\@title\expandafter\ifblank\expandafter{\Exercise@serie}{}{ -- \GetTranslation{series} \Exercise@serie}}
\rohead{\@author}
\makeatother


% https://tex.stackexchange.com/a/577347
\ProcessOptions\relax
