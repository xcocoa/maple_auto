.class public final Lcom/anythink/core/common/c/m$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "video_res_cache_info"

.field public static final b:Ljava/lang/String; = "video_url"

.field public static final c:Ljava/lang/String; = "file_path"

.field public static final d:Ljava/lang/String; = "ready_rate"

.field public static final e:Ljava/lang/String; = "download_size"

.field public static final f:Ljava/lang/String; = "total_size"

.field public static final g:Ljava/lang/String; = "update_time"

.field public static final h:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS video_res_cache_info(video_url TEXT, file_path TEXT, ready_rate INTEGER, download_size INTEGER, total_size INTEGER, update_time INTEGER )"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
