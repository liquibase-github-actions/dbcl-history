# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.28.0
COPY dbcl_history.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
