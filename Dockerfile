FROM bitnami/kubectl:1.19
COPY patch-sa.sh .

ENTRYPOINT ["sh", "patch-sa.sh"]