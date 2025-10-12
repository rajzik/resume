######################
#      Makefile      #
######################

filename=resume

pdf:
	xelatex ${filename}.tex

view:
	while inotifywait --event modify,move_self,close_write ${filename}.tex; \
		do xelatex -halt-on-error ${filename} &&   xelatex -halt-on-error \
		${filename}; done

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,snm,toc,nav}