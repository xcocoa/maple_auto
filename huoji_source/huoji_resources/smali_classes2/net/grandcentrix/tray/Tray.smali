.class public Lnet/grandcentrix/tray/Tray;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/grandcentrix/tray/Tray;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    return-void
.end method

.method public static varargs clear([Lnet/grandcentrix/tray/TrayPreferences;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lnet/grandcentrix/tray/core/Preferences;->clear()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/Tray;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->clear()Z

    move-result v0

    return v0
.end method

.method public varargs clearBut([Lnet/grandcentrix/tray/core/AbstractTrayPreference;)Z
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/Tray;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->clearBut([Lnet/grandcentrix/tray/core/AbstractTrayPreference;)Z

    move-result p1

    return p1
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/grandcentrix/tray/core/TrayItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/grandcentrix/tray/Tray;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public wipe()Z
    .locals 1

    iget-object v0, p0, Lnet/grandcentrix/tray/Tray;->mProviderHelper:Lnet/grandcentrix/tray/provider/TrayProviderHelper;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/provider/TrayProviderHelper;->wipe()Z

    move-result v0

    return v0
.end method
