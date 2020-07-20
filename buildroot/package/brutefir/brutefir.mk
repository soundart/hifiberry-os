################################################################################
#
# brutefir
#
################################################################################

BRUTEFIR_VERSION = fb0fed3a4e008cd1c4d7cad234eb28de2e2bf432
BRUTEFIR_SITE = https://github.com/soundart/brutefir.git
BRUTEFIR_SITE_METHOD = git
BRUTEFIR_DEPENDENCIES =
BRUTEFIR_LICENSE = GPL-2.0
BRUTEFIR_LICENSE_FILES = LICENSE


define BRUTEFIR_INSTALL_EXTRA_FILES
	$(INSTALL) -D -m 0644 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/brutefir/brutefir_mpd_config \
		$(TARGET_DIR)/etc/brutefir_mpd_config
	$(INSTALL) -D -m 0644 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/brutefir/README.brutefir \
		$(TARGET_DIR)/opt/contrib/README.brutefir
endef

BRUTEFIR_POST_INSTALL_TARGET_HOOKS += BRUTEFIR_INSTALL_EXTRA_FILES

$(eval $(cmake-package))
