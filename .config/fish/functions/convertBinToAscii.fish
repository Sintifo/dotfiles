function convertBinToAscii --description 'Convert binary numbers in stdin to ASCII Characters'
    while read -la line
          echo $line | perl -lape '$_=pack"(B8)*",@F'
    end
end
