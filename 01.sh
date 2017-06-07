if [ -n "${project_name}" ]; then
    mkdir temp
fi

cat << EOF > temp/python.txt
String python3
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/exit.txt
String exit()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/clear.txt
String clear
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/import.txt
String from datetime import datetime
KeyStrPress Return KeyStrRelease Return
String from time import sleep
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String while True:
KeyStrPress Return KeyStrRelease Return
String     hora = datetime.now()
KeyStrPress Return KeyStrRelease Return
String     print(hora.strftime('%H:%M:%S'))
KeyStrPress Return KeyStrRelease Return
String     sleep(1)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/notafinal1.txt
String def nota_final(valor):
KeyStrPress Return KeyStrRelease Return
String     if valor >= 7:
KeyStrPress Return KeyStrRelease Return
String         return 'Aprovado'
KeyStrPress Return KeyStrRelease Return
String     elif valor >= 4:
KeyStrPress Return KeyStrRelease Return
String         return 'Recuperacao'
KeyStrPress Return KeyStrRelease Return
String     else:
KeyStrPress Return KeyStrRelease Return
String         return 'Reprovado'
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/notafinal2.txt
String if __name__ == '__main__':
KeyStrPress Return KeyStrRelease Return
String     notas = [0, 3.9, 4, 6.9, 7, 10]
KeyStrPress Return KeyStrRelease Return
String     for nota in notas:
KeyStrPress Return KeyStrRelease Return
String         print(nota_final(nota))
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/notafinal3.txt
String def main():
KeyStrPress Return KeyStrRelease Return
String     alunos = {
KeyStrPress Return KeyStrRelease Return
String         'Regis': 9,
KeyStrPress Return KeyStrRelease Return
String         'Abel': 9.5,
KeyStrPress Return KeyStrRelease Return
String         'Gabriela': 8,
KeyStrPress Return KeyStrRelease Return
String         'Pedrinho': 2,
KeyStrPress Return KeyStrRelease Return
String         'Aninha': 4,
KeyStrPress Return KeyStrRelease Return
String     }
KeyStrPress Return KeyStrRelease Return
String     for aluno, valor in alunos.items():
KeyStrPress Return KeyStrRelease Return
String         print(aluno, valor, nota_final(valor))
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String if __name__ == '__main__':
KeyStrPress Return KeyStrRelease Return
String     main()
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/notafinal4.txt
String alunos = {
KeyStrPress Return KeyStrRelease Return
String     'Regis': 9,
KeyStrPress Return KeyStrRelease Return
String     'Abel': 9.5,
KeyStrPress Return KeyStrRelease Return
String     'Gabriela': 8,
KeyStrPress Return KeyStrRelease Return
String     'Pedrinho': 2,
KeyStrPress Return KeyStrRelease Return
String     'Aninha': 4,
KeyStrPress Return KeyStrRelease Return
String }
KeyStrPress Return KeyStrRelease Return
String for aluno in alunos:
KeyStrPress Return KeyStrRelease Return
String     print(aluno)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/.txt
String 
KeyStrPress Return KeyStrRelease Return
EOF




# init - xmacroplay ----------------------------------------------
answer="s"

continuar(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then
        continue;
        xmacroplay -d 3 < temp/alternar.txt
    fi
}

continuar2(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then
        continue;
        xmacroplay -d 3 < temp/alternar.txt
        xmacroplay -d 3 < temp/alternar.txt
    fi
}

xmacroplay -d 3 < temp/alternar.txt
sleep 1

xmacroplay -d 45 < temp/python.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/import.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/exit.txt # velocity 60
xmacroplay -d 15 < temp/clear.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/python.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/notafinal1.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/notafinal2.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/exit.txt # velocity 60
xmacroplay -d 15 < temp/clear.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/python.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/notafinal1.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/notafinal3.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/notafinal4.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar
