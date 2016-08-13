if [ -n "${project_name}" ]; then
    mkdir temp
fi

cat << EOF > temp/import.txt
String import datetime
KeyStrPress Return KeyStrRelease Return
String import pytz
KeyStrPress Return KeyStrRelease Return
String from django.utils import timezone
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/all_timezones.txt
String for i in pytz.all_timezones[150:200]: print(i)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/01.txt
String from djexperience.bookstore.models import Customer, Author, Book
KeyStrPress Return KeyStrRelease Return
String saopaulo_tz = pytz.timezone('America/Sao_Paulo')
KeyStrPress Return KeyStrRelease Return
String d = saopaulo_tz.localize(datetime.datetime(1815, 12, 10, 23, 59, 59, 654000))
KeyStrPress Return KeyStrRelease Return
String d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/02.txt
String customer = Customer(first_name='Ada', last_name='Lovelace', email='ada@example.com', birthday=d)
KeyStrPress Return KeyStrRelease Return
String customer.save()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/03.txt
String data_atual = saopaulo_tz.localize(datetime.datetime.now())
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='Edward', last_name='Snowden', email='snowden@example.com', birthday=data_atual)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/04.txt
String t = timezone.now()
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='John', last_name='Smith', email='js@example.com', birthday=t)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/05.txt
String d = saopaulo_tz.localize(datetime.datetime(1956, 1, 31, 0, 0, 0, 654000))
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='Guido', last_name='van Rossum', email='guido@example.com', birthday=d)
KeyStrPress Return KeyStrRelease Return
String t = timezone.now()
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='Jacob', last_name='Kaplan-Moss', email='jkm@example.com', birthday=t)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/06.txt
String customers = Customer.objects.all()
KeyStrPress Return KeyStrRelease Return
String customers
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/07.txt
String Customer.objects.filter(birthday__year=2016)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/08.txt
String Customer.objects.filter(birthday__year=2016).count()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/09.txt
String Customer.objects.filter(birthday__year__lte=2000).count()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/10.txt
String Customer.objects.filter(birthday__year__lte=2000).update(active=False)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/11.txt
String Customer.objects.filter(id=1).delete()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/12.txt
String c = Customer.objects.get(pk=2)
KeyStrPress Return KeyStrRelease Return
String c.delete()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/13.txt
String Customer.objects.all().delete()
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/14.txt
String saopaulo_tz = pytz.timezone('America/Sao_Paulo')
KeyStrPress Return KeyStrRelease Return
String d = saopaulo_tz.localize(datetime.datetime(1815, 12, 10, 23, 59, 59, 654000))
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='Ada', last_name='Lovelace', email='ada@example.com', birthday=d)
KeyStrPress Return KeyStrRelease Return
String data_atual = saopaulo_tz.localize(datetime.datetime.now())
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='Edward', last_name='Snowden', email='snowden@example.com', birthday=data_atual)
KeyStrPress Return KeyStrRelease Return
String t = timezone.now()
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='John', last_name='Smith', email='js@example.com', birthday=t)
KeyStrPress Return KeyStrRelease Return
String d = saopaulo_tz.localize(datetime.datetime(1956, 1, 31, 0, 0, 0, 654000))
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='Guido', last_name='van Rossum', email='guido@example.com', birthday=d)
KeyStrPress Return KeyStrRelease Return
String t = timezone.now()
KeyStrPress Return KeyStrRelease Return
String Customer.objects.create(first_name='Jacob', last_name='Kaplan-Moss', email='jkm@example.com', birthday=t)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/15.txt
String customers = Customer.objects.all()[0]
KeyStrPress Return KeyStrRelease Return
String customers.email
KeyStrPress Return KeyStrRelease Return
String customers.birthday
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/16.txt
String customers = Customer.objects.all()
KeyStrPress Return KeyStrRelease Return
String for i in customers:
KeyStrPress Return KeyStrRelease Return
String     print(i.email, i.birthday, i.active)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/17.txt
String customers = Customer.objects.all().order_by('active')
KeyStrPress Return KeyStrRelease Return
String for i in customers:
KeyStrPress Return KeyStrRelease Return
String     print(i.first_name, i.birthday, i.active)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/18.txt
String customers = Customer.objects.all().values_list()
KeyStrPress Return KeyStrRelease Return
String for i in customers:
KeyStrPress Return KeyStrRelease Return
String     print(i)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/19.txt
String customers = Customer.objects.all().values()
KeyStrPress Return KeyStrRelease Return
String for i in customers:
KeyStrPress Return KeyStrRelease Return
String     print(i)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/20.txt
String customers = Customer.objects.all().values('first_name', 'email', 'active').order_by('active')
KeyStrPress Return KeyStrRelease Return
String for i in customers:
KeyStrPress Return KeyStrRelease Return
String     print(i)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/21.txt
String [x for x in Customer().__dict__.keys() if not x.startswith('_')]
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/22.txt
String AUTHOR_LIST = (
KeyStrPress Return KeyStrRelease Return
String     'Antoine de Saint - Exupéry',
KeyStrPress Return KeyStrRelease Return
String     'Isabela Freitas',
KeyStrPress Return KeyStrRelease Return
String     'John Green',
KeyStrPress Return KeyStrRelease Return
String     'Bela Gil',
KeyStrPress Return KeyStrRelease Return
String     'Jeff Kinney',
KeyStrPress Return KeyStrRelease Return
String )
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/23.txt
String obj = [Author(name=v) for v in AUTHOR_LIST]
KeyStrPress Return KeyStrRelease Return
String Author.objects.bulk_create(obj)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/24.txt
String Author.objects.all().count()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/25.txt
String from djexperience.bookstore.models import Author
KeyStrPress Return KeyStrRelease Return
String consulta = Author.objects.all()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/26.txt
String print(consulta.query)
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

xmacroplay -d 45 < temp/shell.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/import.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/all_timezones.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

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

xmacroplay -d 60 < temp/11.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/12.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/13.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 20 < temp/14.txt # velocity 20
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/15.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/16.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/17.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/18.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/19.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/20.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/21.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 20 < temp/22.txt # velocity 20
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/23.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/24.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/25.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 60 < temp/26.txt # velocity 60
xmacroplay -d 3 < temp/alternar.txt

