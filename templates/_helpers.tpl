{{/*
Chart / app name (short).
*/}}
{{- define "cdb.name" -}}
{{- default .Chart.Name .Values.name | trunc 30 | trimSuffix "-" -}}
{{- end -}}

{{/*
API resource name
*/}}
{{- define "cdb.apiName" -}}
{{- printf "%s-api" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Front resource name
*/}}
{{- define "cdb.frontName" -}}
{{- printf "%s-front" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Postgres resource name
*/}}
{{- define "cdb.pgName" -}}
{{- printf "%s-pg" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Postgres credentials secret name
*/}}
{{- define "cdb.pgCredentialsName" -}}
{{- printf "%s-pg-credentials" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Postgres configmap name
*/}}
{{- define "cdb.pgConfigName" -}}
{{- printf "%s-pg-config" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Postgres PVC name
*/}}
{{- define "cdb.pgPvcName" -}}
{{- printf "%s-pg-db" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
API configmap name
*/}}
{{- define "cdb.apiConfigName" -}}
{{- printf "%s-api-config" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Front configmap name
*/}}
{{- define "cdb.frontConfigName" -}}
{{- printf "%s-front" (include "cdb.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
