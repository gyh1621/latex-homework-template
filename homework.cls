\LoadClass{article}

\usepackage{fancyhdr}
\usepackage{extramarks}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{amsfonts}
\usepackage{tikz}
\usepackage[position=b]{subcaption}
\usepackage{tkz-berge}
\usetikzlibrary{trees}
\usepackage[plain]{algorithm}
\usepackage[noend]{algpseudocode}
\usepackage[font=itshape]{quoting}
\usepackage{enumitem}
\usepackage{xcolor}
\usepackage{xparse}
\usepackage{indentfirst}
\renewcommand\labelitemi{--}

\usetikzlibrary{automata,positioning}

%
% Basic Document Settings
%

\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.25in

\linespread{1.1}

\fancypagestyle{normalpage}{
    \fancyhead[L]{\@hmwkClass}
    \fancyhead[R]{\@hmwkTitle}
    \fancyfoot[L]{\lastxmark}
    \fancyfoot[C]{\thepage}

    \renewcommand\headrulewidth{0.4pt}
    \renewcommand\footrulewidth{0.4pt}
}

\fancypagestyle{firstpage}{
    \renewcommand{\headrulewidth}{0.4pt}
    \fancyhead[L]{%
        \hrule\medskip
        \begin{minipage}{0.295\textwidth}
            \raggedright
            \footnotesize
            \@hmwkAuthorName \hfill\\
            \@hmwkAuthorID \hfill\\
            \@hmwkAuthorEmail
            \medskip
        \end{minipage}
    }
    \fancyhead[C]{%
        \begin{minipage}{0.4\textwidth}
            \centering
            \large
            \@hmwkTitle\\
            \normalsize
            \medskip
        \end{minipage}
    }
    \fancyhead[R]{%
        \begin{minipage}{0.295\textwidth}
            \raggedleft
            \@hmwkClass\hfill\\
            \today\hfill\\
            \medskip
        \end{minipage}
    }
    \setlength{\headsep}{0.7in}
}

\pagestyle{normalpage}


\setlength\parindent{0pt}
\setlength\parskip{0.3em}

%
% Create Problem Sections
%

\newcommand{\enterProblemHeader}[1]{
    \nobreak\extramarks{}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
    \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
}

\newcommand{\exitProblemHeader}[1]{
    \nobreak\extramarks{Problem \arabic{#1} (continued)}{Problem \arabic{#1} continued on next page\ldots}\nobreak{}
    \stepcounter{#1}
    \nobreak\extramarks{Problem \arabic{#1}}{}\nobreak{}
}

\setcounter{secnumdepth}{0}
\newcounter{partCounter}
\newcounter{homeworkProblemCounter}
\setcounter{homeworkProblemCounter}{1}
\nobreak\extramarks{Problem \arabic{homeworkProblemCounter}}{}\nobreak{}

%
% Homework Problem Environment
%
% This environment takes an optional argument. When given, it will adjust the
% problem counter. This is useful for when the problems given for your
% assignment aren't sequential. See the last 3 problems of this template for an
%hmwkTitle example.
%
\newenvironment{homeworkProblem}[1][-1]{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \section{Problem \arabic{homeworkProblemCounter}}
    \setcounter{partCounter}{1}
    \enterProblemHeader{homeworkProblemCounter}
}{
    \exitProblemHeader{homeworkProblemCounter}
}

\newenvironment{wrongProblem}[1][-1]{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \section{\color{red} Problem \arabic{homeworkProblemCounter}}
    \setcounter{partCounter}{1}
    \enterProblemHeader{homeworkProblemCounter}
}{
    \exitProblemHeader{homeworkProblemCounter}
}

\newenvironment{extraHomeworkProblem}[1][-1]{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \section{Extra Problem \arabic{homeworkProblemCounter}}
    \setcounter{partCounter}{1}
    \enterProblemHeader{homeworkProblemCounter}
}{
    \exitProblemHeader{homeworkProblemCounter}
}

\newenvironment{wrongExtraProblem}[1][-1]{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \section{\color{red} Extra Problem \arabic{homeworkProblemCounter}}
    \setcounter{partCounter}{1}
    \enterProblemHeader{homeworkProblemCounter}
}{
    \exitProblemHeader{homeworkProblemCounter}
}

%
% Homework Details
%   - Title
%   - Class
%   - Author
%   - Email
%   - ID

\newcommand\hmwkTitle[1]{\renewcommand\@hmwkTitle{#1}}
\newcommand\@hmwkTitle{\@latex@error{No \noexpand\hmwkTitle given}\@ehc}
\newcommand\hmwkClass[1]{\renewcommand\@hmwkClass{#1}}
\newcommand\@hmwkClass{\@latex@error{No \noexpand\hmwkClass given}\@ehc}
\newcommand\hmwkAuthorName[1]{\renewcommand\@hmwkAuthorName{\textbf{#1}}}
\newcommand\@hmwkAuthorName{\@latex@error{No \noexpand\hmwkAuthorName given}\@ehc}
\newcommand\hmwkAuthorID[1]{\renewcommand\@hmwkAuthorID{#1}}
\newcommand\@hmwkAuthorID{\@latex@error{No \noexpand\hmwkAuthorID given}\@ehc}
\newcommand\hmwkAuthorEmail[1]{\renewcommand\@hmwkAuthorEmail{#1}}
\newcommand\@hmwkAuthorEmail{\@latex@error{No \noexpand\hmwkAuthorEmail given}\@ehc}

\renewcommand{\part}[1]{\textbf{\large Part \Alph{partCounter}}\stepcounter{partCounter}\\}
\newcommand{\smallpart}[1]{\textbf{Part \Alph{partCounter}}\stepcounter{partCounter}\\}

%
% Various Helper Commands
%

% Useful for algorithms
\newcommand{\alg}[1]{\textsc{\bfseries \footnotesize #1}}
\algrenewcommand{\algorithmiccomment}[1]{\hskip3em$\rightarrow$ #1}
\NewDocumentCommand{\LeftComment}{s m}{%
  \Statex \IfBooleanF{#1}{\hspace*{\ALG@thistlm}}\(\rightarrow\) #2}

% For derivatives
\newcommand{\deriv}[1]{\frac{\mathrm{d}}{\mathrm{d}x} (#1)}

% For partial derivatives
\newcommand{\pderiv}[2]{\frac{\partial}{\partial #1} (#2)}

% Integral dx
\newcommand{\dx}{\mathrm{d}x}

% Alias for the Solution section header
\newcommand{\solution}{\textbf{\large Solution}}

% Probability commands: Expectation, Variance, Covariance, Bias
\newcommand{\E}{\mathrm{E}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Cov}{\mathrm{Cov}}
\newcommand{\Bias}{\mathrm{Bias}}

% no left margin list
\newenvironment{noindentlist}{
  %\renewcommand*{\theenumi}{\alph{enumi}}%
  %\renewcommand*{\labelenumi}{\alph{enumi}.}%
  \enumerate[leftmargin=*]
}{%
  \endenumerate
}

% indent paragraphs %
\newenvironment{indentparagraphs}{
    \setlength\parindent{10pt}
}{%
    \setlength\parindent{0pt}
}
