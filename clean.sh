for D in bin include lib libexec share xtensa-esp32-elf; do
    rm -f ${D}
done

rm -f package.json
