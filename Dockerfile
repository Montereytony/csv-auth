#
# These are just reminders/examples:
#
# Build: docker build --rm --tag ds-test .
# Push: docker tag my_image $DOCKER_ID_USER/my_image
# git status
# git commit -m "comments Ubuntu and R to 3.4.2 "
# git push
#


FROM montereytony/ugba147:latest
USER root
RUN pip install --upgrade pip 
RUN pip install jupyterhub-remotecsv-authenticator

RUN echo "c.JupyterHub.authenticator_class = 'remotecsvauthenticator.RemoteCSVAuthenticator'" >.jupyter/jupyterhub_config.py
RUN echo "c.RemoteCSVAuthenticator.csv_url = 'https://docs.google.com/spreadsheets/d/1zlRECNZRfFB3mEfjebXcSrebTWXsIrWpOz9ibAiCOQw/gviz/tq?tqx=out:csv'" >>.jupyter/jupyterhub_config.py

# run jupyterhub
ENTRYPOINT ["jupyterhub", "-f", ".jupyter/jupyterhub_config.py"]

USER jovyan
