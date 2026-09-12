Respuesta a las preguntas anteriores:

No.

Los permisos actuales indican quién puede acceder al archivo **en el momento en que los examinamos**.

No demuestran por sí solos:

```text
quién accedió realmente al archivo
ni cuándo lo hizo
```

Para investigar accesos pasados necesitaríamos otras fuentes de información, por ejemplo registros del sistema u otras evidencias.

<br><br>

## 4. ¿Ha cambiado el documento?

### Comprobar la integridad de un archivo

El equipo jurídico quiere conservar una referencia que permita detectar posteriormente si el contrato ha cambiado.

Una herramienta habitual para ello es una función hash.

```bash
sha256sum /opt/caso02/documentos/contrato_cliente.txt
```

### Guardar el hash del original

```bash
sha256sum /opt/caso02/documentos/contrato_cliente.txt > /opt/caso02/trabajo/hash_original.txt
```

Compruebe:

```bash
cat /opt/caso02/trabajo/hash_original.txt
```

### Crear una copia

```bash
cp /opt/caso02/documentos/contrato_cliente.txt /opt/caso02/trabajo/contrato_cliente_copia.txt
```

Compare los hashes:

```bash
sha256sum /opt/caso02/documentos/contrato_cliente.txt /opt/caso02/trabajo/contrato_cliente_copia.txt
```

Los dos valores deberían coincidir.

### Modificar únicamente la copia

```bash
echo "Anotación añadida durante la revisión." >> /opt/caso02/trabajo/contrato_cliente_copia.txt
```

Calcule de nuevo los hashes:

```bash
sha256sum /opt/caso02/documentos/contrato_cliente.txt /opt/caso02/trabajo/contrato_cliente_copia.txt
```

Ahora deberían ser diferentes.

Compruebe además que el archivo original continúa coincidiendo con el hash guardado:

```bash
sha256sum -c /opt/caso02/trabajo/hash_original.txt
```

Debería aparecer:

```text
/opt/caso02/documentos/contrato_cliente.txt: OK
```

### Idea importante

Un cambio en el contenido produce normalmente un hash diferente.

Un hash SHA-256 coincidente proporciona una comprobación muy fuerte de integridad, pero el hash por sí solo **no demuestra quién creó el documento, quién lo modificó ni cuándo lo hizo**.

Pulse **CHECK**.
