for i in `seq 10`
do
    podman build --no-cache . -t docker.io/josephrichard/workload_stress:image-${i}
    docker push docker.io/josephrichard/workload_stress:image-${i}
done
