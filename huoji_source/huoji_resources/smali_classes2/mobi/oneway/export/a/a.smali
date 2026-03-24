.class public Lmobi/oneway/export/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "/v4/sdkConfig"

.field public static final b:Ljava/lang/String; = "/diagnosis"

.field public static final c:Ljava/lang/String; = "/crash/report"

.field public static final d:Ljava/lang/String; = "/sdkEvent"

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:Ljava/lang/String; = "plugin"

.field public static final h:Ljava/lang/String; = "opt"

.field public static final i:Ljava/lang/String; = "owc"

.field public static final j:Ljava/lang/String; = "OnewaySdk2.4.7.jar"

.field public static final k:Ljava/lang/String; = "mobi.oneway.sdk.AdShowActivity"

.field public static final l:Ljava/lang/String; = "mobi.oneway.sdk.OnewayAd"

.field public static final m:Ljava/lang/String; = " is empty"

.field public static final n:Ljava/lang/String; = " request or show count is over limit"


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "https://tl.oneway.mobi"

    const-string v1, "http://track.oway.mobi"

    const-string v2, "http://tl.oway.mobi"

    const-string v3, "http://owtk.audioadx.com"

    const-string v4, "http://118.178.152.152"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/oneway/export/a/a;->e:[Ljava/lang/String;

    const-string v0, "https://ads.oneway.mobi"

    const-string v1, "http://ads.oway.mobi"

    const-string v2, "http://owads.audioadx.com"

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/oneway/export/a/a;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
