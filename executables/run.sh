#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../configuration/const.sh"

docker run \
  --cpus="1" \
  --memory="256m" \
  --user 2020:2020 \
  --rm \
  --name "${IMAGE}" \
  --hostname "${IMAGE}" \
  -v "${DB_HOST_CONN_DIR}":""${DB_CNTR_CONN_DIR}"/" \
  -d -p ${HOST_PORT}:${CNTR_PORT} \
   "${IMAGE_TAG}" "${CNTR_MICROSERVICE_CONF_DIR}" "${SPRING_PROFILE}" "${CONFIG_TEMPLATE_DIR}" "${DB_CNTR_CONN_DIR}" "${HOST}" "${CNTR_PORT}" "${VERSION}" "${FATJAR}" "${JAVA_IO_DIR}"

