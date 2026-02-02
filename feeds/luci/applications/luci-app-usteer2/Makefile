include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-usteer2
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_MAINTAINER:=brudalevante

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=Network
  SUBMENU:=Mesh
  TITLE:=LuCI Support for usteer2
  PKGARCH:=all
  DEPENDS:=+jsonfilter +umdns +firewall4 +libnl-tiny
endef

define Package/$(PKG_NAME)/description
LuCI Support for usteer2.
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	# Configuración usteer2
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) $(CURDIR)/root/etc/config/usteer2 $(1)/etc/config/usteer2

	# Script de inicio usteer2
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) $(CURDIR)/root/etc/init.d/usteer2 $(1)/etc/init.d/usteer2

	# Binario usteerd2
	$(INSTALL_DIR) $(1)/sbin
	$(INSTALL_BIN) $(CURDIR)/root/sbin/usteerd2 $(1)/sbin/usteerd2

	# Menú LuCI
	$(INSTALL_DIR) $(1)/usr/share/luci/menu.d
	$(INSTALL_DATA) $(CURDIR)/root/usr/share/luci/menu.d/luci-app-usteer2.json $(1)/usr/share/luci/menu.d/luci-app-usteer2.json

	# Permisos RPCD
	$(INSTALL_DIR) $(1)/usr/share/rpcd/acl.d
	$(INSTALL_DATA) $(CURDIR)/root/usr/share/rpcd/acl.d/luci-app-usteer2.json $(1)/usr/share/rpcd/acl.d/luci-app-usteer2.json

	# Vista JS
	$(INSTALL_DIR) $(1)/www/luci-static/resources/view/usteer2
	$(INSTALL_DATA) $(CURDIR)/root/www/luci-static/resources/view/usteer2/usteer2.js $(1)/www/luci-static/resources/view/usteer2/usteer2.js

	# Archivos de idioma
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/i18n
	$(INSTALL_DATA) $(CURDIR)/root/usr/lib/lua/luci/i18n/usteer2.es.lmo $(1)/usr/lib/lua/luci/i18n/usteer2.es.lmo
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
