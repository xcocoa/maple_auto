.class public final Lcom/anythink/core/common/c/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "dsp_offer_show_record"

.field public static final b:Ljava/lang/String; = "dsp_id"

.field public static final c:Ljava/lang/String; = "dsp_offer_id"

.field public static final d:Ljava/lang/String; = "show_limit"

.field public static final e:Ljava/lang/String; = "show_count"

.field public static final f:Ljava/lang/String; = "create_time"

.field public static final g:Ljava/lang/String; = "last_update_time"

.field public static final h:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS dsp_offer_show_record(dsp_id TEXT ,dsp_offer_id TEXT ,show_limit INTEGER ,show_count INTEGER ,create_time INTEGER ,last_update_time INTEGER)"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
