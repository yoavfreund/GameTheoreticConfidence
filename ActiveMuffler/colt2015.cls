\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{colt2015}[2015/03/07 v1.0 COLT 2015 Proceedings]

\@ifundefined{ifanonsubmission}{
  \newif\ifanonsubmission
  \anonsubmissionfalse
}{}

\@ifundefined{iffinalsubmission}{
  \newif\iffinalsubmission
  \finalsubmissionfalse
}{}

\DeclareOption{anon}{\anonsubmissiontrue}
\DeclareOption{final}{\finalsubmissiontrue}
\ProcessOptions\relax

\LoadClass[wcp]{jmlr}

\jmlrvolume{vol 40}
\jmlryear{2015}

\ifanonsubmission
 \newcommand{\coltauthor}[1]{}
 \author{author names withheld}
 \editor{Under Review for COLT 2015}
 \jmlrworkshop{28th Annual Conference on Learning Theory}
 \renewcommand{\acks}[1]{}
\else
 \newcommand{\coltauthor}[1]{\author{#1}}
 \iffinalsubmission
  \editors{Elad Hazan and Peter Gr\"unwald}
  \jmlrworkshop{28th Annual Conference on Learning Theory}
 \fi
\fi



