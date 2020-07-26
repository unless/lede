
include $(TOPDIR)/rules.mk

PKG_NAME:=webdav
PKG_VERSION:=1.5
PKG_RELEASE:=20181024

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=webdav server
	DEPENDS:=

endef

define Package/$(PKG_NAME)/description
webdav
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/webdav/install
	$(INSTALL_DIR) $(1)/usr/bin
	#$(INSTALL_BIN) ./files/webdav $(1)/usr/bin/webdav
	#$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/vlmcs $(1)/usr/bin/vlmcs
	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_BIN) ./files/webdav.yml $(1)/etc/webdav.yml
	#$(INSTALL_DIR) $(1)/etc/init.d
	#$(INSTALL_BIN) ./files/webdav.init $(1)/etc/init.d/webdav

ifeq ($(ARCH),arm)
	$(INSTALL_BIN) ./files/arm/webdav $(1)/usr/bin/webdav
endif
ifeq ($(ARCH),aarch64)
	$(INSTALL_BIN) ./files/armv7/webdav $(1)/usr/bin/webdav
endif
endef

$(eval $(call BuildPackage,webdav))
