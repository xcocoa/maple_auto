.class public abstract Lnet/grandcentrix/tray/core/TrayStorage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnet/grandcentrix/tray/core/PreferenceStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/grandcentrix/tray/core/TrayStorage$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/grandcentrix/tray/core/PreferenceStorage<",
        "Lnet/grandcentrix/tray/core/TrayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mModuleName:Ljava/lang/String;

.field private mType:Lnet/grandcentrix/tray/core/TrayStorage$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/grandcentrix/tray/core/TrayStorage;->mModuleName:Ljava/lang/String;

    iput-object p2, p0, Lnet/grandcentrix/tray/core/TrayStorage;->mType:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-void
.end method


# virtual methods
.method public abstract annex(Lnet/grandcentrix/tray/core/TrayStorage;)V
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayStorage;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lnet/grandcentrix/tray/core/TrayStorage$Type;
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayStorage;->mType:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-object v0
.end method

.method public abstract registerOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .param p1    # Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterOnTrayPreferenceChangeListener(Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;)V
    .param p1    # Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
