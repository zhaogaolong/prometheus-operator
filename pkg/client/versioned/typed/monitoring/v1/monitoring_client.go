// Copyright 2018 The prometheus-operator Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Code generated by client-gen. DO NOT EDIT.

package v1

import (
	v1 "github.com/coreos/prometheus-operator/pkg/apis/monitoring/v1"
	"github.com/coreos/prometheus-operator/pkg/client/versioned/scheme"
	rest "k8s.io/client-go/rest"
)

type MonitoringV1Interface interface {
	RESTClient() rest.Interface
	AlertmanagersGetter
	BlackboxMonitorsGetter
	PodMonitorsGetter
	PrometheusesGetter
	PrometheusRulesGetter
	ServiceMonitorsGetter
	ThanosRulersGetter
}

// MonitoringV1Client is used to interact with features provided by the monitoring.coreos.com group.
type MonitoringV1Client struct {
	restClient rest.Interface
}

func (c *MonitoringV1Client) Alertmanagers(namespace string) AlertmanagerInterface {
	return newAlertmanagers(c, namespace)
}

func (c *MonitoringV1Client) BlackboxMonitors(namespace string) BlackboxMonitorInterface {
	return newBlackboxMonitors(c, namespace)
}

func (c *MonitoringV1Client) PodMonitors(namespace string) PodMonitorInterface {
	return newPodMonitors(c, namespace)
}

func (c *MonitoringV1Client) Prometheuses(namespace string) PrometheusInterface {
	return newPrometheuses(c, namespace)
}

func (c *MonitoringV1Client) PrometheusRules(namespace string) PrometheusRuleInterface {
	return newPrometheusRules(c, namespace)
}

func (c *MonitoringV1Client) ServiceMonitors(namespace string) ServiceMonitorInterface {
	return newServiceMonitors(c, namespace)
}

func (c *MonitoringV1Client) ThanosRulers(namespace string) ThanosRulerInterface {
	return newThanosRulers(c, namespace)
}

// NewForConfig creates a new MonitoringV1Client for the given config.
func NewForConfig(c *rest.Config) (*MonitoringV1Client, error) {
	config := *c
	if err := setConfigDefaults(&config); err != nil {
		return nil, err
	}
	client, err := rest.RESTClientFor(&config)
	if err != nil {
		return nil, err
	}
	return &MonitoringV1Client{client}, nil
}

// NewForConfigOrDie creates a new MonitoringV1Client for the given config and
// panics if there is an error in the config.
func NewForConfigOrDie(c *rest.Config) *MonitoringV1Client {
	client, err := NewForConfig(c)
	if err != nil {
		panic(err)
	}
	return client
}

// New creates a new MonitoringV1Client for the given RESTClient.
func New(c rest.Interface) *MonitoringV1Client {
	return &MonitoringV1Client{c}
}

func setConfigDefaults(config *rest.Config) error {
	gv := v1.SchemeGroupVersion
	config.GroupVersion = &gv
	config.APIPath = "/apis"
	config.NegotiatedSerializer = scheme.Codecs.WithoutConversion()

	if config.UserAgent == "" {
		config.UserAgent = rest.DefaultKubernetesUserAgent()
	}

	return nil
}

// RESTClient returns a RESTClient that is used to communicate
// with API server by this client implementation.
func (c *MonitoringV1Client) RESTClient() rest.Interface {
	if c == nil {
		return nil
	}
	return c.restClient
}
