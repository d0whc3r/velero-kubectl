# Velero with kubectl
Docker image to use velero with kubectl

1. Create a file in `.kube/config` with kubernetes config file
1. Execute `docker run --rm -it -v $PWD:/root/ d0whc3r/velero-kubectl kubectl get namespaces` to check if kubectl file is correct and kubectl have connection to kubernetes cluster
1. Run velero install `docker run --rm -it -v $PWD:/root/ d0whc3r/velero-kubectl velero install ...`
