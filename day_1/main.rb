p File.read('in').delete(' ').split(',').each_with_object([0,0,0]){|i,c|b="%02b"%c[2]=(i[0]=="R"?c[2]+1 : c[2]-1)%4;c[b[1].to_i]+=b[0]=='0'?i[1..-1].to_i : -i[1..-1].to_i}[0..1].inject(0){|s,i|s+i.abs}

