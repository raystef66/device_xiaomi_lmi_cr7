# Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.fod.modified.dc_status=false \
    sys.displayfeature.hbm.enable=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.cpurend.vsync=false

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q855-16947-1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.iwlan=1 \
    persist.data.iwlan.ipsec.ap=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.sys.cust.lte_config=true \
    persist.radio.VT_ENABLE=1 \
    persist.radio.volte.dan_support=true

# RCS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rcs.supported=1

