.class public Lcom/umeng/commonsdk/stateless/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:J = 0x200000L

.field public static b:J = 0x32000L

.field public static final c:Ljava/lang/String; = "stateless"

.field public static d:[Ljava/lang/String; = null

.field public static final e:Ljava/lang/String; = "https://plbslog.umeng.com"

.field public static final f:Ljava/lang/String; = "http://11.239.113.99"

.field public static final g:Ljava/lang/String; = "https://preplbslog.umeng.com"

.field public static final h:Ljava/lang/String; = "https://plbslog.umeng.com"

.field public static final i:Ljava/lang/String; = "http://11.239.113.99"

.field public static final j:Ljava/lang/String; = "https://preplbslog.umeng.com"

.field public static final k:Ljava/lang/String; = "https://plbslog.umeng.com"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "https://preplbslog.umeng.com"

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
