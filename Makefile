setup:
	@echo "Anem a realitzar la preparació de la descarrega."
	@echo ""
	sudo apt update
	sudo apt upgrade


install:
	@echo  "A continuació es va a realitzar la descarrega del fitxer comprimit..."
	@echo ""
	wget https://download.documentfoundation.org/libreoffice/stable/7.5.1/deb/x86_64/LibreOffice_7.5.1_Linux_x86-64_deb.tar.gz
	@echo "La carpeta es va a descomprimir"
	sudo tar -xzvf LibreOffice_7.5.1_Linux_x86-64_deb.tar.gz
	cd LibreOffice_7.5.1.2_Linux_x86-64_deb/DEBS
	sudo dpkg -i LibreOffice_7.5.1.2_Linux_x86-64_deb/DEBS/*.deb
	
git:
	git init

gitadd:
	git add .

gitcommit:
	git commit -a -m "MakeFile Commit"


clean:
	sudo rm -r LibreOffice_7.5.1_Linux_x86-64_deb.tar.gz
	clear

remove:
	sudo rm -R LibreOffice_7.5.1.2_Linux_x86-64_deb
