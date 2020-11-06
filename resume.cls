% Resume class loosely based on Doruk Cetin's Simple-CV package

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\DeclareOption{black}{\def\theme{black}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage[export]{adjustbox}
\RequirePackage{enumitem}
\RequirePackage{hyperref}

\newenvironment*{dummyenv}{}{}

\pagestyle{empty}

\geometry{margin=2.5cm}

% Colors
\newcommand{\theme}[1]{\def\themecolor{#1}}

% ensure theme is black if not provided explicitly
\providecommand{\themecolor}{black}
\definecolor{color-text}{gray}{0.1}
\newcommand{\colortext}{\color{color-text}}
\newcommand{\textcolortheme}{\textcolor{\themecolor}}
\newcommand{\colortheme}{\color{\themecolor}}

% make main body text not *pure* black
\newcommand{\globalcolor}[1]{\color{#1}\global\let\default@color\current@color}
\AtBeginDocument{\globalcolor{color-text}}

% Heading macros
\newcommand{\name}[1]{\def\thename{#1}}
\newcommand{\information}[1]{\def\theinfo{#1}}
\newcommand{\photo}[1]{\def\thephoto{#1}}

% Link helpers for the "info" section
\newcommand{\github}[1]{\href{https://github.com/#1}{#1}}
\newcommand{\website}[1]{\href{https://#1}{#1}}
\newcommand{\atmention}[2]{\href{https://#1/#2}{@#2}} % mainly for mastodon
\newcommand{\atmentionwithsite}[2]{\href{https://#1/#2}{@#2@#1}}
\newcommand{\twitter}[1]{\atmention{twitter.com}{#1}}

% name---info header
\newcommand{\makeheading}[0]{
    \begin{minipage}[t]{0.60\textwidth}
        \vspace*{\fill}
        \Huge \textcolortheme{\thename}
    \end{minipage}
    \begin{minipage}[t]{0.35\textwidth}
        \begin{flushright}
            \theinfo
        \end{flushright}
    \end{minipage}
}

% name/info---photo header
\newcommand{\makephotoheading}[0]{
    \begin{minipage}[t]{0.60\textwidth}
        \begin{dummyenv}
            \vspace*{\fill}
            \Huge \textcolortheme{\thename}
        \end{dummyenv}
        \vspace{5mm} \\
        \theinfo
    \end{minipage}
    \begin{minipage}[t]{0.35\textwidth}
        \begin{flushright}
            \includegraphics[width=.5\linewidth,keepaspectratio,valign=t]{\thephoto}
        \end{flushright}
    \end{minipage}
}

% Make section and subsection headers contain rules
\titleformat{\section}{\large}{}{0pt}{}[\colortheme\titlerule]
\titleformat{\subsection}{}{}{0pt}{}[
    \raisebox{1em}{\makebox[0.33\textwidth][l]{\colortheme\titlerule}}
    \vspace{-1em}]

% Block list of entries
\newlist{blocklist}{itemize}{1}
\setlist[blocklist]{label={},leftmargin=*}

% Generic tabular entry 
\newcommand{\entry}[4]{
    \item
    \begin{tabular*}{0.97 \textwidth}{l @{\extracolsep{\fill}} r}
        \textbf{#1} & #2 \\
        #3 & #4
    \end{tabular*}
}