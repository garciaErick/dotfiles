for i in {0..255} ; do
    printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
    if (( (i-14) % 5 == 0 )); then
        printf "\n";
    fi
done
