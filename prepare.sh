ISTIO_VERSION=0.5.0
BOOKINFO_VERSION=0.2.8

until docker ps ; do echo . && sleep 2; done

docker pull istio/istio-ca:${ISTIO_VERSION}
docker pull istio/grafana:${ISTIO_VERSION}
docker pull istio/pilot:${ISTIO_VERSION}
docker pull istio/proxy_debug:${ISTIO_VERSION}
docker pull istio/proxy_init:${ISTIO_VERSION}
docker pull istio/examples-bookinfo-ratings-v1:${BOOKINFO_VERSION}
docker pull istio/examples-bookinfo-reviews-v2:${BOOKINFO_VERSION}
docker pull istio/examples-bookinfo-reviews-v1:${BOOKINFO_VERSION}
docker pull istio/examples-bookinfo-reviews-v3:${BOOKINFO_VERSION}
docker pull istio/examples-bookinfo-details-v1:${BOOKINFO_VERSION}
docker pull istio/examples-bookinfo-productpage-v1:${BOOKINFO_VERSION}
docker pull istio/mixer:${ISTIO_VERSION}
docker pull istio/servicegraph:${ISTIO_VERSION}
docker pull openzipkin/zipkin:latest
docker pull prom/prometheus:v2.0.0
docker pull prom/statsd-exporter
docker pull alpine
oc adm policy add-cluster-role-to-user cluster-admin admin
