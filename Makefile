######################
#      Makefile      #
######################

filename=resume

.PHONY: pdf view clean

pdf:
	xelatex ${filename}.tex

view:
	while inotifywait --event modify,move_self,close_write ${filename}.tex; \
		do xelatex -halt-on-error ${filename} \
		${filename}; done

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,snm,toc,nav}