# Usamos una imagen oficial de Odoo
FROM odoo:18

# Copiamos los módulos adicionales al contenedor
COPY ./addons /mnt/extra-addons

# Configuramos el archivo de configuración
COPY odoo.conf /etc/odoo/odoo.conf

# Exponemos el puerto 8069
EXPOSE 8069

# Comando para iniciar Odoo
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
