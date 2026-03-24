.class public interface abstract Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/GPSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLocationResultListener"
.end annotation


# virtual methods
.method public abstract OnLocationChange(Landroid/location/Location;)V
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLongitude()D
.end method

.method public abstract onLocationResult(Landroid/location/Location;)V
.end method
