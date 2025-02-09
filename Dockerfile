FROM nginx:1.14-alpine
LABEL maintainer="liwang<liwang@163.com>"
ENV HTML=/data/html/
ADD index.html ${HTML}
ADD entrypoint.sh /bin/
CMD ["/usr/sbin/nginx","-g","daemon off;"]
ENTRYPOINT ["/bin/entrypoint.sh"]
