{"apiVersion":"apiextensions.k8s.io/v1beta1","kind":"CustomResourceDefinition","metadata":{"annotations":{"controller-gen.kubebuilder.io/version":"v0.2.4"},"creationTimestamp":null,"name":"blackboxmonitors.monitoring.coreos.com"},"spec":{"group":"monitoring.coreos.com","names":{"kind":"BlackboxMonitor","listKind":"BlackboxMonitorList","plural":"blackboxmonitors","singular":"blackboxmonitor"},"preserveUnknownFields":false,"scope":"Namespaced","validation":{"openAPIV3Schema":{"description":"BlackboxMonitor defines monitoring for a set of static targets or ingresses.","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds","type":"string"},"metadata":{"description":"Standard object’s metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/api-conventions.md#metadata","type":"object"},"spec":{"description":"Specification of desired Ingress selection for target discovery by Prometheus.","properties":{"blackboxExporter":{"description":"Specification for the blackbox exporter to use for probing targets. The blackboxExporter.URL parameter is required. Targets cannot be probed if left empty.","properties":{"path":{"description":"Path to collect metrics from. Defaults to `/probe`.","type":"string"},"scheme":{"description":"HTTP scheme to use for scraping. Defaults to `http`.","type":"string"},"url":{"description":"Mandatory URL of the blackbox exporter.","type":"string"}},"required":["url"],"type":"object"},"interval":{"description":"Interval at which targets are probed using the configured blackbox exporter. If not specified Prometheus' global scrape interval is used.","type":"string"},"jobName":{"description":"The job name assigned to scraped metrics by default.","type":"string"},"module":{"description":"The module to use for probing specifying how to probe the target. Example module configuring in the blackbox exporter: https://github.com/prometheus/blackbox_exporter/blob/master/example.yml","type":"string"},"scrapeTimeout":{"description":"Timeout for scraping metrics from the Prometheus exporter.","type":"string"},"targets":{"description":"Targets defines a set of static and/or dynamically discovered targets to be probed using the Prometheus blackbox exporter.","properties":{"ingress":{"description":"Ingress defines the set of dynamically discovered ingress objects which hosts are considered for probing.","properties":{"namespaceSelector":{"description":"Select Ingress objects by namespace.","properties":{"any":{"description":"Boolean describing whether all namespaces are selected in contrast to a list restricting them.","type":"boolean"},"matchNames":{"description":"List of namespace names.","items":{"type":"string"},"type":"array"}},"type":"object"},"relabelingConfigs":{"description":"RelabelConfigs to apply to samples before ingestion. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#relabel_config","items":{"description":"RelabelConfig allows dynamic rewriting of the label set, being applied to samples before ingestion. It defines `\u003cmetric_relabel_configs\u003e`-section of Prometheus configuration. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#metric_relabel_configs","properties":{"action":{"description":"Action to perform based on regex matching. Default is 'replace'","type":"string"},"modulus":{"description":"Modulus to take of the hash of the source label values.","format":"int64","type":"integer"},"regex":{"description":"Regular expression against which the extracted value is matched. Default is '(.*)'","type":"string"},"replacement":{"description":"Replacement value against which a regex replace is performed if the regular expression matches. Regex capture groups are available. Default is '$1'","type":"string"},"separator":{"description":"Separator placed between concatenated source label values. default is ';'.","type":"string"},"sourceLabels":{"description":"The source labels select values from existing labels. Their content is concatenated using the configured separator and matched against the configured regular expression for the replace, keep, and drop actions.","items":{"type":"string"},"type":"array"},"targetLabel":{"description":"Label to which the resulting value is written in a replace action. It is mandatory for replace actions. Regex capture groups are available.","type":"string"}},"type":"object"},"type":"array"},"selector":{"description":"Select Ingress objects by labels.","properties":{"matchExpressions":{"description":"matchExpressions is a list of label selector requirements. The requirements are ANDed.","items":{"description":"A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.","properties":{"key":{"description":"key is the label key that the selector applies to.","type":"string"},"operator":{"description":"operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.","type":"string"},"values":{"description":"values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.","items":{"type":"string"},"type":"array"}},"required":["key","operator"],"type":"object"},"type":"array"},"matchLabels":{"additionalProperties":{"type":"string"},"description":"matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.","type":"object"}},"type":"object"}},"type":"object"},"staticConfig":{"description":"StaticConfig defines static targets which are considers for probing. More info: https://prometheus.io/docs/prometheus/latest/configuration/configuration/#static_config.","properties":{"labels":{"additionalProperties":{"type":"string"},"description":"Labels assigned to all metrics scraped from the targets.","type":"object"},"static":{"description":"Targets is a list of URLs to probe using the configured blackbox exporter.","items":{"type":"string"},"type":"array"}},"type":"object"}},"type":"object"}},"type":"object"}},"required":["spec"],"type":"object"}},"version":"v1","versions":[{"name":"v1","served":true,"storage":true}]},"status":{"acceptedNames":{"kind":"","plural":""},"conditions":[],"storedVersions":[]}}