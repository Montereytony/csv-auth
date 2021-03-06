#
# These are just reminders/examples:
#
# Build: docker build --rm --tag csv-auth .
# Push: docker tag my_image $DOCKER_ID_USER/my_image
# git status
# git commit -m "authentication testing"
# git push


FROM montereytony/ugba147:latest
USER root
RUN pip install --upgrade pip 
RUN git clone https://github.com/yuvipanda/jupyterhub-remotecsv-authenticator.git && \
    cd jupyterhub-remotecsv-authenticator && \
    python  setup.py install
USER jovyan
