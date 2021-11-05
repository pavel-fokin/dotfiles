function f
    set dir (fd -t d | sk)
    if test -f "$dir"
        cd $dir
    end
end

