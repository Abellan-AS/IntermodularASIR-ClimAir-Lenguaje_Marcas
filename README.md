# ❄️ Climair S.L. - Infraestructura Digital Intermodular

Este proyecto representa la transformación digital de **Climair S.L.**, integrando la administración de servidores Linux de alto rendimiento con la gestión avanzada de estructuras de datos. El objetivo es centralizar y optimizar los reportes de intervenciones técnicas en un entorno seguro e interoperable.

---

## 🛡️ 1. Infraestructura de Servidor (Módulo ISO)
Se ha desplegado un entorno de servidor robusto utilizando **Ubuntu Server 24.04 LTS**, configurado como el núcleo central de datos de la compañía.

* **📦 Almacenamiento:** Implementado en la ruta crítica `/srv/climair/`. Se ha aplicado una política de permisos **POSIX** estricta (`chmod 770`) para asegurar que solo los miembros del grupo `tecnicos` y administradores puedan manipular la información.
* **🔄 Interoperabilidad (Samba):** Configuración de un servidor de archivos **Samba** para permitir la integración transparente con clientes Windows. Esto permite a los administrativos gestionar archivos **XML** y **JSON** como si fueran unidades locales.
* **🔒 Seguridad Perimetral:** * Control de acceso mediante usuarios de red sincronizados.
    * Configuración del firewall **UFW** permitiendo exclusivamente tráfico SSH y Samba para minimizar la superficie de ataque.

---

## 📊 2. Gestión de Información (Módulo LMG)
La digitalización de los partes de trabajo se ha realizado bajo estándares industriales de intercambio de información.

* **📄 Estructura XML:** El archivo `datos.xml` actúa como la "fuente de verdad", centralizando la información de los técnicos y las intervenciones.
* **🛡️ Validación DTD:** Uso de `modelo.dtd` como contrato de calidad. Esto garantiza que cada registro cumpla con las reglas de negocio (ej. estados de intervención permitidos), asegurando la **integridad referencial** de los datos.
* **🎨 Visualización XSLT/CSS:** Para la gerencia, se ha desarrollado un **Dashboard Futurista** con estilos *Glassmorphism* y efectos neón. La hoja de estilos `transform.xslt` convierte los datos planos en un reporte visual e interactivo.
* **📱 Exportación JSON:** Provisión de un archivo `datos.json` optimizado para la futura integración con aplicaciones móviles y entornos NoSQL.

---

## 🔗 3. Integración de Sistemas (El "Cómo encaja")
La arquitectura del proyecto se basa en la conexión fluida entre los diferentes módulos del ciclo formativo:

| Componente | Función en Climair | Relación Intermodular |
| :--- | :--- | :--- |
| **Ubuntu Server** | Almacén de datos físico y seguro. | **ISO** (Sistemas Operativos) |
| **Samba Share** | Intercambio de archivos multiplataforma. | **Redes** e Interoperabilidad |
| **XML / JSON** | Estandarización de partes de trabajo. | **LMG** (Estructura de Datos) |
| **XSLT / CSS** | Interfaz de monitorización y reportes. | **LMG** (Visualización) |

---
