export LANG=C.UTF-8

gunicorn — bind=0.0.0.0 — timeout 600 api.wsgi & celery -A api.celery worker -l info & celery -A api.celery beat -l info
