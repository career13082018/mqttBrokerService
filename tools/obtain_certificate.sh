#
# Copyright (c) 2016 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# !/usr/bin/env bash
MQTT_SERVER=mqtt-listener.trusted-krb.gotapaas.eu
MQTT_PORT=33102
CERT_OUTPUT_FILE=mqtt-cert.pem

echo | openssl s_client -connect ${MQTT_SERVER}:${MQTT_PORT} -showcerts 2>&1 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ${CERT_OUTPUT_FILE}