#!/bin/bash
export LANG=C.UTF-8


gunicorn — bind=0.0.0.0 — timeout 600 --chdir core core.wsgi & celery -A core worker -l INFO & celery -A core beat -l INFO -B
