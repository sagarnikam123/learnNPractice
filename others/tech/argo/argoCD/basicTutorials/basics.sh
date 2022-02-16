# ArgoCD basic tutorials

# Creating Apps Via CLI
################################################################################
# guestbook
argocd app create guestbook --repo https://github.com/argoproj/argocd-example-apps.git --path guestbook --dest-server https://kubernetes.default.svc --dest-namespace default

################################################################################
# winterof22
argocd app create wintertale --repo https://github.com/sagarnikam123/winterof22 \
--path "argocd/nginxdemo" --dest-server https://kubernetes.default.svc \
--dest-namespace wintertale --insecure --directory-recurse \
--project default --sync-policy none

# verify
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get svc -n wintertale
kubectl --kubeconfig=$HOME/.kube/config.eks.yaml get pods -o wide -n wintertale
################################################################################
