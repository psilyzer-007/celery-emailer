#!/bin/bash
export LANG=C.UTF-8


gunicorn --bind=0.0.0.0 --timeout 1200 core.wsgi & celery -A core worker -l INFO & celery -A core beat -l INFO 
