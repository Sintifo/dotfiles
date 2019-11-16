abbr -a gpr git pull --rebase

set -gx PATH $PATH ~/.yarn/bin/
set -gx PATH $PATH ~/bin
set -gx PATH $PATH ~/.local/bin
set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
set -gx EDITOR vim  

alias logout="qdbus org.kde.ksmserver /KSMServer logout 1 3 3"
alias update_everything="yaourt -Syua --noconfirm"

function fish_greeting
         if not type fortune > /dev/null 2>&1
        	yay -S fortune
         end
	 if not type cowsay > /dev/null 2>&1
		yay -S coway
	 end
         fortune -a | cowsay -f koala
end

funcsave fish_greeting

eval (python -m virtualfish)


if not set -q abbrs_initialized
  set -U abbrs_initialized
  echo -n Setting abbreviations...

  abbr latex_comp 'latexmk -pvc -pdf -xelatex -interaction=nonstopmode --outdir=out'

end

function kpython
	docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python python $argv
end

function ikpython
	docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python ipython $argv
end

function kjupyter
	docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --allow-root --no-browser --ip="*" --notebook-dir=/tmp/working
end


