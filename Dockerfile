FROM python:3.10

WORKDIR /opt/chatgpt-ai

ADD ./ ./

# ENV OPENAI_API_KEY=sk-XXXXXXXXX
# ENV OPENAI_API_BASE=https://api.aigcbest.top/v1

RUN pip install --no-cache-dir --upgrade -r requirements.txt --timeout 1000

RUN chmod a+x /opt/chatgpt-ai/entrypoint.sh

ENTRYPOINT  /opt/chatgpt-ai/entrypoint.sh
