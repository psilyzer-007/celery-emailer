#!/bin/bash
export LANG=C.UTF-8

gunicorn — bind=0.0.0.0 — timeout 600 core.wsgi & celery -A core worker -l INFO -B
