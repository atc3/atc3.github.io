# From: https://jaketae.github.io/blog/jupyter-automation/

NB_PATH=$1
NB=${NB_PATH##*/}  
OUT="_posts/${NB%.ipynb}.md"

function convert(){
	jupyter nbconvert --to markdown $NB_PATH
	python edit_jupyter_notebook.py ${NB_PATH%.ipynb}.md
	echo "---\n" > $OUT
	cat ${NB_PATH%.ipynb}_header.yaml >> $OUT
	echo "---\n\n" >> $OUT
	cat ${NB_PATH%.ipynb}.md >> $OUT
	mkdir -p images/${NB%.ipynb}_files
	cp -r ${NB_PATH%.ipynb}_files images/
	rm -rf ${NB_PATH%.ipynb}_files
	rm -f ${NB_PATH%.ipynb}.md
	echo "==========Conversion complete!=========="
}

convert
