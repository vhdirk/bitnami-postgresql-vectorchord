FROM tensorchord/vchord-scratch:pg18-v1.1.0 AS builder

FROM bitnami/postgresql-repmgr:18

COPY --from=builder /usr/lib/postgresql/18/lib/vector.so /opt/bitnami/postgresql/lib/
COPY --from=builder /usr/share/postgresql/18/extension/vector* /opt/bitnami/postgresql/share/extension/
COPY --from=builder /usr/bin/vchord /opt/bitnami/postgresql/bin/
COPY --from=builder /usr/lib/libvchord* /opt/bitnami/postgresql/lib/