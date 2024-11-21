## Instrucciones para Configurar la Base de Datos PostgreSQL en Docker y probar el script

3. **Acceder al contenedor**

```bash
docker exec -it my-postgres-container bash
```

4. **Restaurar la base de datos**

```bash
pg_restore -d AlquilerDVD -U postgres -h localhost -p 5432 ./docker-entrypoint-initdb.d/AlquilerPractica.tar
```
```bash
pg_restore --clean --if-exists -d AlquilerDVD -U postgres -h localhost -p 5432 ./docker-entrypoint-initdb.d/AlquilerPractica.tar
```

5. **Conectar a la base de datos**

```bash
psql -U postgres -d AlquilerDVD
```

6. **Ejecutar script**:

```sql
\i ./docker-entrypoint-initdb.d/script.sql
```
