%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Statement of Purpose Template
%% Author – Sang Xing
%% Email  – Sangbuster911@yahoo.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sop}[2021/12/01 Statement of Purpose]

\LoadClass[12pt, a4paper]{article}
\RequirePackage[a4paper, margin=0.6in]{geometry}
\RequirePackage[hidelinks, pdfusetitle]{hyperref}
\RequirePackage{fontspec, xcolor, sectsty, setspace}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options [color, font]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{headingcolor}{HTML}{0395DE}
\definecolor{margincolor}{HTML}{000000}

\newcommand\headingcolor{}
\newcommand\margincolor{}

\DeclareOption{color}{
    \renewcommand\headingcolor{\color{headingcolor}}
    \renewcommand\margincolor{\color{margincolor}}
}

\DeclareOption{font}{
    \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Make Title
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand\author[2]{
    \gdef\@author{\href{#1}{#2}}
    \hypersetup{pdftitle={\@title},pdfauthor={#2}}
}
\newcommand\email[1]{\gdef\email{\href{mailto:#1}{#1}}}
\renewcommand{\maketitle}{
  \begin{center}
    {\headingcolor \Huge \scshape \@title}
    {\margincolor \rule{\linewidth}{0.3mm}}
    {\normalsize \headingcolor \email \hfill \@author}
  \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Font / Paragraph Styling
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength\parindent{20pt}
\onehalfspacing