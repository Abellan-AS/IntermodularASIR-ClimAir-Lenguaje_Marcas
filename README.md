# 📊 Proyecto Intermodula 1º ASIR - Climair S.L. (Módulo: Lenguaje de Marcas)

Este repositorio contiene la arquitectura de datos para la gestión de partes de trabajo de **Climair S.L.** El proyecto se centra en el modelado de información técnica mediante lenguajes de marcas, asegurando la integridad de los datos y su representación visual.

---

## 🏗️ 1. Modelado de Datos (XML)
La entidad principal es el **Parte de Trabajo**, estructurado en un archivo `datos.xml`. Este documento centraliza:
* **Catálogo de Técnicos:** Registro de empleados con IDs únicos y especialidades.
* **Registro de Intervenciones:** Detalles de clientes, equipos afectados, descripciones técnicas y estados de reparación.

## 🛡️ 2. Validación de Integridad (DTD)
Para evitar errores en el flujo de trabajo, se ha implementado un esquema **DTD** (`modelo.dtd`) que actúa como contrato de calidad:
* **Tipado estricto:** Los estados solo pueden ser `Pendiente`, `En_curso` o `Finalizado`.
* **Integridad referencial:** Uso de atributos `ID` e `IDREF` para vincular cada parte de trabajo con un técnico existente, impidiendo registros huérfanos.

> **Validación:** El sistema es verificado mediante el comando `xmllint --dtdvalid`, garantizando que solo los datos bien formados entren en el sistema.

## 🎨 3. Transformación y UI (XSLT & CSS)
Los datos brutos se transforman en una interfaz de monitorización profesional denominada **Terminal v2.0**:
* **Motor XSLT:** Se utiliza **XPath** para procesar dinámicamente el XML y generar una tabla HTML estructurada.
* **Diseño:** Uso de **CSS3** con técnicas de *Glassmorphism* (transparencias) y estética neón para resaltar la urgencia de los partes pendientes.
* **Lógica de Colores:** Los estados cambian de color automáticamente según el valor del XML (Rojo: Pendiente, Amarillo: Activo, Verde: Finalizado).

## 🔄 4. Interoperabilidad (JSON)
Se incluye una versión en **JSON** de la estructura para asegurar la compatibilidad con aplicaciones modernas y facilitar el intercambio de datos con APIs de terceros.

---

## 🔗 5. Integración con Infraestructura (ISO)
El proyecto de Lenguaje de Marcas se integra en el entorno de producción de **ISO (Ubuntu Server)** de la siguiente manera:

* **Despliegue en Linux:** Los archivos residen en la partición gestionada por LVM en `/srv/climair/`.
* **Servidor de Archivos:** Gracias a **Samba**, los archivos XML son editables desde estaciones de trabajo Windows, manteniendo la persistencia en el servidor Linux.
* **Permisos de Sistema:** Se aplican máscaras de creación (`0770`) para que la integridad definida en el DTD sea respaldada por la seguridad del sistema operativo.
* **Procesamiento de Lado del Servidor:** La generación de reportes HTML se realiza mediante `xsltproc` directamente en la terminal de Ubuntu.

---
