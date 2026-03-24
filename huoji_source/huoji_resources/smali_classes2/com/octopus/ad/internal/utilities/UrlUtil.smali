.class public Lcom/octopus/ad/internal/utilities/UrlUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/utilities/UrlUtil$DNSResolver;
    }
.end annotation


# static fields
.field public static CLT_TYPE:Ljava/lang/String; = "__CLT__"

.field public static CLT_TYPE_999:Ljava/lang/String; = "__CLT-999__"

.field public static E_TS_E:Ljava/lang/String; = ".EVENT_TS_END."

.field public static E_TS_S:Ljava/lang/String; = ".EVENT_TS_START."

.field public static LOSS_REASON:Ljava/lang/String; = "${LOSS_REASON}"

.field public static RAW_X_DOWN:Ljava/lang/String; = ".SCRN_CLK_PT_DOWN_X."

.field public static RAW_X_DOWN_DP:Ljava/lang/String; = ".SCRN_CLK_PT_DOWN_X_DP."

.field public static RAW_X_UP:Ljava/lang/String; = ".SCRN_CLK_PT_UP_X."

.field public static RAW_X_UP_DP:Ljava/lang/String; = ".SCRN_CLK_PT_UP_X_DP."

.field public static RAW_Y_DOWN:Ljava/lang/String; = ".SCRN_CLK_PT_DOWN_Y."

.field public static RAW_Y_DOWN_DP:Ljava/lang/String; = ".SCRN_CLK_PT_DOWN_Y_DP."

.field public static RAW_Y_UP:Ljava/lang/String; = ".SCRN_CLK_PT_UP_Y."

.field public static RAW_Y_UP_DP:Ljava/lang/String; = ".SCRN_CLK_PT_UP_Y_DP."

.field public static SECOND_PRICE:Ljava/lang/String; = "${SECOND_PRICE}"

.field public static TS:Ljava/lang/String; = ".UTC_TS."

.field public static V_D:Ljava/lang/String; = ".VIDEO_DURATION."

.field public static WIN_BIDDER:Ljava/lang/String; = "${WIN_BIDDER}"

.field public static WIN_PRICE:Ljava/lang/String; = "${WIN_PRICE}"

.field public static X_DOWN:Ljava/lang/String; = ".AD_CLK_PT_DOWN_X."

.field public static X_DOWN_DP:Ljava/lang/String; = ".AD_CLK_PT_DOWN_X_DP."

.field public static X_UP:Ljava/lang/String; = ".AD_CLK_PT_UP_X."

.field public static X_UP_DP:Ljava/lang/String; = ".AD_CLK_PT_UP_X_DP."

.field public static Y_DOWN:Ljava/lang/String; = ".AD_CLK_PT_DOWN_Y."

.field public static Y_DOWN_DP:Ljava/lang/String; = ".AD_CLK_PT_DOWN_Y_DP."

.field public static Y_UP:Ljava/lang/String; = ".AD_CLK_PT_UP_Y."

.field public static Y_UP_DP:Ljava/lang/String; = ".AD_CLK_PT_UP_Y_DP."


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSendTouchEventUrl(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_UP:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_UP:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_UP:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_UP:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    sget-object v3, Lcom/octopus/ad/internal/utilities/UrlUtil;->TS:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    const/16 p0, 0x9

    if-ne v0, p0, :cond_9

    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method public static px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-999"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    long-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_1
    :goto_0
    return-object p1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method

.method public static replaceLossUrl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->WIN_PRICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->WIN_PRICE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->LOSS_REASON:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->LOSS_REASON:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->WIN_BIDDER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->WIN_BIDDER:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static replaceToTouchEventUrl(Ljava/lang/String;Lcom/octopus/ad/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_DOWN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_DOWN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_UP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_UP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_UP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_UP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_DOWN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_DOWN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_UP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_UP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_UP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_UP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_DOWN_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_DOWN_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_8
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_DOWN_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_DOWN_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_9
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_UP_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_UP_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->e()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_UP_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_UP_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->f()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_DOWN_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_DOWN_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_c
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_DOWN_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_DOWN_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->d()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_d
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_UP_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->g()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_UP_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->g()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_e
    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_UP_DP:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    sget-object p2, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_UP_DP:Ljava/lang/String;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p3

    iget-object p3, p3, Lcom/octopus/ad/internal/m;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/octopus/ad/b/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/octopus/ad/internal/utilities/UrlUtil;->px2dip(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method public static replaceToTouchEventUrl(Ljava/lang/String;Lcom/octopus/ad/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    new-instance p1, Lcom/octopus/ad/b/c;

    invoke-direct {p1}, Lcom/octopus/ad/b/c;-><init>()V

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->CLT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->e(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->g(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->h(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Lcom/octopus/ad/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->CLT_TYPE_999:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-999"

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->d(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->e(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->g(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/b/c;->h(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Lcom/octopus/ad/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->CLT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->CLT_TYPE:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->CLT_TYPE_999:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->CLT_TYPE_999:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->TS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->TS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_S:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_S:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_E:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_E:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->V_D:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->V_D:Ljava/lang/String;

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url must no null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static replaceToTouchEventUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_UP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->X_UP:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_UP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->Y_UP:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_DOWN:Ljava/lang/String;

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_UP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_X_UP:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_UP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->RAW_Y_UP:Ljava/lang/String;

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->TS:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->TS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_8
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_S:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_S:Ljava/lang/String;

    invoke-virtual {p0, p1, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_9
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_E:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->E_TS_E:Ljava/lang/String;

    invoke-virtual {p0, p1, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->V_D:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/octopus/ad/internal/utilities/UrlUtil;->V_D:Ljava/lang/String;

    invoke-virtual {p0, p1, p7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "url must no null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static replaceWinUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->SECOND_PRICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/octopus/ad/internal/utilities/UrlUtil;->SECOND_PRICE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static sendClickInfoToServerWithReplace(Lcom/octopus/ad/b/b$j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/octopus/ad/internal/h;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static sendOnCompletionInfoToServer(Lcom/octopus/ad/b/b$j;)V
    .locals 8

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$j;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v0 .. v7}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/octopus/ad/internal/h;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static sendOnPauseInfoToServer(Lcom/octopus/ad/b/b$j;)V
    .locals 8

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v0 .. v7}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/octopus/ad/internal/h;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static sendOnStartInfoToServer(Lcom/octopus/ad/b/b$j;)V
    .locals 8

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v0 .. v7}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/octopus/ad/internal/h;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static sendViewShowInfoToServer(Lcom/octopus/ad/b/b$j;)V
    .locals 8

    invoke-virtual {p0}, Lcom/octopus/ad/b/b$j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v0 .. v7}, Lcom/octopus/ad/internal/utilities/UrlUtil;->replaceToTouchEventUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/octopus/ad/internal/h;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/h;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/octopus/ad/utils/b/h;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static testDNS(Ljava/lang/String;)Z
    .locals 4

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Lcom/octopus/ad/internal/utilities/UrlUtil$DNSResolver;

    const-string v1, "sv.adintl.cn"

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/utilities/UrlUtil$DNSResolver;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v0}, Lcom/octopus/ad/internal/utilities/UrlUtil$DNSResolver;->get()Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method
