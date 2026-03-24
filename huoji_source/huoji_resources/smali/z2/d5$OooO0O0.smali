.class public Lz2/d5$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/d5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/d5;


# direct methods
.method private constructor <init>(Lz2/d5;)V
    .locals 0

    iput-object p1, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/d5;Lz2/d5$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/d5$OooO0O0;-><init>(Lz2/d5;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    iget-object v0, v0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0}, Lnet/grandcentrix/tray/core/Preferences;->clear()Z

    return-object p0
.end method

.method public commit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    iget-object v0, v0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/Preferences;->put(Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    iget-object v0, v0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/Preferences;->put(Ljava/lang/String;F)Z

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    iget-object v0, v0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/Preferences;->put(Ljava/lang/String;I)Z

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    iget-object v0, v0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lnet/grandcentrix/tray/core/Preferences;->put(Ljava/lang/String;J)Z

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    iget-object v0, v0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1, p2}, Lnet/grandcentrix/tray/core/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lz2/d5$OooO0O0;->OooO00o:Lz2/d5;

    iget-object v0, v0, Lz2/d5;->OooO00o:Lnet/grandcentrix/tray/AppPreferences;

    invoke-virtual {v0, p1}, Lnet/grandcentrix/tray/core/Preferences;->remove(Ljava/lang/String;)Z

    return-object p0
.end method
