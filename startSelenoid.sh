./cm selenoid stop
docker container rm selenoid
docker run -d --name selenoid                     \
    -p 4444:4444                                    \
    -e TZ=Asia/Jakarta                             \
    -v /root/.aerokube/selenoid:/etc/selenoid:ro               \
    -v /var/run/docker.sock:/var/run/docker.sock    \
    aerokube/selenoid:latest-release --limit 6
./cm selenoid-ui start

