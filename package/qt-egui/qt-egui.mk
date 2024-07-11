################################################################################
#
# qt-egui
#
################################################################################

QT_EGUI_SITE = $(TOPDIR)/../qt-egui
QT_EGUI_SITE_METHOD = local

QT_EGUI_DEPENDENCIES = qt5base

define QT_EGUI_CONFIGURE_CMDS
	(cd $(@D); $(QT5_QMAKE))
endef

define QT_EGUI_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define QT_EGUI_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/qt-egui $(TARGET_DIR)/usr/bin/qt-egui
	$(INSTALL) -D -m 0755 $(@D)/wifi_helper $(TARGET_DIR)/usr/bin/wifi_helper

endef

$(eval $(generic-package))
