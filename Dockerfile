FROM centos:7
ADD ./on-start.sh /
ADD ./on-change.sh /
ADD ./plugin.sh /
COPY ./peer-finder /
ADD install.sh /
RUN chmod  755 /install.sh /on-start.sh /on-change.sh /plugin.sh /peer-finder
ENTRYPOINT ["/install.sh"]
