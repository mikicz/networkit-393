FROM fedora:30

RUN dnf install -y @development-tools make automake cmake gcc gcc-c++ kernel-devel python3-devel

RUN python3 -m venv venv

ENV VIRTUAL_ENV=venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN source venv/bin/activate
RUN echo `python --version`
RUN pip install --upgrade pip setuptools cython
RUN pip install networkit
