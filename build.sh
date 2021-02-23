for i in `seq 10`
do
    podman build --no-cache . -t quay.io/josephdrichard/workload_stress:image-${i}
    docker push quay.io/josephdrichard/workload_stress:image-${i}
done
