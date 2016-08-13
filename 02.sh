if [ -n "${project_name}" ]; then
    mkdir temp
fi

# LIST

cat << EOF > temp/01.txt
String ls -la djexperience/bookstore/
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/02.txt
String cd djexperience/bookstore/
KeyStrPress Return KeyStrRelease Return
EOF

# criar bookstore/templates

cat << EOF > temp/03.txt
String mkdir templates
KeyStrPress Return KeyStrRelease Return
EOF

# criar base_bookstore.html

cat << EOF > temp/04.txt
String touch ../core/templates/base_bookstore.html
KeyStrPress Return KeyStrRelease Return
EOF

# editar base_bookstore.html - COPY AND PASTE

# criar bookstore/templates/bookstore

cat << EOF > temp/05.txt
String mkdir templates/bookstore
KeyStrPress Return KeyStrRelease Return
EOF

# criar tests

cat << EOF > temp/06.txt
String mkdir tests
KeyStrPress Return KeyStrRelease Return
EOF

# criar tests/__init__.py

cat << EOF > temp/07.txt
String touch tests/__init__.py
KeyStrPress Return KeyStrRelease Return
EOF

# criar tests/test_views_customer_list.py

cat << EOF > temp/08.txt
String touch tests/test_views_customer_list.py
KeyStrPress Return KeyStrRelease Return
EOF

# editar tests/test_views_customer_list.py

# editar bookstore/views.py


# criar bookstore/urls.py

cat << EOF > temp/09.txt
String touch urls.py
KeyStrPress Return KeyStrRelease Return
EOF


# editar bookstore/urls.py


# editar urls.py




# criar customer_list.html

cat << EOF > temp/10.txt
String touch templates/bookstore/customer_list.html
KeyStrPress Return KeyStrRelease Return
EOF

# editar customer_list.html





# DETAIL

# criar tests/test_views_customer_detail.py

# criar customer_detail.html




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

xmacroplay -d 60 < temp/01.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/02.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/03.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/04.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/05.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/06.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/07.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/08.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/09.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/10.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar
