FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-18.04

# user
USER vscode

# install deno
RUN curl -fsSL https://deno.land/x/install/install.sh | sh

WORKDIR .
COPY . .
EXPOSE 8080
CMD [ "deno", "--allow-net", "./server.tsx" ]

# env
ENV DENO_INSTALL /home/vscode/.deno
ENV PATH=$DENO_INSTALL/bin:$PATH
