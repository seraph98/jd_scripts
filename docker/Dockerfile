FROM node:lts-alpine3.12

LABEL AUTHOR="none" \
      VERSION=0.1.4

ARG KEY="-----BEGIN OPENSSH PRIVATE KEY-----\n\
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\n\
-----END OPENSSH PRIVATE KEY-----"

ARG CONFIG="Host git.zhlh6.cn \n\
	HostName git.zhlh6.cn \n\
	User git \n\
	IdentityFile ~/.ssh/id_rsa"


ENV DEFAULT_LIST_FILE=crontab_list.sh \
    CUSTOM_LIST_MERGE_TYPE=append \
    COOKIES_LIST=/scripts/logs/cookies.list \
    REPO_URL=https://github.com/seraph98/jd_scripts.git \
    REPO_BRANCH=master

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache bash tzdata git moreutils curl jq openssh-client \
    && rm -rf /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && mkdir -p /root/.ssh \
    && echo -e $KEY > /root/.ssh/id_rsa \
	&& echo -e $CONFIG > /root/.ssh/config \
    && chmod 600 /root/.ssh/id_rsa \
    && ssh-keyscan gitee.com > /root/.ssh/known_hosts \
	&& ssh-keyscan git.zhlh6.cn > /root/.ssh/known_hosts \
    && git clone -b $REPO_BRANCH $REPO_URL /scripts \
    && cd /scripts \
    && mkdir logs \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install \
    && cp /scripts/docker/docker_entrypoint.sh /usr/local/bin \
    && chmod +x /usr/local/bin/docker_entrypoint.sh \
	&& git config --global url."git@git.zhlh6.cn:".insteadOf "https://github.com/"


WORKDIR /scripts

ENTRYPOINT ["docker_entrypoint.sh"]

CMD [ "crond" ]


