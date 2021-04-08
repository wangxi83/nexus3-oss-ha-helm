{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "nexus.name" -}}
{{- default .Values.nexus.podNameOverride "nexus" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "nexus.fullname" -}}
{{- include "nexus.name" . -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "nexus.chart" -}}
{{- include "nexus.name" . -}}
{{- end -}}

{{/*
The name of the nexus headless service.
*/}}
{{- define "nexus.headless" -}}
{{- printf "%s-headless" (include "nexus.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
The name of the nexus chroots job.
*/}}
{{- define "nexus.chroots" -}}
{{- printf "%s-chroots" (include "nexus.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
