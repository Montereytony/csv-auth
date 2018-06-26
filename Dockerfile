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
RUN pip install --upgrade pip && pip install jupyterhub-remotecsv-authenticator
USER jovyan
