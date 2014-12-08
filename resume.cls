% Copyright (C) 2012  Nicola Fontana <ntd at entidi.it>
%
% This program can be redistributed and/or modified under
% the terms of the LaTeX Project Public License, either
% version 1.3 of this license or (at your option) any later
% version. The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all LaTeX distributions
% version 2005/12/01 or later.
%
% Based on the original idea by Alessandro Plasmati found at
% http://www.latextemplates.com/template/two-column-one-page-cv
%
% The most relevant changes from his work are:
%
% * this is a class, not a template document;
% * tccv is based on scrartcl (from Koma-script), not on article;
% * the fonts are selected from the PSNFSS collection, so no
%   custom font installation should be required;
% * heavily based the implementation on custom environments and
%   macros, so the document is much easier to read (and customize);
% * it is plain LaTeX/Koma-script, so the CV can be compiled
%   with the usual tools, latex and pdflatex included.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccv}
              [2012/11/09 v1.0
 Two Column Curriculum Vitae]

\LoadClass[10pt]{scrartcl}

\setcounter{secnumdepth}{-1}
\RequirePackage[hmargin=1.25cm,vmargin=1.25cm,twocolumn,columnsep=1.25cm]{geometry}
\RequirePackage{bookman,etoolbox,hyperref,marvosym,needspace,tabularx,xcolor}

\usepackage{enumitem}
%\usepackage{fontspec}
%\usepackage{fontawesome}
%\providecommand\faSkype{{\FA\symbol{"F17E}}}

\usepackage{tikz}

\newcommand{\github}{%
\begin{tikzpicture}[y=0.25pt, x=0.25pt,yscale=-1, inner sep=0pt, outer sep=0pt,opacity=1]
  \begin{scope}[shift={(506.69823,386.92617)}]
    \path[fill=black] (116.9933,59.7217) .. controls (116.9933,71.2283) and
      (107.6655,80.5562) .. (96.1589,80.5562) .. controls (84.6524,80.5562) and
      (75.3245,71.2283) .. (75.3245,59.7217) .. controls (75.3245,48.2152) and
      (84.6524,38.8873) .. (96.1589,38.8873) .. controls (107.6654,38.8873) and
      (116.9933,48.2152) .. (116.9933,59.7217) -- cycle;
    \path[cm={{0.88462,0.0,0.0,0.88462,(11.09526,6.89097)}},fill=white]
      (116.9933,59.7217) .. controls (116.9933,71.2283) and (107.6655,80.5562) ..
      (96.1589,80.5562) .. controls (84.6524,80.5562) and (75.3245,71.2283) ..
      (75.3245,59.7217) .. controls (75.3245,48.2152) and (84.6524,38.8873) ..
      (96.1589,38.8873) .. controls (107.6654,38.8873) and (116.9933,48.2152) ..
      (116.9933,59.7217) -- cycle;
    \path[fill=black,nonzero rule] (103.4671,45.2878) .. controls (102.9322,45.4374)
      and (101.2003,46.2576) .. (100.5403,46.6739) -- (100.1099,46.9454) --
      (99.4882,46.8019) .. controls (99.0810,46.7080) and (98.1204,46.6415) ..
      (96.7048,46.6094) .. controls (94.4953,46.5593) and (93.4339,46.6361) ..
      (92.2380,46.9324) -- (91.6450,47.0793) -- (90.9468,46.6426) .. controls
      (90.0955,46.1101) and (88.7784,45.4948) .. (88.1825,45.3512) .. controls
      (87.9348,45.2916) and (87.5225,45.2429) .. (87.2643,45.2429) .. controls
      (86.8530,45.2429) and (86.7816,45.2733) .. (86.6817,45.4916) .. controls
      (86.3049,46.3144) and (86.1702,48.1697) .. (86.3982,49.3940) --
      (86.5087,49.9870) -- (86.0485,50.6088) .. controls (85.4184,51.4600) and
      (84.9876,52.3958) .. (84.8509,53.2104) .. controls (84.6439,54.4443) and
      (84.8398,57.3849) .. (85.1880,58.2702) .. controls (85.2564,58.4443) and
      (85.2939,58.4403) .. (81.6976,58.6338) .. controls (79.2203,58.7672) and
      (77.4880,58.9815) .. (77.2948,59.1788) .. controls (77.1683,59.3080) and
      (77.2021,59.3161) .. (77.6325,59.2604) .. controls (79.8802,58.9695) and
      (83.0680,58.7293) .. (84.6818,58.7293) .. controls (85.3322,58.7293) and
      (85.3437,58.7337) .. (85.4709,59.0402) .. controls (85.5424,59.2123) and
      (85.5936,59.3574) .. (85.5857,59.3654) .. controls (85.5778,59.3733) and
      (84.8826,59.4288) .. (84.0409,59.4888) .. controls (82.1375,59.6245) and
      (80.3024,59.8884) .. (78.6942,60.2577) .. controls (77.5177,60.5279) and
      (77.1884,60.6573) .. (77.3264,60.7953) .. controls (77.3578,60.8267) and
      (77.9386,60.7190) .. (78.6081,60.5575) .. controls (80.6932,60.0548) and
      (83.4463,59.6858) .. (85.1122,59.6858) .. controls (85.7817,59.6858) and
      (85.8050,59.6938) .. (85.9497,59.9727) .. controls (86.1509,60.3606) and
      (87.1973,61.4638) .. (87.6756,61.7923) .. controls (88.7575,62.5354) and
      (90.1146,63.0487) .. (91.7311,63.3262) .. controls (92.3241,63.4280) and
      (92.8529,63.5117) .. (92.9028,63.5117) .. controls (92.9519,63.5117) and
      (92.8171,63.7221) .. (92.6084,63.9708) .. controls (92.2151,64.4395) and
      (91.8427,65.1574) .. (91.8393,65.4534) .. controls (91.8343,65.8877) and
      (90.1911,66.2247) .. (89.1390,66.0071) .. controls (88.4365,65.8618) and
      (87.9449,65.5203) .. (87.3370,64.7552) .. controls (86.5997,63.8274) and
      (86.0013,63.2318) .. (85.6000,63.0268) .. controls (85.1313,62.7874) and
      (84.1718,62.7744) .. (83.9782,63.0048) .. controls (83.8657,63.1387) and
      (83.8975,63.1954) .. (84.2322,63.4586) .. controls (85.1908,64.2122) and
      (85.6680,64.7934) .. (86.1681,65.8169) .. controls (86.7336,66.9742) and
      (87.2885,67.5731) .. (88.1825,67.9913) .. controls (88.6992,68.2330) and
      (88.8042,68.2463) .. (90.1911,68.2463) -- (91.6546,68.2463) --
      (91.6259,70.0923) -- (91.5972,71.9383) -- (91.2050,72.2922) .. controls
      (90.9850,72.4908) and (90.6785,72.7603) .. (90.5068,72.9061) .. controls
      (90.0483,73.2955) and (90.1529,73.4104) .. (90.9946,73.4418) .. controls
      (91.6450,73.4662) and (91.7691,73.4390) .. (92.3241,73.1503) .. controls
      (93.3630,72.6098) and (93.3667,72.5983) .. (93.3667,69.8628) .. controls
      (93.3667,67.3377) and (93.4455,66.7059) .. (93.8107,66.3047) --
      (94.0458,66.0464) -- (93.9980,69.2506) .. controls (93.9695,71.1540) and
      (93.9075,72.6024) .. (93.8449,72.8183) .. controls (93.7868,73.0192) and
      (93.6134,73.3252) .. (93.4575,73.5022) .. controls (93.3059,73.6744) and
      (93.1754,73.9155) .. (93.1754,74.0235) .. controls (93.1754,74.1976) and
      (93.2328,74.2243) .. (93.6058,74.2243) .. controls (94.3519,74.2243) and
      (95.3191,73.5586) .. (95.6209,72.8374) .. controls (95.8285,72.3417) and
      (95.9492,70.6280) .. (95.9492,68.1794) -- (95.9492,65.9029) --
      (96.4179,65.9029) -- (96.4465,69.1311) .. controls (96.4752,72.3544) and
      (96.4756,72.3599) .. (96.7144,72.8374) .. controls (97.1209,73.6505) and
      (98.5189,74.4873) .. (99.0195,74.2173) .. controls (99.2785,74.0776) and
      (99.2470,73.9374) .. (98.8154,73.3061) .. controls (98.5996,72.9905) and
      (98.3935,72.5452) .. (98.3372,72.2731) .. controls (98.2088,71.6514) and
      (98.2544,66.1949) .. (98.3882,66.1752) .. controls (98.4417,66.1673) and
      (98.5682,66.3047) .. (98.6752,66.4864) .. controls (98.8508,66.7849) and
      (98.8704,67.0316) .. (98.9143,69.4898) .. controls (98.9477,71.3645) and
      (98.9985,72.2310) .. (99.0833,72.3783) .. controls (99.2883,72.7344) and
      (99.9568,73.2398) .. (100.3777,73.3570) .. controls (100.6002,73.4189) and
      (101.0568,73.4562) .. (101.4011,73.4406) .. controls (102.2046,73.4043) and
      (102.2524,73.2299) .. (101.5924,72.7428) .. controls (100.6531,72.0496) and
      (100.6840,72.1775) .. (100.6746,68.9637) .. controls (100.6656,65.9699) and
      (100.6109,65.4703) .. (100.2007,64.6499) .. controls (100.0812,64.4108) and
      (99.8134,64.0644) .. (99.5982,63.8704) -- (99.2108,63.5213) --
      (99.6603,63.4617) .. controls (100.5690,63.3414) and (102.0372,63.0328) ..
      (102.6446,62.8345) .. controls (104.1654,62.3382) and (105.5084,61.3208) ..
      (106.1445,60.1832) -- (106.4227,59.6858) -- (106.9679,59.6858) .. controls
      (108.9956,59.6858) and (112.7503,60.2177) .. (114.7632,60.7901) .. controls
      (114.9162,60.8337) and (114.9832,60.8090) .. (114.9832,60.7092) .. controls
      (114.9832,60.3420) and (111.4059,59.7105) .. (108.1061,59.4950) .. controls
      (107.2931,59.4419) and (106.6181,59.3838) .. (106.5996,59.3654) .. controls
      (106.5815,59.3473) and (106.6145,59.1932) .. (106.6713,59.0306) --
      (106.7765,58.7293) -- (107.9817,58.7323) .. controls (109.6496,58.7363) and
      (111.7789,58.8872) .. (113.5293,59.1252) .. controls (114.8684,59.3073) and
      (115.2129,59.3130) .. (115.0501,59.1502) .. controls (114.8456,58.9456) and
      (112.1137,58.6482) .. (109.3399,58.5285) .. controls (108.0008,58.4707) and
      (106.8944,58.4168) .. (106.8865,58.4089) .. controls (106.8785,58.4010) and
      (106.9394,58.0694) .. (107.0204,57.6772) .. controls (107.1184,57.2030) and
      (107.1719,56.3764) .. (107.1782,55.2382) .. controls (107.1862,53.7174) and
      (107.1624,53.4295) .. (106.9708,52.7704) .. controls (106.6953,51.8235) and
      (106.3173,51.0734) .. (105.7225,50.2931) -- (105.2557,49.6810) --
      (105.2940,48.0598) .. controls (105.3295,46.5581) and (105.3160,46.3927) ..
      (105.1123,45.8168) -- (104.8923,45.1951) -- (104.4140,45.1760) .. controls
      (104.1462,45.1653) and (103.7296,45.2145) .. (103.4671,45.2879) -- cycle;
  \end{scope}
\end{tikzpicture}
}

\newcommand{\linkedin}{%
\begin{tikzpicture}[y=0.25pt, x=0.25pt,yscale=-1, inner sep=0pt, outer sep=0pt,opacity=1]
  \begin{scope}[cm={{0.59444,0.0,0.0,0.59444,(346.38938,123.06674)}}]
    \path[fill=black] (380.7408,201.6221) -- (434.0804,201.6221) .. controls
      (438.6572,201.6221) and (442.3417,205.3067) .. (442.3417,209.8835) --
      (442.3417,263.5823) .. controls (442.3417,268.1591) and (438.6572,271.8436) ..
      (434.0804,271.8436) -- (380.7408,271.8436) .. controls (376.1640,271.8436) and
      (372.4794,268.1591) .. (372.4794,263.5823) -- (372.4794,209.8835) .. controls
      (372.4794,205.3067) and (376.1640,201.6221) .. (380.7408,201.6221) -- cycle;
    \begin{scope}[xscale=0.981,yscale=1.019,fill=white]
      \path[fill=white] (402.5597,253.0812) -- (402.5597,223.9631) --
        (393.5086,223.9631) -- (393.5086,253.0812) -- cycle(398.0937,211.3394) ..
        controls (396.6162,211.3680) and (395.4476,211.8021) .. (394.5879,212.6419) ..
        controls (393.7282,213.4818) and (393.2891,214.5561) .. (393.2705,215.8649) ..
        controls (393.2879,217.1476) and (393.7146,218.2145) .. (394.5507,219.0655) ..
        controls (395.3868,219.9165) and (396.5281,220.3581) .. (397.9746,220.3904) ..
        controls (399.5067,220.3582) and (400.7001,219.9165) .. (401.5548,219.0655) ..
        controls (402.4095,218.2145) and (402.8437,217.1476) .. (402.8574,215.8649) ..
        controls (402.8152,214.5561) and (402.3785,213.4818) .. (401.5474,212.6419) ..
        controls (400.7162,211.8021) and (399.5650,211.3679) .. (398.0937,211.3394) --
        cycle;
      \path[fill=white] (409.7910,253.0812) -- (418.8420,253.0812) --
        (418.8420,236.2892) .. controls (418.8400,235.8674) and (418.8594,235.4605) ..
        (418.9015,235.0685) .. controls (418.9437,234.6765) and (419.0231,234.3291) ..
        (419.1397,234.0264) .. controls (419.4635,233.1556) and (420.0068,232.3815) ..
        (420.7698,231.7041) .. controls (421.5327,231.0268) and (422.5375,230.6695) ..
        (423.7843,230.6323) .. controls (425.4081,230.6609) and (426.5817,231.2439) ..
        (427.3049,232.3815) .. controls (428.0282,233.5190) and (428.3830,235.0400) ..
        (428.3693,236.9442) -- (428.3693,253.0812) -- (437.4203,253.0812) --
        (437.4203,235.8724) .. controls (437.3582,231.5975) and (436.3658,228.4316) ..
        (434.4430,226.3748) .. controls (432.5202,224.3180) and (430.0391,223.2958) ..
        (426.9998,223.3081) .. controls (424.5633,223.3851) and (422.6033,223.9309) ..
        (421.1196,224.9456) .. controls (419.6359,225.9604) and (418.5988,226.9826) ..
        (418.0083,228.0123) -- (417.8297,228.0123) -- (417.4129,223.9631) --
        (409.5528,223.9631) .. controls (409.6148,225.2695) and (409.6694,226.6911) ..
        (409.7165,228.2281) .. controls (409.7636,229.7652) and (409.7884,231.4399) ..
        (409.7909,233.2523) -- cycle;
    \end{scope}
  \end{scope}
\end{tikzpicture}
}



%\usepackage[compact]{titlesec}

% Capitalize words of at least a minimum length (default to 3 chars).
% The text is capitalized before being expanded.
%
% This macro uses Lua to do the job but fails gracefully (that is,
% return the text as is) if \directlua is not available.
%
% |[
% \ucwords[optional: miminum length]{text}
% ]|
\newcommand\ucwords[2][3]{%
    % Fails gracefully if not in LuaLaTeX
    \providecommand\directlua[1]{#2}%
    \directlua{%
	local minlen=tonumber("#1")
	local src="\luaescapestring{\unexpanded{#2}}"
	local dst={}
	for w in src:gmatch('[^\string\%s]+') do
	    if w:len() >= minlen then w = w:sub(1,1):upper()..w:sub(2) end
	    table.insert(dst, w)
	end
	tex.print(dst)}}
	
\renewcommand{\familydefault}{qbk}
%\fontfamily{courier}

\pagestyle{empty}
\setlength\parindent{0pt}
\color[HTML]{303030} % Default foreground color
\definecolor{link}{HTML}{506060} % Hyperlinks
\hypersetup{colorlinks,breaklinks,urlcolor=link,linkcolor=link}
\setkomafont{disposition}{\color[HTML]{801010}}
\setkomafont{section}{\scshape\Large\mdseries}

% In tccv \part must contain the subject of the curriculum vitae.
% The command will start a new page and output in onecolumn the
% subject (first and last name) with the hardcoded text
% "Curriculum vitae" under it.
\renewcommand\part[1]{%
    \twocolumn[%
    \begin{center}
	\vskip-\lastskip%
	{\usekomafont{part} #1} \medskip\\
	%{\fontfamily{pzc}\selectfont\Huge Curriculum vitae}
	\bigskip
    \end{center}]}

% Overrides the \section command to capitalize every
% word for cosmetic purposes and draws a rule under it.
\makeatletter
\let\old@section\section
\renewcommand\section[2][]{%
    \old@section[#1]{\ucwords{#2}}%
    \newdimen\raising%
    \raising=\dimexpr-0.5\baselineskip\relax%
    \vskip\raising\hrule height 0.4pt\vskip-\raising}
\makeatother

% Allow conditionals based on the job name. This can usually be set
% from a command-line argument: check fausto.en.tex for an example.
%
% |[
% \ifjob{jobname}{content if matches}{content if does not match}
% ]|
\newcommand\ifjob[3]{%
    \edef\JOBNAME{\jobname}%
    \edef\PIVOT{\detokenize{#1}}%
    \ifdefstrequal{\JOBNAME}{\PIVOT}{#2}{#3}%
}

% Renders a personal data box:
%
% |[
% \personal[optional: web site without scheme (no http:// prefix)]
%          {address}{phone number}{email}
% ]|
\newcommand\personal[4][]{%
    \needspace{0.5\textheight}%
    \newdimen\boxwidth%
    \boxwidth=\dimexpr\linewidth-2\fboxsep\relax%
    \colorbox[HTML]{F5DD9D}{%
    \begin{tabularx}{\boxwidth}{c|X}
    \Writinghand & {#2}\smallskip\\
    \Telefon     & {#3}\smallskip\\
    \Letter      & \href{mailto:#4}{#4}
                 %& \href{#5}{\github} \href{#6}{\linkedin}
    %\faLinkedinSign    & \href{#6}{linkedin}
    %\faStackOverflow & \href{#7}{stackoverflow}
    \ifstrempty{#1}{}{\smallskip\\ \Lightning & \href{http://#1}{#1}}
    \end{tabularx}}}

% Every \item can be followed by one or more paragraphs
% of description:
%
% |[
% \item{date range}{company}{role}
%
% Description of what achieved during this application.
% ]|
\newenvironment{eventlist}{%
    \newcommand*\inskip{}
    \renewcommand\item[3]{%
	\inskip%
	{\raggedleft\sc ##1\\[1pt]}
	\bigskip
	
	{\Large ##3}
	\inskip
	
	{\color{link}\footnotesize\it ##2}%\\[1pt]
    \medskip
	\renewcommand\inskip{\bigskip}}}
    {\skip}
    
\newenvironment{renumerate}[1][itemsep=2pt,parsep=2pt]{\begin{itemize}[#1]\raggedright}{\end{itemize}}
    


% Use only \item inside this environment: no other macros
% are allowed:
%
% |[
% \item[optional: what has been achieved]{years}{subject}{notes}
% ]|
    
\newenvironment{yearlist}{%
    \renewcommand\item[4][]{%
	{\sc ##2} & {\bfseries ##3} \\
	\ifstrempty{##1}{}{& {\sc ##1} \\}
	& {\it ##4}\medskip\\} \\
    \tabularx{\linewidth}{rX}}
    {\endtabularx}

\newenvironment{yearlist2}{%
    \renewcommand\item[4][]{%
	{\sc ##2} & {\bfseries ##3} \\
	\ifstrempty{##1}{}{& {\sc ##1} \\}
	& {\it\small ##4}\medskip\\} \\
    \tabularx{\linewidth}{rX}}
    {\endtabularx}
    
%\newenvironment{hobbies}{%
%    {\bigskip}
    
% Use only \item inside this environment: no other macros
% are allowed:
%
% |[
% \item{fact}{description}
% ]|
\newenvironment{factlist}{%
    \newdimen\unbaseline
    \unbaseline=\dimexpr-\baselinestretch\baselineskip\relax
    \renewcommand\item[2]{%
	\textsc{##1} & {\raggedright ##2\medskip\\}\\[\unbaseline]}
    \tabularx{\linewidth}{rX}}
    {\endtabularx}
%%
%% End of file `tccv.cls'.



