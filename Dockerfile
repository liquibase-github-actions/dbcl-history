# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.29.1
COPY dbcl_history.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
