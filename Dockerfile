FROM python:3.7

COPY requirements.txt /home/requirements.txt
RUN pip install -r /home/requirements.txt
COPY slack_export.py export.sh /home/

WORKDIR /home
CMD bash export.sh
