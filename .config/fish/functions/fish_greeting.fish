# Defined in /home/sebbo/.config/fish/config.fish @ line 13
function fish_greeting
	if not type fortune > /dev/null 2>&1
        	yay -S fortune
         end
	 if not type cowsay > /dev/null 2>&1
		yay -S coway
	 end
         fortune -a | cowsay -f koala
end
