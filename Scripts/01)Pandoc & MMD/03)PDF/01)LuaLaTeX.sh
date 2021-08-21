#!/bin/zsh
PATH=$PATH:/usr/local/bin:/Library/TeX/texbin:/usr/texbin

cd "$(dirname "$BB_DOC_PATH")" && /Library/TeX/texbin/lualatex "$BB_DOC_PATH" -o "${BB_DOC_PATH%%.*}".pdf && /Library/TeX/texbin/biber "${BB_DOC_PATH%%.*}" && /Library/TeX/texbin/makeindex "${BB_DOC_PATH%%.*}".idx && /Library/TeX/texbin/lualatex "${BB_DOC_PATH%%.*}".tex -o "${BB_DOC_PATH%%.*}".pdf && /Library/TeX/texbin/lualatex "${BB_DOC_PATH%%.*}".tex -o "${BB_DOC_PATH%%.*}".pdf && open "${BB_DOC_PATH%%.*}".pdf

# hide the junk:
mkdir .texpadtmp
mv "${BB_DOC_PATH%%.*}".aux .texpadtmp/
mv "${BB_DOC_PATH%%.*}".bbl .texpadtmp/
mv "${BB_DOC_PATH%%.*}".bcf .texpadtmp/
mv "${BB_DOC_PATH%%.*}".blg .texpadtmp/
mv "${BB_DOC_PATH%%.*}".idx .texpadtmp/
mv "${BB_DOC_PATH%%.*}".ilg .texpadtmp/
mv "${BB_DOC_PATH%%.*}".ind .texpadtmp/
mv "${BB_DOC_PATH%%.*}".log .texpadtmp/
mv "${BB_DOC_PATH%%.*}".run.xml .texpadtmp/
mv "${BB_DOC_PATH%%.*}".toc .texpadtmp/
mv fgraphs.* .texpadtmp/
