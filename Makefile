CURRENT_DIR = $(shell pwd)
DOCKER_CONTAINER_NAME=jenkins-slave-jnlp
JENKINS_VERSION=1.0.0

buildArgs=
containerName=$(DOCKER_CONTAINER_NAME)
containerPublish=
containerVolumes=
containerImage=$(DOCKER_CONTAINER_NAME):$(JENKINS_VERSION)

$(info ############################################### )
$(info # )
$(info # Environment variables )
$(info # )
$(info ############################################### )
$(info CURRENT_DIR: $(CURRENT_DIR))
$(info DOCKER_CONTAINER_NAME: $(DOCKER_CONTAINER_NAME))
$(info JENKINS_VERSION: $(JENKINS_VERSION))
$(info )
$(info ############################################### )
$(info # )
$(info # Parameters )
$(info # )
$(info ############################################### )
$(info buildArgs: $(buildArgs))
$(info containerName: $(containerName))
$(info containerPublish: $(containerPublish))
$(info containerVolumes: $(containerVolumes))
$(info containerImage: $(containerImage))
$(info )

include $(CURRENT_DIR)/make-commons-docker.mk
