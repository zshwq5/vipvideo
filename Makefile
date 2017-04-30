#
# Copyright (C) 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=vipvideo
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_LICENSE:=MIT

PKG_SOURCE_URL:=https://localhost/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/vipvideo
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Freevip
  DEPENDS:=
  TITLE:=Vipvideo is a web frontend site which runs on a router
  URL:=https://www.dy360.biz/
  PKGARCH:=all
endef

define Package/vipvideo/description
	Vipvideo is written in html5 & css.
endef

define Build/Compile
endef

define Package/vipvideo/install
	$(INSTALL_DIR) $(1)/www/vipvideo
	$(CP) $(PKG_BUILD_DIR)/css $(1)/www/vipvideo
	$(CP) $(PKG_BUILD_DIR)/1.png $(1)/www/vipvideo
	$(CP) $(PKG_BUILD_DIR)/Explain.html $(1)/www/vipvideo
	$(CP) $(PKG_BUILD_DIR)/index.html $(1)/www/vipvideo
endef

$(eval $(call BuildPackage,vipvideo))
