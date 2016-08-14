echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L " > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "String i" > temp/edit.txt

echo "KeyStrPress Escape KeyStrRelease Escape" > temp/esc.txt

cat << EOF > temp/openxmacroteste.txt
String vim xmacroteste.sh
KeyStrPress Return KeyStrRelease Return
EOF

### inicio
cat << EOF > temp/xmacroteste.txt
String echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L " 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/limpar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String echo "String i" 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/edit.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/open_vim.txt
KeyStrPress Return KeyStrRelease Return
String String vim arquivo.txt
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/file.txt
KeyStrPress Return KeyStrRelease Return
String String Estou digitando um texto usando o xmacro.
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/salvarfechar.txt
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Escape KeyStrRelease Escape
KeyStrPress Return KeyStrRelease Return
String String :wq
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String cat 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  EOF 
KeyStrPress Shift_L KeyStrPress period KeyStrRelease period KeyStrRelease Shift_L
String  temp/cat.txt
KeyStrPress Return KeyStrRelease Return
String String cat arquivo.txt
KeyStrPress Return KeyStrRelease Return
String KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String EOF
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String answer="s"
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String continuar(){
KeyStrPress Return KeyStrRelease Return
String     read -p "Deseja continuar? (S/n): " answer
KeyStrPress Return KeyStrRelease Return
String     answer=
KeyStrPress Shift_L KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_L
String {answer:-s}
KeyStrPress Return KeyStrRelease Return
String     if [ "
KeyStrPress Shift_L KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_L
String answer" == "s" ]; then
KeyStrPress Return KeyStrRelease Return
String         continue;
KeyStrPress Return KeyStrRelease Return
String         xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
String     fi
KeyStrPress Return KeyStrRelease Return
String }
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_L KeyStrPress 3 KeyStrRelease 3 KeyStrRelease Shift_L
String  xmacroplay
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
String sleep 1
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/limpar.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/open_vim.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/edit.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 3 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/alternar.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String continuar
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/file.txt
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/salvarfechar.txt
KeyStrPress Return KeyStrRelease Return
String sleep 1
KeyStrPress Return KeyStrRelease Return
String xmacroplay -d 60 
KeyStrPress Shift_L KeyStrPress comma KeyStrRelease comma KeyStrRelease Shift_L
String  temp/cat.txt
KeyStrPress Return KeyStrRelease Return
EOF
###

cat << EOF > temp/salvar.txt
KeyStrPress Escape KeyStrRelease Escape
String :w
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/salvarfechar.txt
KeyStrPress Escape KeyStrRelease Escape
String :wq
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/digitar.txt
String source xmacroteste.sh
EOF

# -----------------------------------------------------------------------------

# xmacroplay
xmacroplay -d 3 < temp/alternar.txt
sleep 1
xmacroplay -d 25 < temp/limpar.txt
sleep 1
xmacroplay -d 60 < temp/openxmacroteste.txt
sleep 0.5
xmacroplay -d 10 < temp/edit.txt
sleep 0.5
xmacroplay -d 15 < temp/xmacroteste.txt # velocidade 30
sleep 1
xmacroplay -d 15 < temp/esc.txt
sleep 1
xmacroplay -d 60 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

xmacroplay -d 15 < temp/digitar.txt
