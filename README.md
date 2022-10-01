# shodo

Shodo + Safesign

## How to

**Host:**

```bash
docker build -t shodo . && \
python3 x11vnc_desktop.py -i shodo -d
```

**Container (via Browser/VNC):**

```bash
sudo service pcscd start && \
java -jar /opt/shodo/shodo.jar
```

## Todo

- Pass `--privileged` as an argument to `x11vnc_desktop.py`
- Should the host have the token drivers?