all: cv.pdf

clean:
	rm -rf build

purge: clean
	rm -rf *.pdf

cv.pdf: *.tex
	@mkdir -p build
	TEXINPUTS='styles:' xelatex -interaction batchmode -output-directory build cv	
	TEXINPUTS='styles:' xelatex -interaction batchmode -output-directory build cv
	@cp build/cv.pdf cv.pdf
