.class public Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

.field public final synthetic val$listener:Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;

.field public final synthetic val$trayItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;->this$1:Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver;

    iput-object p2, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;->val$listener:Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;

    iput-object p3, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;->val$trayItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;->val$listener:Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/ContentProviderStorage$TrayContentObserver$1;->val$trayItems:Ljava/util/List;

    invoke-interface {v0, v1}, Lnet/grandcentrix/tray/core/OnTrayPreferenceChangeListener;->onTrayPreferenceChanged(Ljava/util/Collection;)V

    return-void
.end method
