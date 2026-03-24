.class public Lnet/grandcentrix/tray/TrayPreferences;
.super Lnet/grandcentrix/tray/core/AbstractTrayPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/grandcentrix/tray/core/AbstractTrayPreference<",
        "Lnet/grandcentrix/tray/provider/ContentProviderStorage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;->USER:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/grandcentrix/tray/TrayPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;ILnet/grandcentrix/tray/core/TrayStorage$Type;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILnet/grandcentrix/tray/core/TrayStorage$Type;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-direct {v0, p1, p2, p4}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V

    invoke-direct {p0, v0, p3}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;-><init>(Lnet/grandcentrix/tray/core/TrayStorage;I)V

    return-void
.end method


# virtual methods
.method public annexModule(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-virtual {p0, p1, v0}, Lnet/grandcentrix/tray/TrayPreferences;->annexModule(Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V

    return-void
.end method

.method public annexModule(Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V
    .locals 2

    new-instance v0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-virtual {p0}, Lnet/grandcentrix/tray/TrayPreferences;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/grandcentrix/tray/core/TrayStorage$Type;)V

    invoke-super {p0, v0}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->annex(Lnet/grandcentrix/tray/core/TrayStorage;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lnet/grandcentrix/tray/core/Preferences;->getStorage()Lnet/grandcentrix/tray/core/PreferenceStorage;

    move-result-object v0

    check-cast v0, Lnet/grandcentrix/tray/provider/ContentProviderStorage;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/ContentProviderStorage;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
