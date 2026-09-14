%% Classe local compatível com o layout público do template SBC Reviews 2025.
%% Incluída para tornar o projeto Overleaf autocontido.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sbcreviews-2025}[2026/09/14 local compatible class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twoside,twocolumn,10pt,a4paper]{article}

\RequirePackage{iftex}
\ifPDFTeX
  \RequirePackage[T1]{fontenc}
  \RequirePackage[utf8]{inputenc}
  \RequirePackage{tgtermes}
  \RequirePackage[sfdefault]{roboto}
\else
  \RequirePackage{fontspec}
  \setmainfont{Liberation Serif}
  \setsansfont{Roboto}
\fi
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{etoolbox}
\RequirePackage{amsmath,amssymb}
\RequirePackage{enumitem}
\RequirePackage[explicit]{titlesec}
\RequirePackage{caption}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\RequirePackage{environ}
\RequirePackage{natbib}
\RequirePackage[portuguese,english]{babel}

\geometry{a4paper,top=.4in,includehead,headsep=10pt,headheight=28pt,left=.70in,textwidth=41.5pc,textheight=60pc,columnsep=18pt,footskip=18pt}
\setlength{\parindent}{20pt}
\setlength{\bibsep}{0.3mm}
\setlength{\textfloatsep}{0.2cm}
\setlist{noitemsep}

\def\@shortauthor{}
\def\@shorttitle{}
\def\@jyear{}
\def\@jid{}
\def\@jtitle{}
\def\@engtitle{}
\def\@category{}
\def\@copyrightstatement{}
\def\@issn{}
\def\@doi{}
\renewcommand{\title}[2][]{\gdef\@shorttitle{#1}\gdef\@title{#2}}
\renewcommand{\author}[2][]{\gdef\@shortauthor{#1}\gdef\@author{#2}}
\newcommand{\affil}[1]{\par\noindent\affilfont#1\par}
\newcommand{\issn}[1]{\gdef\@issn{#1}}
\newcommand{\doi}[1]{\gdef\@doi{#1}}
\newcommand{\jyear}[1]{\gdef\@jyear{#1}}
\newcommand{\jid}[1]{\gdef\@jid{#1}}
\newcommand{\jtitle}[1]{\gdef\@jtitle{#1}}
\newcommand{\engtitle}[1]{\gdef\@engtitle{#1}}
\newcommand{\category}[1]{\gdef\@category{#1}}
\newcommand{\copyrightstatement}[1]{\gdef\@copyrightstatement{#1}}

\def\categoryfont{\fontsize{8}{12}\bfseries\selectfont\sffamily\raggedright}
\def\titlefont{\fontsize{18}{20}\bfseries\selectfont\sffamily\raggedright}
\def\engtitlefont{\fontsize{14}{15}\bfseries\selectfont\sffamily\raggedright}
\def\authorfont{\fontsize{10}{11}\selectfont\sffamily\raggedright}
\def\affilfont{\footnotesize\raggedright}
\def\sectionfont{\fontsize{14}{14}\sffamily\bfseries\rightskip1pc plus1fill}
\def\subsectionfont{\fontsize{12}{12}\sffamily\bfseries\rightskip1pc plus1fill}
\def\subsubsectionfont{\sffamily\bfseries\normalsize\itshape\rightskip1pc plus1fill}

\NewEnviron{frontmatter}{\twocolumn[\BODY]}
\renewcommand{\@maketitle}{%
  \rule{\linewidth}{.27pt}\vspace{2pt}\par
  {\categoryfont\scshape\@category\par}\vskip4pt
  {\titlefont\@title\par}\vskip6pt
  {\engtitlefont\itshape\@engtitle\par}\vskip8pt
  {\authorfont\@author\par}\vskip4pt
}
\newenvironment{mail}{\vskip4pt\noindent\small\itshape}{\vskip4pt}
\newenvironment{abstract-pt}{\vskip10pt\noindent\small\sffamily\textbf{Resumo. }\rmfamily}{\vskip4pt}
\newenvironment{abstract-en}{\vskip8pt\noindent\small\sffamily\textbf{Abstract. }\rmfamily}{\vskip6pt}
\newenvironment{pchaves}{\noindent\small\sffamily\textbf{Palavras-chave: }\rmfamily}{\vskip4pt}
\newenvironment{keywords}{\noindent\small\sffamily\textbf{Keywords: }\rmfamily}{\vskip4pt\rule{\linewidth}{.27pt}\vskip4pt}

\titleformat{\section}{\sectionfont}{\thesection}{0.5em}{#1}
\titleformat{\subsection}{\subsectionfont}{\thesubsection}{0.5em}{#1}
\titleformat{\subsubsection}{\subsubsectionfont}{\thesubsubsection}{0.5em}{#1}
\titlespacing*{\section}{0pt}{10pt}{4pt}
\titlespacing*{\subsection}{0pt}{8pt}{1pt}
\titlespacing*{\subsubsection}{0pt}{7pt}{1pt}

\captionsetup*[figure]{font=footnotesize,labelfont=bf,labelsep=period,skip=2pt}
\captionsetup*[table]{font=small,position=top,labelfont=bf,labelsep=period,skip=2pt}
\fancyhf{}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead[L]{\footnotesize\itshape\@shorttitle}
\fancyhead[R]{\footnotesize\itshape\@shortauthor}
\fancyfoot[C]{\thepage}
\endinput
