.class public Lz2/d5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/d5$OooO0O0;
    }
.end annotation


# instance fields
.field public final OooO00o:Lnet/grandcentrix/tray/AppPreferences;

.field public final OooO0O0:Lz2/d5$OooO0O0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/d5$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lz2/d5$OooO0O0;-><init>(Lz2/d5;Lz2/d5$OooO00o;)V

    iput-object v0, p0, Lz2/d5;->OooO0O0:Lz2/d5$OooO0O0;

    new-instance v0, Lnet/grandcentrix/tray/AppPreferences;

    invoke-direct {v0, p1}, Lnet/grandcentrix/tray/AppPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    return-void
.end method


# virtual methods
.method public OooO00o()Lnet/grandcentrix/tray/AppPreferences;
    .locals 1

    iget-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/core/Preferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lz2/d5;->OooO0O0:Lz2/d5$OooO0O0;

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/AbstractTrayPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method
