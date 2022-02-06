FROM python:3.9.5

COPY ./apps/zum_goldenen_panda/requirements /apps/zum_goldenen_panda/requirements
WORKDIR /apps/zum_goldenen_panda
RUN pip3 install -r /apps/zum_goldenen_panda/requirements/dev.txt

COPY ./apps/zum_goldenen_panda /apps/zum_goldenen_panda

COPY ./docker/dev/zum_goldenen_panda/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]