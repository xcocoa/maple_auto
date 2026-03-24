.class public final Lnet/grandcentrix/tray/provider/TrayUri$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/grandcentrix/tray/provider/TrayUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private mInternal:Z

.field private mKey:Ljava/lang/String;

.field private mModule:Ljava/lang/String;

.field private mType:Lnet/grandcentrix/tray/core/TrayStorage$Type;

.field public final synthetic this$0:Lnet/grandcentrix/tray/provider/TrayUri;


# direct methods
.method public constructor <init>(Lnet/grandcentrix/tray/provider/TrayUri;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->this$0:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    iput-object v0, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mType:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/grandcentrix/tray/provider/TrayUri;->access$002(Lnet/grandcentrix/tray/provider/TrayUri;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/Uri;
    .locals 3

    iget-boolean v0, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mInternal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->this$0:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-static {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->access$100(Lnet/grandcentrix/tray/provider/TrayUri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->this$0:Lnet/grandcentrix/tray/provider/TrayUri;

    invoke-static {v0}, Lnet/grandcentrix/tray/provider/TrayUri;->access$200(Lnet/grandcentrix/tray/provider/TrayUri;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mModule:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object v1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mType:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    sget-object v2, Lnet/grandcentrix/tray/core/TrayStorage$Type;->UNDEFINED:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    if-eq v1, v2, :cond_4

    sget-object v2, Lnet/grandcentrix/tray/core/TrayStorage$Type;->USER:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "true"

    goto :goto_1

    :cond_3
    const-string v1, "false"

    :goto_1
    const-string v2, "backup"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setInternal(Z)Lnet/grandcentrix/tray/provider/TrayUri$Builder;
    .locals 0

    iput-boolean p1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mInternal:Z

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mModule:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lnet/grandcentrix/tray/core/TrayStorage$Type;)Lnet/grandcentrix/tray/provider/TrayUri$Builder;
    .locals 0

    iput-object p1, p0, Lnet/grandcentrix/tray/provider/TrayUri$Builder;->mType:Lnet/grandcentrix/tray/core/TrayStorage$Type;

    return-object p0
.end method
