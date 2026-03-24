.class public final Lcom/anythink/core/common/c/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "notice_url_fail_info"

.field public static final b:Ljava/lang/String; = "id"

.field public static final c:Ljava/lang/String; = "req_type"

.field public static final d:Ljava/lang/String; = "req_url"

.field public static final e:Ljava/lang/String; = "req_head"

.field public static final f:Ljava/lang/String; = "first_fail_time"

.field public static final g:Ljava/lang/String; = "offer_out_date_time"

.field public static final h:Ljava/lang/String; = "retry_count"

.field public static final i:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS notice_url_fail_info(id TEXT, req_type INTEGER, req_url TEXT, req_head TEXT, first_fail_time INTEGER, offer_out_date_time INTEGER, retry_count INTEGER )"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
