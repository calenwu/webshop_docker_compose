FROM python:3.10.2

COPY ./apps/calen_blog/requirements /apps/calen_blog/requirements
WORKDIR /apps/calen_blog
RUN pip3 install -r /apps/calen_blog/requirements/dev.txt

COPY ./apps/calen_blog /apps/calen_blog

COPY ./docker/dev/calen_blog/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]