\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{amirkabir-hw}
              [05/14/2025 v0.1
 Persian document class in XeLaTeX for Amirkabir University of Technology homeworks]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}

\def\university#1{\gdef\@university{#1}}
\def\college#1{\gdef\@college{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\department#1{\gdef\@department{#1}}
\def\lesson#1{\gdef\@lesson{#1}}
\def\teacher#1{\gdef\@teacher{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\def\firstsupervisor#1{\gdef\@firstsupervisor{#1}}
\def\secondsupervisor#1{\gdef\@secondsupervisor{#1}}

\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}

\ProcessOptions

\newcommand{\titlePage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-30mm}

% دستورات تک‌آرمه
\centerline{{\includegraphics[width=5cm]{logo}}}
\vskip 0.1cm

\centerline{\bf \@university}
\centerline{\large\bfseries\@faculty}

% بعد از آرم‌ها
\vskip 1cm
{\huge\titlefont \@title}\par

{\Large\bfseries\par درس}
\vskip -1.2cm
{\bfseries\par \@lesson}

{\Large\bfseries\par استاد}
\vskip -1.2cm
{\bfseries\par \@teacher}

{\Large\bfseries\par دستیاران}
\vskip -1.2cm
{\bfseries\par \@firstsupervisor}
\vskip -1.4cm
{\bfseries\par \@secondsupervisor}

\vskip 5mm

{\Large\bfseries\par دانشجو}
\vskip -1.2cm
\par
{\bfseries \@name\ \ \@surname}
\vskip -1.4cm
{\bfseries \@studentID}

\par
\vskip 6mm
%\vfill
{\large \@thesisdate}
%\vfill
\end{titlepage}%
} % end of titlePage

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\titlepage{
  \newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
  \def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}
\def\signature{\vspace{1cm}
\begin{flushleft}
\end{flushleft}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
