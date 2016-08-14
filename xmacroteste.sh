echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L " > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "String i" > temp/edit.txt

cat << EOF > temp/open_vim.txt
String vim arquivo.txt
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/file.txt
String Estou digitando um texto usando o xmacro.
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/salvarfechar.txt
KeyStrPress Escape KeyStrRelease Escape
String :wq
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/cat.txt
String cat arquivo.txt
KeyStrPress Return KeyStrRelease Return
EOF

answer="s"

continuar(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then
        continue;
        xmacroplay -d 3 < temp/alternar.txt
    fi
}

# xmacroplay
xmacroplay -d 3 < temp/alternar.txt
sleep 1
xmacroplay -d 3 < temp/limpar.txt
xmacroplay -d 60 < temp/open_vim.txt
xmacroplay -d 3 < temp/edit.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/file.txt
xmacroplay -d 60 < temp/salvarfechar.txt
sleep 1
xmacroplay -d 60 < temp/cat.txt

