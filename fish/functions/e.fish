function e
    set file (fd -t f | sk)
    if test -f "$file"
        $EDITOR $file
    end
end

