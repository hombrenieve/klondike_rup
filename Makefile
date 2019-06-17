uml_dir = uml
img_dir := img
tex_files = $(wildcard **.tex)
target = document.pdf


all: ${target}

# functions
png: 
	find . -name "*.puml" -exec plantuml -charset UTF-8 {} \;
	mkdir -p ${img_dir}
	find . -name "*.png" -exec mv {} ${img_dir} \;

${target}: png $(tex_files)
	latexmk -shell-escape -pdf document.tex

clean:
	latexmk -c
	rm -f ${target}
	rm -rf $(img_dir)

